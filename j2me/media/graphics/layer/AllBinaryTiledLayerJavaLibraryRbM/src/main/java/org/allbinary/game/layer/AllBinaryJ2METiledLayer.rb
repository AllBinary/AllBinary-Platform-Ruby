# 
# AllBinary Open License Version 1 
# Copyright (c) 2006 AllBinary 
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
# package org.allbinary.game.layer

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/game/TiledLayer"
require "org/allbinary/game/layer/AllBinaryTiledLayer"

class AllBinaryJ2METiledLayer < AllBinaryTiledLayer
    attr_accessor :tiledLayerP, :debugColor, :font2

    def initialize_fields
        @tiledLayerP = nil
        @debugColor = nil
        @font2 = Font.getFont(Font::FACE_SYSTEM, Font::STYLE_PLAIN, 4)
    end
    

    def initialize(dataId, tiledLayer, mapTwoDArray, debugColor)
        super(dataId, tiledLayer.getWidth(), tiledLayer.getHeight(), tiledLayer.getCellWidth(), tiledLayer.getCellHeight())
        initialize_fields
        @tiledLayerP = tiledLayer
        @debugColor = debugColor
        self.setCells(mapTwoDArray)
    end
    

    def paint(graphics)
        @tiledLayerP.paint(graphics)
    end
    

    def paintDebug(graphics)
        font = graphics.getFont()
        graphics.setFont(@font2)
        graphics.setColor(@debugColor)
        x = @tiledLayerP.getX()
        y = @tiledLayerP.getY()
        firstColumn = 0
        firstRow = 0
        totalColumns = @tiledLayerP.getColumns()
        totalRows = @tiledLayerP.getRows()
        x0 = x
        tile = 0
        tileHeight = @tiledLayerP.getCellHeight()
        tileWidth = @tiledLayerP.getCellWidth()
        commonSeps = CommonSeps.getInstance()
        stringMaker = StringMaker.new()
        rowIndex = firstRow
        while rowIndex < totalRows
            # next skips the update below
            x = x0
            columnIndex = firstColumn
            while columnIndex < totalColumns
                # next skips the update below
                tile = @tiledLayerP.getCell(columnIndex, rowIndex)
                if tile < 0
                    tile = @tiledLayerP.getAnimatedTile(tile)
                end
                if tile == 0
                    next
                end
                tile -= 1
                stringMaker.delete(0, stringMaker.length())
                graphics.drawString(stringMaker.appendint(columnIndex).append(commonSeps.COMMA).appendint(rowIndex).append(commonSeps.COLON).appendint(tile).to_s, x + 5, y + 10, 0)
                columnIndex += 1
                x += tileWidth
            end
            rowIndex += 1
            y += tileHeight
        end
        graphics.setFont(font)
    end
    

    def moveDXY(dx, dy)
        @tiledLayerP.move(dx, dy)
        super(-dx, -dy)
    end
    

    def setPosition(x, y, z)
        @tiledLayerP.setPosition(x, y)
        super(-x, -y, z)
    end
    

    def getTiledLayer()
        return @tiledLayerP
    end
    

    def getCellWidth()
        return @tiledLayerP.getCellWidth()
    end
    

    def getCellHeight()
        return @tiledLayerP.getCellHeight()
    end
    

    def getCell(col, row)
        return @tiledLayerP.getCell(col, row)
    end
    

    def getColumns()
        return @tiledLayerP.getColumns()
    end
    

    def getRows()
        return @tiledLayerP.getRows()
    end
    

    def setCell(col, row, index)
        @tiledLayerP.setCell(col, row, index)
    end
    

    def getAnimatedTile(animationTileIndex)
        return @tiledLayerP.getAnimatedTile(animationTileIndex)
    end
end

require "org/allbinary/string/CommonSeps"
require "org/allbinary/logic/string/StringMaker"

