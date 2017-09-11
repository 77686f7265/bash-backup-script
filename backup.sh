#!/bin/bash
printf "Welcome to backup tool.\nA tool to backup your file for GNU/Linux systems."
printf "This tool is confirmed to work on Linux, and macOS"
printf "Are you ready?(Y/N)"
read answer
if [ $answer == "Y" ]; then
  echo "Let's get started"
  cd Desktop
echo -ne '#>            (10%)\r'
mkdir File-Backup
echo -ne '#>            (20%)\r'
cd ..
echo -ne '#>            (40%)\r'
cp -r Pictures ~/Desktop/File-Backup
echo -ne '#>            (50%)\r'
cp -r Documents ~/Desktop/File-Backup
echo -ne '#>            (55%)\r'
cp -r Videos ~/Desktop/File-Backup
echo -ne '#>            (80%)\r'	
cp -r Downloads ~/Desktop/File-Backup
echo -ne '#>            (90%)\r'
cd Desktop
sleep 1
printf "Finalizing"
sleep 1
printf "Creating zip...."
zip -r File-Backup{.zip,}
sleep 1

printf "\nAll done"
printf " \n A zip file has been created in /Desktop/Backup/ now you just have to copy that file to your usb/hdd \n"
else
  echo "Exiting...."
  sleep 1
fi
