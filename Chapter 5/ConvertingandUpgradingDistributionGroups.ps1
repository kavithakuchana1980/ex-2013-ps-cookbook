#example 1:

Get-DistributionGroup -ResultSize Unlimited `
-RecipientTypeDetails MailNonUniversalGroup | 
  Set-Group -Universal

  
#example 2:

Get-DistributionGroup –ResultSize Unlimited | 
  Set-DistributionGroup –ForceUpgrade

  
#example 3:

Get-Group –ResultSize Unlimited `
-RecipientTypeDetails NonUniversalGroup `
–OrganizationalUnit Sales | 
  Where-Object {$_.GroupType -match 'global'} | 
    Set-Group -Universal
