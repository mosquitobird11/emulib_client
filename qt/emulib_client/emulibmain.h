#ifndef EMULIBMAIN_H
#define EMULIBMAIN_H

#include <QMainWindow>

namespace Ui {
class EmulibMain;
}

class EmulibMain : public QMainWindow
{
    Q_OBJECT

public:
    explicit EmulibMain(QWidget *parent = 0);
    ~EmulibMain();

private:
    Ui::EmulibMain *ui;
};

#endif // EMULIBMAIN_H
