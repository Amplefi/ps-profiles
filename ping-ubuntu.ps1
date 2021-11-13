$ip = "192.168.0.2"
$comp = "Ubuntu"

    do {$pingtest = Test-Connection -ComputerName $ip -Quiet -Count 1 -ErrorAction SilentlyContinue 
        if(!$pingtest){
            Write-Host ($comp + " is offline")
        }
    } while (!$pingtest)
    
    if($pingtest){
        Write-Host($comp + " is online")
    }