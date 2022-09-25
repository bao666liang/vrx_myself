#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/wanbaoliang/wamv_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/wanbaoliang/wamv_ws/install/lib/python3/dist-packages:/home/wanbaoliang/wamv_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/wanbaoliang/wamv_ws/build" \
    "/usr/bin/python3" \
    "/home/wanbaoliang/wamv_ws/src/vrx/vrx_gazebo/setup.py" \
     \
    build --build-base "/home/wanbaoliang/wamv_ws/build/vrx/vrx_gazebo" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/wanbaoliang/wamv_ws/install" --install-scripts="/home/wanbaoliang/wamv_ws/install/bin"
