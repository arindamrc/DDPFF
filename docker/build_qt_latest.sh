xhost +
docker run -it \
	--name qt_install \
	--privileged \
	--net=host \
    -u root:root \
    -e DISPLAY=unix$DISPLAY \
    -e LANG=C.UTF-8 \
    -e LC_ALL=C.UTF-8 \
	-e QT_X11_NO_MITSHM=1 \
	--device=/dev/dri:/dev/dri \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    qt:base \
    /bin/bash


docker commit qt_install qt:latest

docker rm qt_install
