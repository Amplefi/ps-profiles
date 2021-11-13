$ip = "192.168.0.31"
$comp = "Kali"

    do {$pingtest = Test-Connection -ComputerName $ip -Quiet -Count 1 -ErrorAction SilentlyContinue 
        if(!$pingtest){
            Write-Host ($comp + " is offline")
        }
    } while (!$pingtest)
    
    if($pingtest){
        Write-Host($comp + " is online")
    }