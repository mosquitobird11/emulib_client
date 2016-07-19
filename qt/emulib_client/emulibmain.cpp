#include "emulibmain.h"
#include "ui_emulibmain.h"

EmulibMain::EmulibMain(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::EmulibMain)
{
    ui->setupUi(this);
    ui->gamesTable->setRowCount(1);

    ui->gamesTable->setEditTriggers(QAbstractItemView::NoEditTriggers);

    ui->gamesTable->setItem(0,0,new QTableWidgetItem(QString("Super Mario Bros. 3")));
    ui->gamesTable->setItem(0,1,new QTableWidgetItem(QString::number(1988)));
}

EmulibMain::~EmulibMain()
{
    delete ui;
}

void EmulibMain::on_gamesTable_doubleClicked(const QModelIndex &index)
{
    QProcess process;
    QString fceux = "C:/wamp64/www/emulib_client/fceux/fceux.exe";
    QStringList args;
    args += "-lua";
    args += "c:/wamp64/www/emulib_client/lua/smb3test.lua";
    args += "c:/wamp64/www/emulib_client/roms/smb3.nes";
    process.execute(fceux,args);
}
