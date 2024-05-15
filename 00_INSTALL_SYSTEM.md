# Installing Debian Linux in Virtualbox

So, we start the project. Even if we have not encountered containerization before, and born2beRoot seemed like a nightmare to us, we should not be upset, since this guy will guide us through all stages of the project, starting with the basics of containerization with simple examples and ending with the bonus part. In general, we should be in a fighting mood, like this guy:

![system installation](media/stickers/justdoit.png)

All we need is straight hands, a school poppy, or any personal computer with installed software from VirtualBox. Go.
## Step 1. Download

Go to [official website](https://www.debian.org/ "download debian") and download the web installer

![download debian linux](media/install_debian/install_step_0.png)

## Step 2. Launch

### 2.1 Creating a virtual machine

We create a virtual machine. Let’s name our project something (I just called it Debian) and set the correct system configuration. If the project is being done on a school Mac, its folder should be placed in goinfre:

![virtualbox setup](media/install_debian/install_step_1.jpeg)

### 2.2 Resource Allocation

RAM for the project can be allocated from 512 MB if the PC has 4-8 GB to 4096 MB if the PC has 16 or higher. It makes no sense to allocate more than 4 GB of memory for this project.

![virtualbox setup](media/install_debian/install_step_2.jpeg)

Select the format VDI or VHD:

![virtualbox setup](media/install_debian/install_step_3.png)

Select a dynamic format and allocate 8 gigabytes for the disk

![virtualbox setup](media/install_debian/install_step_4.png)

Also, do not forget to set a convenient screen resolution (scaling factor) if you are working on a Mac.

On mac 200% or 300% is usually ok:

![scaling factor](media/install_debian/install_step_5.png)

### 2.3 CPU resource allocation

You can also add more cores to the system. Adding more than four is redundant:

![CPU](media/install_debian/install_step_6.png)

## Step 3. Installation

### 3.1 Start installation

After all the settings, we launch our project. At startup we are greeted with an installation menu. I choose a regular installer, but if you wish, you can use a graphic one, it’s a matter of taste.

![installation](media/install_debian/install_step_7.png)

### 3.2 Selecting language and location

We can choose American English (other languages ​​are simply not needed on the project), and specify Russia as the location:

![language and location](media/install_debian/install_step_8.png)

![language and location](media/install_debian/install_step_9.png)

![language and location](media/install_debian/install_step_10.png)

![language and location](media/install_debian/install_step_11.png)

And we leave English as the base locale:

![language and location](media/install_debian/install_step_12.png)

![language and location](media/install_debian/install_step_13.png)

### 3.3 Setting up host and users

Next, the system will prompt you to select a host name. You can call the host inception, but I left the default name ```debian```:

![hostname](media/install_debian/install_step_14.png)

We skip the domain name, leaving the line empty.

The system will prompt us to set the superuser name (root). I assign a simple password to root - the number ```2```.

Next, we will be asked to name the regular user. I enter my nickname in the intro:

![username](media/install_debian/install_step_15.png)

I accept the same name as the account name and enter a simple password - one

### 3.4 Setting time zones

Select your time zone.

![timezone](media/install_debian/install_step_16.png)

### 3.5 Disk partitioning

Next, the markup program will launch. We don't have to go into the details of the Linux file system, so we select ```use entire disk``` - use the entire disk.

![disk layout](media/install_debian/install_step_17.png)

We select the only virtual disk available to us:

![disk layout](media/install_debian/install_step_18.png)

We choose to store all files in one section:

![disk layout](media/install_debian/install_step_19.png)

And we give the command to complete the markup and write the changes to disk:

![disk layout](media/install_debian/install_step_20.png)

We confirm the seriousness of our intentions:

![disk layout](media/install_debian/install_step_21.png)

### 3.6 Basic system installation

![system installation](media/install_debian/install_step_22.png)

After marking, the installation of the basic system will begin. Next, I will describe only those steps that are important to us; the remaining steps can be skipped by pressing ```enter```

We simply skip all the extra fluff like an additional CD image, selecting repository mirrors, or polling the popularity of packages.

### 3.6.1 Software selection

We only need an ssh server, so use a space to uncheck everything else. We will later install a lighter openbox as a graphical environment - we will only need it to open our site. We don't need system utilities either.

![system installation](media/install_debian/install_step_23.png)

### 3.6.1 Software selection

In the end, the system will finally tell us that it wants to install the system bootloader on the main partition:

![system installation](media/install_debian/install_step_24.png)

Select a section (we have only one):

![system installation](media/install_debian/install_step_25.png)

And the installation is completed:

![system installation](media/install_debian/install_step_26.png)

We accept the offer to complete the installation:

![system installation](media/install_debian/install_step_27.png)

Thus our system is installed. Let's move on to the next guide and download all the software we need!
