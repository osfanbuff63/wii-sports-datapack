# TODO: menu
scoreboard players set @s WS.Menu 0
execute if score WS.Setup WS.Setup matches 0 run function ws_datapack:setup/no_setup
execute unless score WS.Setup WS.Setup matches 0 run tellraw @s {"text":"menu coming soon!"}
