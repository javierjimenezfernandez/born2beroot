# born2beroot
born2beroot project made for 42 school Madrid

I use [gemartin99's Born2beroot Tutorial](https://github.com/gemartin99/Born2beroot-Tutorial) as a base for my tutorial with some additions of my own. When there is no change I directly follow gemartin99's original tutorial.

## 1. Prepare your workspace
Usually space is very limited in 42 computers so there is a folder available for students in a local server in which to install your virtual machine. In my case this folder is called ```sgoinfre``` and there are some rulles to use it, please make sure you follow the rules of your folder. 

In my case there is a subfolder called students ```/sgoinfre/students``` and inside we can create a folder with out username and store up to 15GB inside, for example ```/sgoinfre/students/javjimen```. It is very important that if we want the folder to remain that we change our personal folder permissions with ```chmod 700 folder_name```. If we don't do that, others could access to it and then it will be deleted by the administrators.

Once we have done this we can continue normally with the tutorial.

## 2. Download Debian ISO image
In a console, display the processor architecture of your Mac:

```uname -p```

Go to Debian official site and select ```Download an installation image```

Choose the one corresponding with your Mac architecture from the list of ```Small CDs or USB sticks```. The file name should look like this:

```debian-<VER>-<ARCH>-netinst.iso```

## 3. Installation of the machine with VirtualBox

It is mandatory to use VirtualBox. 42 computers already have VirtualBox installed. 

3.1. Open VirtualBox. Then click on ```New```.

<img width="1046" alt="2 1  Open VirtualBox" src="https://github.com/javierjimenezfernandez/born2beroot/assets/120647408/5ae19404-f804-444e-81bc-0ce9af958a38">

3.2. Choose a name for the machine and the folder in which you want to located it. It is important to choose the goinfre folder of your 42 computer because if not you will run out of memoory and installation will fail.

<img width="684" alt="3 2  Chooose a name" src="https://github.com/javierjimenezfernandez/born2beroot/assets/120647408/8ce9d965-0f4d-4576-af1b-0f7a43e580b2">

3.3. Select the RAM that will be reserved for the machine. The recommended is 1024MB.

<img width="683" alt="2 3  Select RAM" src="https://github.com/javierjimenezfernandez/born2beroot/assets/120647408/4b4dd15c-d739-419e-b909-e583ee3a0276">

3.4. Select the option ```Create a virtual hard disk now```.

<img width="683" alt="2 4  Create virtual hard disk now" src="https://github.com/javierjimenezfernandez/born2beroot/assets/120647408/efcd0559-b867-4d69-b266-086610221b0d">

3.5. Choose ```VDI (VirtualBox Disk Image)```.

<img width="703" alt="2 5  Choose VDI" src="https://github.com/javierjimenezfernandez/born2beroot/assets/120647408/92d865c7-fdf1-4b4f-9dc2-13d8b3e70b83">

3.6. Select ```Dynamically allocated``` so the memory will be reserved when needed up to max virtual machine max that will be define in next step.

<img width="703" alt="2 6  Select Dynamically allocated" src="https://github.com/javierjimenezfernandez/born2beroot/assets/120647408/04a2a70d-0670-44c1-818c-70740e0a1a35">

3.7. Choose a recommended virtual hard disk size of ```12GB``` if you are going to do only mandatory part or ```30GB``` if you are going to do the bonus part. Then click on ```Create```.

<img width="703" alt="3 7  Choose virtual memory size" src="https://github.com/javierjimenezfernandez/born2beroot/assets/120647408/6f58a512-52cb-44ea-9da2-9a727714325a">

3.8. Now the machine appears on the VirtualBox Manager window. But we need to configure it, click on ```Settings```.

<img width="931" alt="2 8  Configure the machine" src="https://github.com/javierjimenezfernandez/born2beroot/assets/120647408/7fb47b11-b8d0-41b7-8ab7-d222801bb9f6">

3.9. In the window that opens move to ```Storage``` tab, then click on the ```Empty``` disc. In ```Attributes``` click on the disc icon. Inside the menu that unfolds click on ```Choose a disk file...```.

<img width="930" alt="2 9  Choose a disk file" src="https://github.com/javierjimenezfernandez/born2beroot/assets/120647408/8acafd60-e167-4804-8571-ab30b1a2641b">

3.10. Select the ISO downloaded on step [1. Download Debian ISO image](#1-download-debian-iso-image), click on ```Open```.

<img width="809" alt="2 10  Choose the file" src="https://github.com/javierjimenezfernandez/born2beroot/assets/120647408/aad69b70-3292-42c6-90c4-a888292f2883">

3.11. Click ```OK```.

<img width="647" alt="2 11  Click OK" src="https://github.com/javierjimenezfernandez/born2beroot/assets/120647408/5cb3ff90-3a61-4991-9353-4cca62c2eb69">

3.12. Now the virtual machine is ready to ```Start```.

<img width="931" alt="2 12  Ready to Start" src="https://github.com/javierjimenezfernandez/born2beroot/assets/120647408/c547c956-3beb-4928-936f-5b360dfddf4c">

## 4. Debian installation

Now follow the original tutorial step ```3- Installing Debian``` : [Spanish version](https://github.com/gemartin99/Born2beroot-Tutorial?tab=readme-ov-file#3--instalaci%C3%B3n-debian-) or [English version](https://github.com/gemartin99/Born2beroot-Tutorial/blob/main/README_EN.md#3--installing-debian-)








