
## Start of configuration 

This repository will be used as a template for external research partner modules. 

Follow the following steps in order to configure your repository. (Alternative: you can git pull the repository and manually remove the .git file)

- Download this current repository (zip) and extract it
- Move the file the your preferred location. This will be your future location of the GIT repository

Rename the folders

- Rename the unzip folder with relevant name (e.g. frogs_module_gripper)
- Navigate inside catkin_ws/src, rename the 'module_robot_arm' folder to match your module.
- Navigate inside catkin_ws/src/new_name/src and rename the folder and the python file inside it.
- Rename robot_module_msgs folder to match your module name + _msgs (e.g. gripper_module_msgs)

At this stage, the module is ready to be linked to your preferred versioning platform. In this example, I will use Github.

 Open a terminal and navigate inside your main folder location.
 Start a git repository 

```
git init
```

In order to avoid committing built packages (e.g. build, devel, ...), a .gitignore file is already available
You can see the content with the following line (you can replace vim with cat or gedit if you don't have it installed)

```
vim .gitignore
```

You can add more lines to not include commit of hidden folder

Add all the files from this folder for pushing to your git repository

```
git add -A
``` 

Commit your files and give a commit comment

```
git commit -m "Initial commit"
``` 

Go to Github/Gitlab and log in to your account. Click the new repository button in the top-right. Don't add the option to include a README.md file as the template module already contain one.
Click the “Create repository” button. Now, follow the second set of instructions, “Push an existing repository…”

In my case, I need to introduce the following lines. DON'T COPY THOSE! Instead follow what your git is telling you.

```
git remote add origin git@github.com:jeanhoyos/frogs_gripper_module.git
git branch -M main
git push -u origin main
```

You need to have a ssh key configured on your computer and link it to your Github account.

Check if you have a key on your computer.
```
 ls ~/.ssh/
```

If so, then copy the content of the key with the .pub extension.  If you don't have vim replace with gedit

```
vim ~/.ssh/***.pub       (replace *** with your file name)
```

In Github, navigate to your setting and go the ssh page. From there, click "New SSH key" and paste the content of the ***.pub file.
Save it and it should now be properly configured. In order to configure your module as a submodule of the main repository, there will be a need to add an additional SSH key to your selected repository in order to be able to pull the latest changes. You can still control the access right for this (e.g. you can select only read access such that no push will be done on your repository) 

If you have properly configured the repository, you should have received the following line after the git push command.
```
Branch main set up to track remote branch main from origin.
```
And you can see the folder content on the Github repository after refreshing the page.


## Start to use the module

As explained, this module will run in a docker container. This will prevent compatibility issue and ensure a better modularity and reusability.
In order to use docker, you first need to install it.

```
sudo apt install docker
```

The next step is to build an Docker image that will be used at runtime. Such an image is the result of the build of a Dockerfile.
Such file will give a proper definition of your running environment (installed packages, libraries, ROS version, ...) 
If not the case, navigate to the location of the Dockerfile and build it with the following command. Change the --tag name to something module-specific 

```
docker build --tag=*** .         (replace *** with relevent name. e.g. frogs_robot_arm)
```

If it is the first time you build this file, it will be a long process. The next time you build it we be significantly faster. A tip is to remember that it is best to add line at the end as any unchanged line won't be recompiled.

Now you can run a container with the following line. First change the *, **, *** with the following:
- *: give a name for your container (e.g. gripper_module)
- **: this is the path of the local folder. Replace with the result of 'pwd'
- ***: replace with the tag name you have selected during the docker build command
 

```
docker run -it -v **:/home/ros --env="DISPLAY" --env="QT_X11_NO_MITSHM=1" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" *** bash
```

You should now be inside a container where ROS kinetic is configured. If you have properly configured the ** path, you should see the folder of your local repository (type 'ls' to check). 

Additionally you can add a --name tag in order to give a name to your container. You can stop and start an container using the --name you have selected



## Modify the template to match your need

After having changed the module names and file name you need to update the CMakeLists.txt as well as the package.xml 
Navigate inside your renamed module folder and open the CMakeLists.txt

In the CMakeLists.txt file:
 
 - Change project(module_robot_arm) to your own project name
 - Change the following line
 
 ```
catkin_install_python(PROGRAMS
  src/module_robot_arm/robot_arm_action_server
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
```

to 

 ```
catkin_install_python(PROGRAMS
  src/module_**new_module_name**/**new_file_name**
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
```

In addition you need to change the 'frogs_msgs' statement to the one you selected for your _msgs folder

In the package.xml:
- Change the following line to match your module name 
```
<name>module_robot_arm</name> 
```

In addition you also need to change the 'frogs_msgs' statement.

Next you need to change the setup.py to update the module name

The next step is to adapt the launch file. Go in the launch folder and open the launch file.

- Change the following line

```
  <node pkg="module_robot_arm" type="robot_arm_action_server" name="as"/>
```

by replacing pkg with your module name and type with your file name. In addition, replace the name to be more specific for your module

- Change the name of the launch file to match your module functionality 


Navigate to the message folder (e.g. robot_module_msgs) and adapt the CMakeLists.txt and package.xml to match your new folder name (project). In addition, you can change the name of the ROS action template which is located in the action folder. If you do this change then adapt the CMakelists to match you new name.


It is time to compile the ROS catkin folder. For this, navigate inside the catkin workspace (INSIDE YOUR CONTAINER)

```
cd catkin_ws
```

and build the ROS project using the catkin_make command

```
catkin_make 
```

 
 ## Run the module

In order to run your module, source the setup.bash file

```
source devel/setup.bash
```

You should now see two new folders that are the result of the compilation: build, devel
You have already added those two folder to the .gitignore file. 

Finally you can run your new module with the following command

```
roslaunch new_module_name new_launch_file_new.launch
```
 
You should see the ROS1 node being launched correctly. As the docker run command you used to launch the container contain a -v tag you can change the code from a IDE running on your computer. In addition you can directly change the folder name from the Files.


Once your node is launched you can interact with your container using the following command. 

```
docker exec -it *** bash
```
*** is the name of your running container (this is your name tag if you used it)

You should be inside your container. Source ROS and your built package if needed

```
source /opt/ros/kinetic/setup.bash
source devel/setup.bash
```

You can now run rostopic list command to see if everything is running as expected.


## Interact with this module

The running module is a server that will wait for ROS action goal in order to execute its application. The client will be SKIROS if the complete architecture.
However, you might want to test triggering a ROS action goal on your own computer. 

The following link is a tutorial for writing a ROS action request from a client node. You can create a second folder to simulate the ProductionS framework.
You need to adapt the code in order to match the code of the server node. 

http://wiki.ros.org/actionlib_tutorials/Tutorials/Writing%20a%20Simple%20Action%20Client%20%28Python%29

Once you have built your new ROS package. Run the server node in a first terminal then in a second terminal, run the client that will be responsible for sending the ROS action goal.

## How to hide the source code (if needed)

You can avoid pushing your source folder in Github/Gitlab using an additional build that will generate the install folder that can be imported.

- Adapt your .gitignore file in order to not push src/ in order to hide the source code

The .gitignore file ensures that files not tracked by Git remain untracked.

Just adding folders/files to a .gitignore file will not untrack them -- they will remain tracked by Git.

To untrack files, it is necessary to remove from the repository the tracked files listed in .gitignore file. Then re-add them and commit your changes.

The easiest, most thorough way to do this is to remove and cache all files in the repository, then add them all back. All folders/files listed in .gitignore file will not be tracked. From the top folder in the repository run the following commands:

```
git rm -r --cached .
git add .
```

Now your git status should not be affected by the files mentioned in the .gitignore

- Build your package. The second line will create an additional folder that can be push on git.
```
catkin_make
catkin_make install
```

Now you can push your changes. After a git status you should see that only the /install folder can be commit.


