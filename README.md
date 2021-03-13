# DDPFF
-------------

Accompanying code for the paper **Plane Segmentation Using Depth-Dependent Flood Fill** by Arindam Roychoudhury, Marcell Missura and Maren Bennewitz submitted to IROS, 2021.


## Build and execution intructions


1. Create a build folder (in source or out of source). Here we assume we create a build folder within the source directory:
    `$mkdir build`
2. Navigate to the build folder:
    `$cd build`
3. Execute cmake:
    `$cmake ..`
4. Execute the application:
    `$./app/App`


## Application usage guide


A window appears when the application is executed. 

| Function | Navigation | Shortcut |
--- | --- | ---
Load point cloud frames | File &rarr; Load state | Ctrl+L
Navigate between frames | `\|<`, `<`, `>`, `>\|` buttons| Right and left arrow keys
Configuration |  View &rarr; Config | C
Toggle point cloud | View &rarr; Point Cloud | P
Activate DDPFF algorithm | View &rarr; Depth dependent planar segments | Ctrl+D
Activate algorithm |  View &rarr; Show Visualization | V
Activate merged planar segments | View &rarr; Show merged segments | Shift +U
Activate unmerged planar segments | View &rarr; Show unmerged segments | U
Activate camera view | View &rarr; Camera view | G
Activate ground truth planes | View &rarr; Show ground truth planes | Ctrl+G
Load Artificial Scenes | File &rarr; Load Scene | Ctrl+Shift+L
Choose scene | Scenes &rarr; Choose one of 6 scenes | 


## Software requirements


1. C++ 17
2. Cmake 3.8 or greater
3. Qt 5.15
4. Eigen 3.3
5. OpenGL
6. QGLViewer
7. OpenCV 4
8. PCL 1.10


## Using Docker

It is easiest to set up the development environment using docker. An image with the complete list of required software is available at [dockerhub](https://hub.docker.com/repository/docker/arindamrc/ddpffenv-integrated). 

First, update the location of the source directory in the file `docker/args.sh`. Change the variable `SOURCELOC` to point to the source local directory of the repository. 

Now, to create the development environment simply navigate to the directory "docker" and execute `$./init_qtcreator_integrated.sh`. This sets up a container with all the requisite softwares as well as launches the qtcreator IDE. This container shares the source directory and the `data` directory with the host system. Import the project into the IDE, build and execute it. To launch qtcreator subsequently use `./start_qtcreator_integrated`.
