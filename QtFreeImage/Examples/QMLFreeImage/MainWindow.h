#pragma once

#include <QImage>
#include <QQuickItem>
#include <QtCore/QObject>
#include <QtCore/qglobal.h>

class MainWindow : public QObject
{
	Q_OBJECT
public:
	explicit MainWindow(QQuickItem *rootItem, QObject *parent = nullptr);

	QByteArray load(QString filename);

public slots:
	void onLoadImage(QString filename);

signals:

private:
	QQuickItem *m_rootItem;
};

