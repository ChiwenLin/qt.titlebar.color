#include <QApplication>
#include <QWidget>
#include <QLabel>
#import <AppKit/AppKit.h>

int main(int argc, char **argv)
{
    QApplication app(argc, argv);
    QWidget w;
    w.resize(240, 126);
    
    QLabel lbl(&w);
    lbl.setText("我是櫻木花道");
    lbl.resize(w.size());
    w.show();

    // !!!: Voodoo code conversion
    NSView* view = (__bridge NSView *)reinterpret_cast<void*>(w.effectiveWinId());
    NSWindow* window = [view window];
    window.titlebarAppearsTransparent = YES;
    window.backgroundColor = [NSColor colorWithRed:66./255. green:66./255. blue:66./255. alpha:1.];

    return app.exec();
}
