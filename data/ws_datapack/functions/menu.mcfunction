# WS Datapack
# Copyright (C) 2022 osfanbuff63
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# TODO: menu
scoreboard players set @s WS.Menu 0
execute if score WS.Setup WS.Setup matches 0 run function ws_datapack:setup/no_setup
execute unless score WS.Setup WS.Setup matches 0 run tellraw @s [{"text": "----------- ","color": "red"},{"text": "WS Datapack Menu","color": "yellow","bold": true},{"text": "----------- ","color": "red"},"\n",{"text": "Select a Game","color": "blue","hoverEvent": {"action": "show_text","contents": {"text": "Click me to select a game!","color": "gold"}},"clickEvent": {"action": "run_command","value": "/trigger WS.Menu set 2"}}]
