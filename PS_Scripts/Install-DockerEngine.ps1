
If (!((Get-Service Docker -ErrorAction SilentlyContinue).Status -eq "running")) {
    Write-Output "Installing Docker engine"
    
    Install-Module -Name DockerMsftProvider -Repository PSGallery -Force -Verbose
    
    Install-Package Docker -ProviderName DockerMsftProvider -Force -verbose
    
    Write-Verbose "Restarting machine" -Verbose
    
    Restart-Computer -Force
    }
    else {Write-Output "Docker engine installed " -Verbose}
    