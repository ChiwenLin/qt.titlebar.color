QT += core gui widgets
TARGET = "Titlebar"
TEMPLATE = app

CONFIG += c++14
        
OBJECTIVE_SOURCES += main.mm

CURRENT_QT_VER=5.13.2
QT_FRAMEWORK_PATH = /usr/local/Cellar/qt/$${CURRENT_QT_VER}/Frameworks

QMAKE_OBJECTIVE_CFLAGS += -fobjc-arc

LIBS += \
        -framework AppKit \
        -framework Foundation