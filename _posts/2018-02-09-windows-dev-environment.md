---
title: "2018 - The Year of the Modern Windows Development Environment"
date: 2018-02-09 00:26:28 -0400
tags: dev windows
---
It's 2018 and Microsoft has made strides in creating a more friendly environment for devs in general within Windows 10.
I just fully migrated over to this environment after using MacOS and Linux the past couple of years in my personal
setup.

WSL has been a godsend and it feels like a first class citizen (finally) in this OS now that it has gotten rid of most
of the pressing bugs with latest Creator's Update. Now you can have all the things you've been accustomed to coming from
Linux and MacOS like a real package manager and a usuable bash shell. I just want to highlight a few of the things that
have made me more at home.

#### 1. [Ubuntu on Windows](https://www.microsoft.com/store/productId/9NBLGGH4MSV6)
The link above directly leads to the Windows Store install. Before you can install and use the Ubuntu shell you'll have
to enable the Windows Subsystem for Linux. To do that, open PowerShell as an Admin and execute the following command
below and reboot your system {% highlight PowerShell %} Enable-WindowsOptionalFeature -Online -FeatureName
Microsoft-Windows-Subsystem-Linux {% endhighlight %}

#### 2. [Cmder](http://cmder.net)
Cmder is a terminal emulator that Microsoft should've shipped with Windows. It's pleasant to look at and offers a good
amount of customizability. Here, I've set up `bash` as my default terminal whenever I load up Cmder.

![Cmder Setup](/assets/posts/2018-02-09-cmder.jpg "Cmder Setup")

Once you've got cmder setup and bash running, you can proceed to configure Ubuntu as you like. 

#### 3. [Microsoft Visual Studio Code](https://code.visualstudio.com/)
For those that aren't VIM enthusiasts and still like SublimeText, use VS code instead. Trust me. It's a great editor,
has a large assortment of extensions, and best of all, you can sync your setup to your account with settings, plugins,
and all.


