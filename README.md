# frogs_robot_arm


```
docker build --tag=frogs_robot_arm .
```

```
docker run --name="robot_arm" -it -v /home/jean/Documents/FROGS_ICON/frogs_robot_arm:/home/ros --env="DISPLAY" --env="QT_X11_NO_MITSHM=1" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" frogs_robot_arm bash
```

cd catkin_ws

catkin_make 



in Frogs main repo 


But need access right


ssh-keygen -t ed25519 -C "your_email@example

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_ed25519

vim ~/.ssh/id_ed25519.pub

copy paste content in your repository

need to add submodule:
git submodule add git@github.com:jeanhoyos/frogs_robot_module.git src/frogs_robot_module










