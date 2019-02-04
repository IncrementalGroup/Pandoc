<<<<<<< HEAD
Write-Verbose "Extracting Build Agent"
Add-Type -AssemblyName System.IO.Compression.FileSystem;
=======
Write-Verbose "Extracting Build Agent"
Add-Type -AssemblyName System.IO.Compression.FileSystem;
>>>>>>> 9e08e52d3405cdc42366d7b0b2439e622d8ed395
[System.IO.Compression.ZipFile]::ExtractToDirectory("vsts-agent-win-x64-2.144.0.zip", "$PWD")