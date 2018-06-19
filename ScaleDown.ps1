#weekdays scale down

$DayOfWeek = [int] (Get-Date).DayOfWeek

If(($DayOfWeek -ne 0) -and ($DayOfWeek -ne 6)){
    Invoke-WebRequest -Uri 'https://scaleupdwonfuncapp.azurewebsites.net/api/Scaledowontrigger?code=5pbnfj5QIiKs1sazDhVTqooG47fGzvFx1MAEBQwcMdMCPHq0G4LGqw=='

}