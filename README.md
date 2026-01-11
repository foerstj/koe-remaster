# KoE remaster

The original Kingdom of Ehb map, remastered.

## What I did

This map is re-buildable and editable. I opened & saved every region in Siege Editor v1.7. The dsmap file can be rebuilt using the batch scripts, provided you have the folder structure of Dungeon Siege, TankCreator and gaspy.
- Converted the map to use node mesh index
- Some regions had hotpoints unsupported by SE. All north vectors were fixed.
- SE saves the "required_level" attributes for multiplayer start positions with an "i" in front, which however breaks the level requirement.\
  This is fixed during build by a gaspy script.
- Renamed the map so there are no conflicts with the original map.\
  The internal name is *world/maps/kingdom-of-ehb*.\
  The generated file name is *Dungeon Siege/Maps/Kingdom of Ehb.dsmap*.\
  The ingame name is *Kingdom of Ehb (remastered)*.

## What I did (revisit)

The "revisited" map variant is based on the remaster, with these changes applied:
- Renamed map ingame to *Kingdom of Ehb (revisited)*
- Brushed up plants that had default scaling / orientation
- Added veteran / elite world levels
- Removed cam-blocking on some terrain nodes like rope bridges for smoother camera movement
- Turned around North vector in Glacern cellar
- Added more lake water terrain in Stonebridge for players using SeeFar
- Added support for Thrillvilled's voices mod
- Fixed water flow direction of a piece of river in Desert Canyon
- Fixed tilted mushroom in Dark Forest, cleaned up clay pot inside wall in Dragon's Rathe
- Fixed cap fading in goblin loop when entering from other side

## How to build

- Provide environment variables:
  - %DungeonSiege% - path to DS installation
  - %TankCreator% - path to TC installation
  - %GasPy% - path to GasPy repo
- Run the build.bat in the repo root

GasPy repo: https://github.com/foerstj/gaspy

## Attribution

This map was created by Gas-Powered Games, not me. I'm just doing minor changes here.
