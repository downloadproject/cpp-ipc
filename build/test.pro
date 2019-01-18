TEMPLATE = app

QT += core testlib
QT -= gui

CONFIG += console
CONFIG += c++14 c++1z
CONFIG -= app_bundle

DESTDIR = ../output

!msvc:QMAKE_CXXFLAGS += -Wno-attributes -Wno-missing-field-initializers -Wno-unused-variable -Wno-unused-function

INCLUDEPATH += \
    ../test \
    ../test/capo \
    ../include \
    ../src

HEADERS += \
    ../test/test.h

SOURCES += \
    ../test/main.cpp \
    ../test/test_shm.cpp \
    ../test/test_circ.cpp \
    ../test/test_ipc.cpp \
    ../test/test_mem.cpp

LIBS += \
    -L$${DESTDIR} -lipc
