#include "MainWindow.h"
#include "FreeImage.h"
#include <QFileInfo>
#include <QStandardPaths>
//#include <QtAndroid>

MainWindow::MainWindow(QQuickItem *rootItem, QObject *parent) : QObject{parent}
{
	m_rootItem = rootItem;
	if (!connect(m_rootItem, SIGNAL(loadImage(QString)), this, SLOT(onLoadImage(QString))))
		qDebug() << "Failed connect to MainWindow signal";
	else
		qDebug() << "MainWindow is connected successfully";
}

QByteArray MainWindow::load(QString filename)
{
	auto newFilePath = filename;
#ifdef Q_OS_ANDROID
	QFile file(filename);
	QFileInfo info(file);
	if (!file.open(QIODevice::ReadOnly))
		return {};

	//	const auto fd = QAndroidJniObject::callStaticMethod<jint>(
	//		"org/qtproject/qt5/android/QtNative",
	//		"openFdForContentUrl",
	//		"(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I",
	//		QtAndroid::androidContext().object(),
	//		QAndroidJniObject::fromString(filename).object(),
	//		QAndroidJniObject::fromString("r").object());

	//	if (fd < 0) {
	//		return {};
	//	}
	auto storePath = QStandardPaths::writableLocation(QStandardPaths::HomeLocation) != ""
						 ? QStandardPaths::writableLocation(QStandardPaths::HomeLocation)
						 : qApp->applicationDirPath();
	newFilePath = storePath + "/" + info.fileName();
	file.copy(newFilePath);
	file.close();
#endif
	// Get image format
	FREE_IMAGE_FORMAT fif = FreeImage_GetFileType(newFilePath.toStdString().c_str(), 0);
	if (fif == FIF_UNKNOWN)
		fif = FreeImage_GetFIFFromFilename(newFilePath.toStdString().c_str());
	if (fif == FIF_UNKNOWN)
		return {};

	// Load image if possible
	FIBITMAP *dib = nullptr;
	if (FreeImage_FIFSupportsReading(fif)) {
		dib = FreeImage_Load(fif, newFilePath.toStdString().c_str());
		if (dib == nullptr)
			return {};
	} else
		return {};

	// Convert to 24bits and save to memory as JPEG
	FIMEMORY *stream = FreeImage_OpenMemory();
	// FreeImage can only save 24-bit highcolor or 8-bit greyscale/palette bitmaps as JPEG
	dib = FreeImage_ConvertTo24Bits(dib);
	FreeImage_SaveToMemory(FIF_JPEG, dib, stream);

	// Free memory
	FreeImage_Unload(dib);

	// Load JPEG data
	BYTE *mem_buffer = nullptr;
	DWORD size_in_bytes = 0;
	FreeImage_AcquireMemory(stream, &mem_buffer, &size_in_bytes);

	// Load raw data into QImage and return
	QByteArray array = QByteArray::fromRawData((char *) mem_buffer, size_in_bytes);
	return array;
}

void MainWindow::onLoadImage(QString filename)
{
	auto byteArray = load(filename);
	QString base64 = QString::fromUtf8(byteArray.toBase64());
	auto imageData = QString("data:image/png;base64,") + base64;
	QMetaObject::invokeMethod(m_rootItem, "setImage", Q_ARG(QVariant, imageData));
	//QImage::fromData(...);
}
