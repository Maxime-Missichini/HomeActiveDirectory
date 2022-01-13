# HomeActiveDirectory

Active directory running on a virtual machine ! Inspired by Josh Madakor's video, go check his channel: https://youtu.be/MHsI8hJmggI !

# Table of content

- Purpose
- How to create the lab
- Usage

## Purpose

The purpose of this project is to learn various things about networking, cybersec and other related things.
This project uses:
- NAT
- DHCP
- DNS
- Network Adaptaters
- VirtualBox
- Domain / Active Directory
- Microsoft Server
- Powershell

The idea is to create a PowerShell script capable of creating multiple users automatically. These users will be added to Server's active directory. So we can just run this script on our Server and all users will be created ! Since we did a little bit of networking, client will be able to log on our domain with these credentials and access internet via the Domain Controller !

It's a lot like a school domain where you can log in any computer and access your session.

Please see the diagram to understand the architecture.

## How to create the lab

You'll have to setup a Server 2019 inside a virtual machine along with a Windows 10 machine. You'll have to setup both virtual machines as descripted by the diagram. These steps are not easy to explain so go check on internet and on the diagram.

## Usage

Run the script with PowerShell on your Windows Server machine to create users. You have to customize usersInfos.txt to match your goals.
In real life you shouldn't put these passwords on a plaintext file but since it's just an experiment with fake data, so we can do so.

Go in the correct folder user PowerShell and then type:

> ./script.ps1

That's all ! You'll see all users created, don't forget to refresh AD's list.

## TO-DO

[x] - Create documentation for "How to create the lab" section <br>
[x] - Add the possibility to select a password file (maybe generate some ?) <br>
