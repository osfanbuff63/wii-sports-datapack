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

# This function ends archery and if the map is enabled, teleports you to the center of Wuhu Town
tellraw @a [{"text": "Archery has completed!","color": "gold"},"\n",{"text": "Total scores:","color": "gold"}]
execute as @a run tellraw @a {"score": {"name": "*","objective": "WS.Archery.Score"},"color": "dark_aqua"}
execute if score WS.Island WS.Config matches 1 run tellraw @a [{"text": "Would you like to teleport back to the center of Wuhu Town?","color": "gold"},"\n",{"text": "YES","color": "green","bold": true,"clickEvent": {"action": "run_command","value": "/trigger WS.Town"}},{"text": "                         "},{"text": "NO","color": "red","bold": true}]
