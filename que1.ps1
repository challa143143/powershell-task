write-host ("DINESH NAIDU") -ForegroundColor yellow 
 #importing active Directory module  
 Import-Module ActiveDirectory  
 #giving name to a user  
 $AccountName=read-host("enter the user name") 
 # adding user  
 New-ADUser $AccountName  
 #displaying users  
 write-host("displaying all the created/exixting user")  
 Get-ADUser -Filter * -Properties samAccountName | select samAccountName 
 write-host("user added successfully") 