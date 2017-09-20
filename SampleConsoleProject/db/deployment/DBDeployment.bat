@echo off

SET DIR=%~d0%~p0%

SET database.name="TestRoundHouseDb"
SET sql.files.directory="%DIR%..\db"
SET server.database="(local)"
SET repository.path="https://github.com/chucknorris/roundhouse.git"
SET version.file="_BuildInfo.xml"
SET version.xpath="//buildInfo/version"
SET environment="LOCAL"

"%DIR%console\rh.exe" /d=%database.name% /f=%sql.files.directory% /s=%server.database% /vf=%version.file% /vx=%version.xpath% /r=%repository.path% /env=%environment% /simple

pause