# Name		    : Informatie ophalen
# Script URI	:
# Description	: Laat systeem informatie zien
# Version	    : 0.0.1
# Author	    : Koen Blok
# Author URI	:
$date = get-date
$disk = Get-Disk -Number 1 
cls # clear screen
write-host "--------------------------------- PC INFO ---------------------------------"
Write-host "Datum en tijd         : $date"
write-host "Computername          : $env:COMPUTERNAME"
write-host "Username              : $env:USERNAME"
write-host "OS                    : $env:os"
write-host "--------------------------------- DISK INFO --------------------------------"
write-host "Disk type             : " $disk.friendlyname
write-host "Disk size in bytes    : " $disk.AllocatedSize
write-host "---------------------------------- WiFi ------------------------------------"
$wifi = Get-NetAdapter | Where-Object {$_.name -eq "Wi-Fi"}
write-host "Interface description : " $wifi.InterfaceDescription
write-host "Interface Link-Speed  : " $wifi.LinkSpeed
write-host "Interface Status      : " $wifi.Status
write-host "---------------------------------- GPU ------------------------------------"
$gpu = get-wmiobject win32_VideoController | Select-Object -First 1
write-host "Naam                  : " $gpu.Description
write-host "Geheugen in bytes     : " $gpu.AdapterRAM
write-host "---------------------------------- CPU ------------------------------------"
$cpu = Get-WmiObject win32_Processor
write-host "Naam                  :" $cpu.Name
write-host "Maximum Kloksnelheid  : " $cpu.MaxClockSpeed
write-host "Aantal cores          : " $cpu.NumberOfCores
#write-host "---------------------------------- RAM ------------------------------------"
#$ram = Get-WmiObject win32_physicalmemory
#write-host
write-host "---------------------------------- Bios ------------------------------------"
$bios = Get-WmiObject win32_Bios
write-host "Bios naam             : " $bios.name
write-host "Bios versie           : " $bios.SMBIOSBIOSVersion
write-host "Bios manufacturer     : " $bios.Manufacturer
