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

require "org/allbinary/game/behavior/topview/placement/TileMapPlacementVisitor"

class PropsTileMapPlacementVisitor < TileMapPlacementVisitor
    attr_accessor :logUtil, :randomFactory

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @randomFactory = MyRandomFactory.getInstance()
    end

    def initialize
        super()
        initialize_fields
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
    

    def visit2(mapArray, mapData, index, index2)
        commonStrings = CommonStrings.getInstance()
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
end

require "org/allbinary/game/rand/MyRandomFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/mapeditor/core/TileLayer"
require "org/mapeditor/core/TiledMap"

