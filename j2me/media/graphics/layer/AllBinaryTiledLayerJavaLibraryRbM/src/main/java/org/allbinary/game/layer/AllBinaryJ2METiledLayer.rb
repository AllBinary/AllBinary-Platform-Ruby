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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/AllBinaryTiledLayer"

module ::Org; module Allbinary; module Game; module Layer

class AllBinaryJ2METiledLayer < AllBinaryTiledLayer
    attr_accessor :tiledLayerP, :debugColor, :font2

    def jfields_org_allbinary_game_layer_AllBinaryJ2METiledLayer
        @tiledLayerP = nil unless instance_variable_defined?(:@tiledLayerP)
        @debugColor = nil unless instance_variable_defined?(:@debugColor)
        @font2 = ::Javax::Microedition::Lcdui::Font.getFont(::Javax::Microedition::Lcdui::Font::FACE_SYSTEM, ::Javax::Microedition::Lcdui::Font::STYLE_PLAIN, 4)
    end
    

    def initialize(dataId, tiledLayer, mapTwoDArray, debugColor)
        super(dataId, tiledLayer.getWidth(), tiledLayer.getHeight(), tiledLayer.getCellWidth(), tiledLayer.getCellHeight())
        jfields_org_allbinary_game_layer_AllBinaryJ2METiledLayer
        @tiledLayerP = tiledLayer
        @debugColor = debugColor
        self.setCells(mapTwoDArray)
    end
    

    def paint(graphics)
        @tiledLayerP.paint(graphics)
    end
    java_overload :paint, 1
    

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
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        stringMaker = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
    java_overload :paintDebug, 1
    

    def moveDXY(dx, dy)
        @tiledLayerP.move(dx, dy)
        AllBinaryJ2METiledLayer.superclass.java_super_method(:moveDXY, 2).bind(self).call(-dx, -dy)
    end
    java_overload :moveDXY, 2
    

    def setPosition(x, y, z)
        @tiledLayerP.setPosition(x, y)
        AllBinaryJ2METiledLayer.superclass.java_super_method(:setPosition, 3).bind(self).call(-x, -y, z)
    end
    java_overload :setPosition, 3
    

    def getTiledLayer()
        return @tiledLayerP
    end
    java_overload :getTiledLayer, 0
    

    def getCellWidth()
        return @tiledLayerP.getCellWidth()
    end
    java_overload :getCellWidth, 0
    

    def getCellHeight()
        return @tiledLayerP.getCellHeight()
    end
    java_overload :getCellHeight, 0
    

    def getCell(col, row)
        return @tiledLayerP.getCell(col, row)
    end
    java_overload :getCell, 2
    

    def getColumns()
        return @tiledLayerP.getColumns()
    end
    java_overload :getColumns, 0
    

    def getRows()
        return @tiledLayerP.getRows()
    end
    java_overload :getRows, 0
    

    def setCell(col, row, index)
        @tiledLayerP.setCell(col, row, index)
    end
    java_overload :setCell, 3
    

    def getAnimatedTile(animationTileIndex)
        return @tiledLayerP.getAnimatedTile(animationTileIndex)
    end
    java_overload :getAnimatedTile, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; module Game; autoload :TiledLayer, "javax/microedition/lcdui/game/TiledLayer" unless const_defined?(:TiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end

end; end; end; end

