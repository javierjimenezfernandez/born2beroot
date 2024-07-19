# born2beroot
born2beroot project made for 42 school Madrid

***I am doing born2beroot project with the Bonus part in February 2024. Subject version is 3.1***

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

In step ```3.15``` you are going to be redirected to ```8.1 - Manual Partitioning``` for the bonus part. When you finish with ```8.1``` don't forget to return to ```4 - Virtual Machine configuration``` before going to ```8.2 - WordPress and services configuration```.

***ATTENTION:*** in gemartin99's Born2beroot Tutorial he adds ```lcredit=-1``` (at least 1 lowercase) condition for the password policy that is not specified in the subject.

I also liked to use [rphlr's tutorial](https://github.com/rphlr/42-born2beroot) as a reference.

## 5. Extra service

I didn't like the extra service chosen by gemartin99. For me it made no sense to create another server when one of the mandatory services of the bonus part is creating a WordPress site in a Lighttpd server. 

So I tried vsFTPd from rphlr's tutorial [Installation and configuration of FTP](https://github.com/rphlr/42-born2beroot?tab=readme-ov-file#2-file-transfer-protocol-ftp) to trasfer files to the virtual machine to customize the WordPress site... ***but it didn't work for me***. I was unable to configure it properly: I experimented problems when trying to install WorsPress applications in the WordPress admin page (WordPress was unable to find wp-content directory despite it was there and I set the permissions) so I couldn't properly demonstrate the service. 

So finally I tried the other extra service rphlr installs: [Fail2ban](https://github.com/rphlr/42-born2beroot?tab=readme-ov-file#3-fail2ban-just-because-i-would-like-to-implement-it-as-an-additional-security-measure-in-addition-to-ftp)

***Unfortunatelly the configuration in that tutorial didn't work for me***, so I used this tutorial for Debian 12: [Fail2Ban Setup on Debian](https://zacks.eu/fail2ban-setup-on-debian-enhance-your-system-security/).

I followed the following steps: ```Prerequisites```, ```Fail2Ban Setup``` and ```Fail2Ban Configuration```. Inside ```Fail2Ban Configuration```I just followed the first two steps: ```Main Configuration Files``` and ```SSH Configuration```. In ```Main Configuration Files``` I didn't configurate ```allowipv6 = no``` nor the Actions when the IP is banned, just the ban. 

### 5.1 Here are the steps to configure Fail2Ban:

```
apt install iptables
apt install python3-systemd
apt install fail2ban
```
> I didn't install ```iptables-persistent``` because it causes a conflict with ufw and when one is installed the other needs to be uninstalled and viceversa. Good news are that for this project it is not necessary for iptables to be persistent

Copy the default file into a new local one, that is the file I modified:
```
sudo cp /etc/fail2ban/fail2ban.conf /etc/fail2ban/fail2ban.local
```

This is my configuration in jail.local file, search for the lines in MISCELLANEOUS OPTIONS chapter to modify them:
```
## MISCELLANEOUS OPTIONS
bantime = 300
findtime = 3600
maxretry = 3
backend = systemd
```

> "Let's observe those options. In the example above, if the violating host (IP) is discovered three times (maxretry) in one hour (findtime = 3600), it will be banned from accessing the server during the next 5 minutes (bantime = 300)."

I configured just 5 minutes because this is just an exercise for academical purposes.

Also in jail.local, inside JAILS in SSH servers:
```
## JAILS
# SSH servers
[sshd]
port = 4242
logpath = /var/log/fail2ban.log
```
> The file ```/var/log/fail2ban.log``` has to be created manualy.

SSHd jail is enabled by default in Fail2Ban Debian installation. Please check ```/etc/fail2ban/jail.d/defaults-debian.conf```. In this file I added the following line for extra security:

```mode = agressive```

To apply all changes I made:
```
systemctl restart fail2ban.service
systemctl restart fail2ban
```

To check that everything is OK:
```
sudo systemctl status fail2ban
```
> press ```q``` to quit

If sshd Jail is active it will appear in the Jail list:
```
sudo fail2ban-client status
```

Status info about sshd Jail:
```
sudo fail2ban-client status sshd
```

> If there is a banned IP, for example, during the evaluation when you try to demonstrate the service and try to connect to the virtual machine using an incorrect password 3 times, the command above will show your blocked IP.

To unban an IP manually:
```
sudo fail2ban-client set sshd unbanip [IP_to_unban]
```


## 6. My super tip for the evaluation (Please do it before setting the project as finished in the 42 intra!)

Install the manual on your machine, so that every time during your evaluation you forget how to use a command or the evaluator asks you something you are not prepared for, you can look it up and solve it just like in the exams. You will demonstrate exactly what this project is for, not to memorise everything, but to develop the ability to build your own virtual machine and to look up the information you need in the virtual machine itself.
```
sudo apt-get install man-db
```

## 7. Theory
Here I leave the theoretical concepts that I thought I had learned correctly for the evaluation, but my 42 peers showed that I learned them wrong. I hope you find it helpful because I had a hard time finding precise and more understandable definitions of the concepts asked in this project.

I am not an expert in system administration so if you find any mistakes please let me know.
Thank you.

### 7.1. VM (Virtual Machine)
The Virtual Machine is a computer simulated inside another computer. The emulator (in this project VirtualBox) simulates the HW of the computer of your choice and runs the OS on that simulated HW. The physical computer is called host and the simulated one is the virtual machine.

### 7.2. Use of VMs
One of the main uses of VMs is to provide a safe and separated execution environment for your applications. It aims to provide replicable conditions whatever your platform is, but the reality is that performance and physical resources of the host’s HW limit that supposed universal replicability.

### 7.3. Why Debian? Rocky vs. Debian
Theoretically Rocky is not more complex than Debian or vice versa. The main reason to choose one or the other is because Rocky was developed by a company and is an OS focused on production for companies while Debian is an open source OS developed by an independent community and focused on stability, so each version remains longer. Rocky was released in 2021 (although it is based on RHEL's CentOS, which is older) and Debian in 1993. That is the reason why it is easier to find Debian documentation adapted to all levels of expertise, so that is why it is more common to choose Debian for this project.

All the other typical reasons are also valid, such as Debian's larger community, more packages available and support for a wider range of architectures.

### 7.4. Difference between apt and aptitude
Both are package managers for linux. Apt is lower level than aptitude, we can say aptitude is smarter. When you install a package using apt it can recognize whether there are dependencies or if there are unused packages after the installation, but if there is some conflict during the installation of the package or the dependencies it will not provide a way to solve it. It will be the user responsibility to manage it. On the other hand, aptitude will propose you safe ways to solve that conflict.

### 7.5. What is APPArmor?
Is a linux kernel security module that allows the system admin to restrict the actions that processes can make. While write already avoids the modification of memory regions where the user is not allowed APPArmor allows the admin to configure profiles of an application to determine what files and permissions the application requires to be executed, so it can be encapsulated and don’t act where it is not supposed.

It comes by default with Debian.

### 7.6. What is LVM?
Logical Volume Manager is a logic layer between the file system and the partitions of the data storage. The difference between primary and logical partitions is that primary partitions in a physical disc are written on it in a way that every time a disc is connected every partition is identified and differentiated from the others. Primary partitions have a maximum of 4. On the other hand, logical partitions are written inside a primary partition and allow the user to organize the content in different partitions which are no “visible” until the content of the disc is read. Logical partitions allow the user to extend, reduce, remove or add new partitions at any moment without formatting the disc. On the other hand, the modification of primary partitions require disc formatting which forces the user to do a security copy of the data in order to not losing it.

You can find a nice explanation about file system, partitions and mounting points for linux in [DELL official support page](https://www.dell.com/support/kbdoc/es-es/000131456/the-types-and-definitions-of-ubuntu-linux-partitions-and-directories-explained?lang=en)

### 7.7. What is UFW?
The firewall is a security system responsible for granting or denying access between networks by configuring which ports to open or close.

Uncomplicated Firewall is an interface to modify the firewall configuration without compromising security. If UFW is enabled you can grant access through specific ports, which is a requirement for this project, and it is very useful to use it in combination with SSH. UFW can also allow or deny specific IPs and application profiles.

### 7.8. What is SSH?
Secure Shell is a network protocol that serves as an authentication mechanism in the communication between a client and a host. It allows access, for example, to our virtual machine (client) from our real machine (host) via command line.

Communication is established in an encrypted manner and the default communication port is 22. That is why in this project we are asked to change it, to increase security.

### 7.9. sudo and su
The root user is the user who has administrative access to the system. For security reasons, normal users do not have access to the system.

Su stands for switch user or substitute user. It is an application that allows a user to execute commands under a different account, for example the root user or another privileged account. The application will prompt you for the username and password of the user you wish to switch to. However, sudo does have some advantage over su.

Sudo stands for su do. It is an application that temporarily grants the ability to execute some commands with root privileges to certain users or groups of users. The access and privileges of users or user groups can be configured. It will also keep a log file of the commands and their arguments. Sudo will remember the password for a default time of 5 minutes.

#### 7.9.1. what is requiretty?
TTY stands for teletypewriter, but is popularly known as the terminal. It allows you to interact with the system by passing your commands and viewing the output produced by the system.

The subject specifies that for security reasons TTY mode shall be enabled. This is done specifying requiretty in the sudo_config file as you should know. Requiretty forces sudo to make sure that you are logged into a TTY session. This protects the system from cron, apache and other automated scripts. However, the constraints posed by requiretty are sometimes easy to bypass, because it only works with sudo.

#### 7.9.2. what is secure_path?
PATH is a system environment variable where it will look for specific program commands that you can run via the command line, such as “cd”, “ls”, “sudo”, etc...

The secure_path for sudo stores the path you know where those programs are stored, so when a command is called using sudo, sudo will look for it in that path. It may be the case that a user creates his own “cd” and stores it in a different path, which can be added to the PATH variable. The point is that whenever you need superuser permissions to perform an action you will have to call the sudo command and it will look for the command called with sudo only in the secure_path provided in the sudo rules configuration file. This way you make sure that only real and safe commands are used in the restricted areas instead of some malware introduced by the user.
