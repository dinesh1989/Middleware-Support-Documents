#weekdays scale up

$DayOfWeek = [int] (Get-Date).DayOfWeek

If(($DayOfWeek -ne 0) -and ($DayOfWeek -ne 6)){
    Invoke-WebRequest -Uri 'https://scaleupdwonfuncapp.azurewebsites.net/api/HttpTriggerPowerShellFunction?code=RhyFkZwUpj27bZAYo0m/biKy/QMnpCnT5d0yhnrHbtbO2wf7xnrheQ=='

}