:: name of map
set map=kingdom-of-ehb
:: name of map, case-sensitive
set map_cs=Kingdom of Ehb

:: path of Bits dir
set bits=%~dp0.
:: path of DS installation
set ds=%DungeonSiege%
:: path of TankCreator
set tc=%TankCreator%

:: Compile map file
rmdir /S /Q "%tmp%\Bits"
robocopy "%bits%\world\maps\%map%" "%tmp%\Bits\world\maps\%map%" /E
pushd %gaspy%
venv\Scripts\python -m build.fix_start_positions_required_levels %map% --bits "%tmp%\Bits"
if %errorlevel% neq 0 pause
popd
"%tc%\RTC.exe" -source "%tmp%\Bits" -out "%ds%\Maps\%map_cs%.dsmap" -copyright "GPG 2002" -title "%map_cs%" -author "Johannes Förstner"
if %errorlevel% neq 0 pause

:: Cleanup
rmdir /S /Q "%tmp%\Bits"
