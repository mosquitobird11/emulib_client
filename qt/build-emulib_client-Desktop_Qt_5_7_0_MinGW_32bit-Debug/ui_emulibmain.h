/********************************************************************************
** Form generated from reading UI file 'emulibmain.ui'
**
** Created by: Qt User Interface Compiler version 5.7.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_EMULIBMAIN_H
#define UI_EMULIBMAIN_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QTableWidget>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_EmulibMain
{
public:
    QWidget *centralWidget;
    QVBoxLayout *verticalLayout;
    QTableWidget *gamesTable;
    QMenuBar *menuBar;

    void setupUi(QMainWindow *EmulibMain)
    {
        if (EmulibMain->objectName().isEmpty())
            EmulibMain->setObjectName(QStringLiteral("EmulibMain"));
        EmulibMain->resize(600, 400);
        EmulibMain->setMinimumSize(QSize(600, 400));
        centralWidget = new QWidget(EmulibMain);
        centralWidget->setObjectName(QStringLiteral("centralWidget"));
        centralWidget->setLayoutDirection(Qt::LeftToRight);
        verticalLayout = new QVBoxLayout(centralWidget);
        verticalLayout->setSpacing(6);
        verticalLayout->setContentsMargins(11, 11, 11, 11);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        gamesTable = new QTableWidget(centralWidget);
        if (gamesTable->columnCount() < 2)
            gamesTable->setColumnCount(2);
        QTableWidgetItem *__qtablewidgetitem = new QTableWidgetItem();
        gamesTable->setHorizontalHeaderItem(0, __qtablewidgetitem);
        QTableWidgetItem *__qtablewidgetitem1 = new QTableWidgetItem();
        gamesTable->setHorizontalHeaderItem(1, __qtablewidgetitem1);
        gamesTable->setObjectName(QStringLiteral("gamesTable"));

        verticalLayout->addWidget(gamesTable);

        EmulibMain->setCentralWidget(centralWidget);
        menuBar = new QMenuBar(EmulibMain);
        menuBar->setObjectName(QStringLiteral("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 600, 21));
        EmulibMain->setMenuBar(menuBar);

        retranslateUi(EmulibMain);

        QMetaObject::connectSlotsByName(EmulibMain);
    } // setupUi

    void retranslateUi(QMainWindow *EmulibMain)
    {
        EmulibMain->setWindowTitle(QApplication::translate("EmulibMain", "Emulib: Welcome!", 0));
        QTableWidgetItem *___qtablewidgetitem = gamesTable->horizontalHeaderItem(0);
        ___qtablewidgetitem->setText(QApplication::translate("EmulibMain", "Game", 0));
        QTableWidgetItem *___qtablewidgetitem1 = gamesTable->horizontalHeaderItem(1);
        ___qtablewidgetitem1->setText(QApplication::translate("EmulibMain", "Year", 0));
    } // retranslateUi

};

namespace Ui {
    class EmulibMain: public Ui_EmulibMain {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_EMULIBMAIN_H
