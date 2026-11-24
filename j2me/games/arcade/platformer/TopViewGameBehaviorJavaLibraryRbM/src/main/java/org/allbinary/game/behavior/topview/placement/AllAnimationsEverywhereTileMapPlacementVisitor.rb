# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
#  
# By agreeing to this license you and any business entity you represent are 
# legally bound to the AllBinary Open License Version 1 legal agreement. 
#  
# You may obtain the AllBinary Open License Version 1 legal agreement from 
# AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
#  
# Created By: Travis Berthelot 
#   
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.behavior.topview.placement

require "java/lang/JavaOverload"
require "org/allbinary/game/behavior/topview/placement/TileMapPlacementVisitor"

module ::Org; module Allbinary; module Game; module Behavior; module Topview; module Placement

class AllAnimationsEverywhereTileMapPlacementVisitor < TileMapPlacementVisitor
    

    def visit(lastMap, mapData)
        size = mapData.length
        size2 = mapData[0].length - 7
        (0...size).each do |index|
            (0...size2).step(7) do |index2|
                mapData[index][index2] = 1
                mapData[index][index2 + 1] = 17
                mapData[index][index2 + 2] = 33
                mapData[index][index2 + 3] = 49
                mapData[index][index2 + 4] = 65
                mapData[index][index2 + 5] = 81
                mapData[index][index2 + 6] = 97
            end
        end
    end
    java_overload :visit, 2
end

module ::Org; module Mapeditor; module Core; autoload :TiledMap, "org/mapeditor/core/TiledMap" unless const_defined?(:TiledMap, false); end; end; end

end; end; end; end; end; end

