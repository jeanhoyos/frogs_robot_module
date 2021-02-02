# frogs_robot_arm


```
docker build --tag=frogs_robot_arm .
```

```
docker run --name="robot_arm" -it -v /home/jean/Documents/FROGS_ICON/frogs_robot_arm:/home/ros --env="DISPLAY" --env="QT_X11_NO_MITSHM=1" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" frogs_robot_arm bash
```

cd catkin_ws

catkin_make 
