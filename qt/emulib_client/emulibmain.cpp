#include "emulibmain.h"
#include "ui_emulibmain.h"

EmulibMain::EmulibMain(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::EmulibMain)
{
    ui->setupUi(this);
    ui->gamesTable->setRowCount(1);

    ui->gamesTable->setItem(0,0,new QTableWidgetItem(QString("Super Mario Bros. 3")));
    ui->gamesTable->setItem(0,1,new QTableWidgetItem(QString::number(1988)));
}

EmulibMain::~EmulibMain()
{
    delete ui;
}
