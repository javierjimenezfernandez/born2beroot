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

I didn't like the extra service chosen by gemartin99, for me it made no sense to create another server when one of the mandatory services of the bonus part is creating a WordPress site So I tried vsFTPd from rphlr's tutorial [Installation and configuration of FTP](https://github.com/rphlr/42-born2beroot?tab=readme-ov-file#2-file-transfer-protocol-ftp) to trasfer files to the virtual machine to customize the WordPress site... ***but it didn't work for me***. I was unable to configure it properly: I experimented problems when trying to install WorsPress applications in the WordPress admin page so I couldn't demonstrate teh service. 

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

