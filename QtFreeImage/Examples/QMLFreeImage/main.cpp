#include <MainWindow.h>

#include <QtCore/qglobal.h>
#if QT_VERSION >= 0x050000
#include <QtGui/QGuiApplication>
#include <QtQml/QQmlApplicationEngine>
#else
#endif

#include <QQuickImageProvider>

class Base64ImageProvider : public QQuickImageProvider
{
public:
	Base64ImageProvider()
		: QQuickImageProvider(QQuickImageProvider::Image)
	{
	}

	QImage requestImage(const QString &id, QSize *size, const QSize &requestedSize) override
	{
		QByteArray data = QByteArray::fromBase64(id.toUtf8());
		QImage	   img;
		img.loadFromData(data);
		if (size)
			*size = img.size();
		return img;
	}
};

int main(int argc, char *argv[])
{
	qDebug() << ("start app.");
	if (qEnvironmentVariableIsEmpty("QTGLESSTREAM_DISPLAY")) {
		qputenv("QT_QPA_EGLFS_PHYSICAL_WIDTH", QByteArray("213"));
		qputenv("QT_QPA_EGLFS_PHYSICAL_HEIGHT", QByteArray("120"));

#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
		QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
	}
	QGuiApplication app(argc, argv);
	app.setOrganizationDomain("QFreeImage");
	app.setOrganizationName("QMLFreeImage");

	QQmlApplicationEngine engine;
	// engine.addImageProvider("base64", new Base64ImageProvider());
	const QUrl url(QStringLiteral("qrc:/main.qml"));
	QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
		&app, [url](QObject *obj, const QUrl &objUrl) {
			if (!obj && url == objUrl)
				QCoreApplication::exit(-1);
		}, Qt::QueuedConnection);
	qDebug() << ("start loading qml app.");
	engine.load(url);

	if (engine.rootObjects().size() == 0)
		return -1;
	else
		qDebug() << "App Loaded successfully";

	// QQuickItem *rootItem = (QQuickItem *) engine.rootObjects()[0];

	// MainWindow mainWindow(rootItem);

	return app.exec();
}
