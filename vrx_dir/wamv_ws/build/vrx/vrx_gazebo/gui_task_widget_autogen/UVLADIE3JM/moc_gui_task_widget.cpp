/****************************************************************************
** Meta object code from reading C++ file 'gui_task_widget.hh'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/vrx/vrx_gazebo/src/gui_task_widget.hh"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'gui_task_widget.hh' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_gazebo__GUITaskWidget_t {
    QByteArrayData data[7];
    char stringdata0[79];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_gazebo__GUITaskWidget_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_gazebo__GUITaskWidget_t qt_meta_stringdata_gazebo__GUITaskWidget = {
    {
QT_MOC_LITERAL(0, 0, 21), // "gazebo::GUITaskWidget"
QT_MOC_LITERAL(1, 22, 11), // "SetTaskInfo"
QT_MOC_LITERAL(2, 34, 0), // ""
QT_MOC_LITERAL(3, 35, 7), // "_string"
QT_MOC_LITERAL(4, 43, 16), // "SetWindDirection"
QT_MOC_LITERAL(5, 60, 7), // "_pixmap"
QT_MOC_LITERAL(6, 68, 10) // "SetContact"

    },
    "gazebo::GUITaskWidget\0SetTaskInfo\0\0"
    "_string\0SetWindDirection\0_pixmap\0"
    "SetContact"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_gazebo__GUITaskWidget[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   29,    2, 0x06 /* Public */,
       4,    1,   32,    2, 0x06 /* Public */,
       6,    1,   35,    2, 0x06 /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, QMetaType::QPixmap,    5,
    QMetaType::Void, QMetaType::QPixmap,    5,

       0        // eod
};

void gazebo::GUITaskWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<GUITaskWidget *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->SetTaskInfo((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 1: _t->SetWindDirection((*reinterpret_cast< QPixmap(*)>(_a[1]))); break;
        case 2: _t->SetContact((*reinterpret_cast< QPixmap(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (GUITaskWidget::*)(QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&GUITaskWidget::SetTaskInfo)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (GUITaskWidget::*)(QPixmap );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&GUITaskWidget::SetWindDirection)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (GUITaskWidget::*)(QPixmap );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&GUITaskWidget::SetContact)) {
                *result = 2;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject gazebo::GUITaskWidget::staticMetaObject = { {
    &GUIPlugin::staticMetaObject,
    qt_meta_stringdata_gazebo__GUITaskWidget.data,
    qt_meta_data_gazebo__GUITaskWidget,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *gazebo::GUITaskWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *gazebo::GUITaskWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_gazebo__GUITaskWidget.stringdata0))
        return static_cast<void*>(this);
    return GUIPlugin::qt_metacast(_clname);
}

int gazebo::GUITaskWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = GUIPlugin::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 3;
    }
    return _id;
}

// SIGNAL 0
void gazebo::GUITaskWidget::SetTaskInfo(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void gazebo::GUITaskWidget::SetWindDirection(QPixmap _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void gazebo::GUITaskWidget::SetContact(QPixmap _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
