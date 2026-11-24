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

class PropsTileMapPlacementVisitor < TileMapPlacementVisitor
    attr_accessor :logUtil, :randomFactory

    def jfields_org_allbinary_game_behavior_topview_placement_PropsTileMapPlacementVisitor
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @randomFactory = ::Org::Allbinary::Game::Rand::MyRandomFactory.getInstance()
    end

    def initialize
        super()
        jfields_org_allbinary_game_behavior_topview_placement_PropsTileMapPlacementVisitor
    end
    

    def visit(lastMap, mapData)
        layerIndex = 0
        tileLayer = (lastMap.getLayer(layerIndex))
        mapArray = tileLayer.getMapArray()
        size = mapData.length
        size2 = mapData[0].length
        (0...size).each do |index|
            (0...size2).each do |index2|
                if mapArray[index][index2] == 14
                else
                    self.visit2(mapArray, mapData, index, index2)
                end
                if index % 7 == 0
                    if mapArray[index][index2] == 19
                        randomInt = @randomFactory.getAbsoluteNextIntAllowZero(3)
                        if randomInt == 0
                            mapData[index][index2] = 1
                        elsif randomInt == 1
                            mapData[index][index2] = 81
                        elsif randomInt == 2
                            mapData[index][index2] = 97
                        end
                    elsif mapArray[index][index2] == 17
                        randomInt = @randomFactory.getAbsoluteNextIntAllowZero(3)
                        if randomInt == 0
                            mapData[index][index2] = 17
                        elsif randomInt == 1
                            mapData[index][index2] = 81
                        elsif randomInt == 2
                            mapData[index][index2] = 97
                        end
                    end
                end
                if index2 % 7 == 0
                    if mapArray[index][index2] == 34
                        randomInt = @randomFactory.getAbsoluteNextIntAllowZero(4)
                        if randomInt == 0
                            mapData[index][index2] = 33
                        elsif randomInt == 1
                            mapData[index][index2] = 65
                        elsif randomInt == 2
                            mapData[index][index2] = 81
                        elsif randomInt == 3
                            mapData[index][index2] = 97
                        end
                    end
                end
            end
        end
    end
    java_overload :visit, 2
    

    def visit2(mapArray, mapData, index, index2)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        countX = 0
        countY = 0
        index3 = index - 1
        (index2 - 1).step(0 + 1, -(1)) do |index4|
            index3 -= 1
            if index3 < 0 || index4 < 0
                return
            end
            if mapArray[index3][index4] != 14 || mapData[index3][index4] != 0
                if countX > 10 && countY > 10
                    (index3 + 1...index - 1).each do |index5|
                        (index4 + 1...index2 - 1).each do |index6|
                            if mapArray[index5][index6] != 14 || mapData[index5][index6] != 0
                                return
                            end
                        end
                    end
                    x = index - (countX / 2)
                    y = index2 - (countY / 2)
                    if x >= 0 && y >= 0 && x < mapData.length && y < mapData[0].length
                    end
                end
                return
            end
            countY += 1
            countX += 1
        end
    end
    java_overload :visit2, 4
end

module ::Org; module Allbinary; module Game; module Rand; autoload :MyRandomFactory, "org/allbinary/game/rand/MyRandomFactory" unless const_defined?(:MyRandomFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Mapeditor; module Core; autoload :TileLayer, "org/mapeditor/core/TileLayer" unless const_defined?(:TileLayer, false); end; end; end
module ::Org; module Mapeditor; module Core; autoload :TiledMap, "org/mapeditor/core/TiledMap" unless const_defined?(:TiledMap, false); end; end; end

end; end; end; end; end; end

