<<<<<<< HEAD
$url = https://incrementalgroup.visualstudio.com
$token = Mfm7c7yd4chctx3u264icdb534dhgryzvsywgb2kvhmdya3oa6fq
$pool = DockerTests
$agentName = "ContainerTest"

Write-Verbose -verbose "Configuring agent $AgentName for pool $pool"

.\config.cmd --unattended `
    --url $url `
    --auth pat `
    --token $token `
    --pool $pool `
    --agent $agentName `
    --acceptteeula `
    --replace `
    --gituseschannel

.\run.cmd
=======
$url = https://incrementalgroup.visualstudio.com/
$token = Mfm7c7yd4chctx3u264icdb534dhgryzvsywgb2kvhmdya3oa6fq
$pool = default
$agentName = "ContainerTest"

Write-Verbose -verbose "Configuring agent $AgentName for pool $pool"

.\config.cmd --unattended `
    --url $url `
    --auth pat `
    --token $token `
    --pool $pool `
    --agent $agentName `
    --acceptteeula `
    --replace `
    --gituseschannel

.\run.cmd
>>>>>>> 9e08e52d3405cdc42366d7b0b2439e622d8ed395
