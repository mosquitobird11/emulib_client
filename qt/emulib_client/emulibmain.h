#ifndef EMULIBMAIN_H
#define EMULIBMAIN_H

#include <QMainWindow>
#include <QTableWidgetItem>
#include <QProcess>

namespace Ui {
class EmulibMain;
}

class EmulibMain : public QMainWindow
{
    Q_OBJECT

public:
    explicit EmulibMain(QWidget *parent = 0);
    ~EmulibMain();

private slots:
    void on_gamesTable_doubleClicked(const QModelIndex &index);

private:
    Ui::EmulibMain *ui;
};

#endif // EMULIBMAIN_H
