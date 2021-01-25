//
// Created by safia on 25-01-21.
//

#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <KXmlGuiWindow>

class KTextEdit;

class MainWindow : public KXmlGuiWindow
{
public:
    explicit MainWindow(QWidget *parent = nullptr);

private:
    KTextEdit *textArea;
};

#endif // MAINWINDOW_H
