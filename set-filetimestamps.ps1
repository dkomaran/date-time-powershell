Function Set-FileTimeStamps

{

 Param (

    [Parameter(mandatory=$true)]

    [string[]]$path,

    [datetime]$date = (Get-Date))

    Get-ChildItem -Path $path -Recurse |

    ForEach-Object {

     $_.CreationTime = $date

     $_.LastAccessTime = $date

     $_.LastWriteTime = $date }

} #end function

Set-FileTimeStamps -path C:\ps -date 7/11/21

#$fileinfo = Get-ChildItem -Path C:\ps\test1.txt
#$dateinfo = (get-date).AddDays(-60)
#$fileinfo.CreationTime = $dateinfo
#$fileinfo.LastAccessTime = $dateinfo
#$fileinfo.LastWriteTime = $dateinfo
