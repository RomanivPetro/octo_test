$roundhouse_exe_path = ".\bin\Debug\rh.exe"
$scripts_dir = ".\DatabaseMigration"
$roundhouse_output_dir = ".\output"

if ($OctopusParameters) {
   $env = $OctopusParameters["RoundhousE.ENV"]
   $db_server = $OctopusParameters["DBServer"]
   $db_name = $OctopusParameters["DBName"]
} else {   
   $db_server = "localhost"
   $db_name = "TestRoundHouseDb"
}

if(!$env) {
    #Defaults environment to local
    $env= "LOCAL"
}
Write-Host "RoundhousE is going to run on server: "$db_server

Write-Host "RoundhousE is going to run on database: "$db_name

Write-Host "Executing RoundhousE for environment:" $env

&$roundhouse_exe_path -s $db_server -d $db_name  --commandtimeout=300 -f $scripts_dir --env $env --silent -o $roundhouse_output_dir --transaction