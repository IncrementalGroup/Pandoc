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
