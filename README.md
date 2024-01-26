Download-Count.ps1
==================

Download-Count.ps1 is a PowerShell script that reports how many assets on GitHub's Releases page have been downloaded.

(Download-Count.ps1 は GitHub の Releases ページのファイルがどれだけのダウンロードされたかリポートするスクリプトです)

Install
-------

Download the `Download-Count.ps1` from [the script page](https://github.com/hymkor/Download-Count.ps1/blob/master/Download-Count.ps1) and Copy to the directory listed with your %PATH%.

Case 1: Report about the repository of the current directory
------------------------------------------------------------

It works only the directory that git.exe can

```
C:> cd %USERPROFILE%\src\nyagos
C:> Download-Count.ps1
nyagos-4.4.14_0-linux-amd64.zip 20
nyagos-4.4.14_0-windows-386.zip 1452
nyagos-4.4.14_0-windows-amd64.zip 1821
nyagos-4.4.13_3-linux-amd64.tar.gz 25
nyagos-4.4.13_3-windows-386.zip 1427
 :
```

Case 2: Specify the repository with the parameter
-------------------------------------------------

```
C:> Download-Count.ps1 nyaosorg/nyagos
nyagos-4.4.14_0-linux-amd64.zip 20
nyagos-4.4.14_0-windows-386.zip 1452
nyagos-4.4.14_0-windows-amd64.zip 1821
nyagos-4.4.13_3-linux-amd64.tar.gz 25
nyagos-4.4.13_3-windows-386.zip 1427
nyagos-4.4.13_3-windows-amd64.zip 1884
 :
```
