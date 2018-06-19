#ScaleUp

$tenantId = "a8241368-6d7e-48d1-86e0-04edd15e55b2";

$domain = "jujinethotmail.onmicrosoft.com";

$appId = "a36a19b9-aa0c-4339-a2db-33961542813f";

$resourceGroupName = "DevResourceGroup";

$appServicePlanName = "DevAppServicePlan"

$password = "studyabroad2016"

$targetTier = "Shared"
 

$DayOfWeek = [int] (Get-Date).DayOfWeek

$username = $appId + '@' + $domain;

$pass = ConvertTo-SecureString $password -AsPlainText –Force;

$cred = New-Object -TypeName pscredential –ArgumentList $username, $pass;

 

If(($DayOfWeek -ne 0) -and ($DayOfWeek -ne 6)){

    Login-AzureRmAccount -Credential $cred -ServicePrincipal –TenantId $tenantId;

Set-AzureRmAppServicePlan -ResourceGroupName $resourceGroupName -Name $appServicePlanName -Tier $targetTier;

}