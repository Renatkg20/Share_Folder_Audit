echo Hello World
$filename = '*password*.*' 
# Here we specified the file in oder to find the confidential files 
$Searchingfolder = 'C:\'
#Here choose where files should be searching
Get-ChildItem -Path $Searchingfolder -Filter $filename -Rescure | %{$_.Fullname}

#The process of searching the files 

#=================Version#2======================

$files = Get-ChildItem -Path 'C:\' "*.jpg" -Rescure

foreach ($file in $files) {

       Copy-Item (Get-ChildItem $file -Rescure).Fullname "C:\
}

