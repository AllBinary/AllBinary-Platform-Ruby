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

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/paint/PaintableInterface"
require "org/allbinary/layer/Layer"
require "org/allbinary/layer/NamedInterface"

class AllBinaryTiledLayer < Layer
    include NamedInterface
    include PaintableInterface
    attr_accessor :cellWidth, :cellHeight, :halfWidth, :halfHeight, :halfCellWidth, :halfCellHeight, :dataId

    def initialize_fields
        @cellWidth = nil
        @cellHeight = nil
        @halfWidth = nil
        @halfHeight = nil
        @halfCellWidth = nil
        @halfCellHeight = nil
        @dataId = nil
    end
    

    def initialize(dataId, width, height, cellWidth, cellHeight)
        super(0, 0)
        initialize_fields
        @dataId = dataId
        self.setLayerWidth(width)
        self.setLayerHeight(height)
        self.class.superclass.instance_method(:setPosition).bind(self).call(0, 0, 0)
        @cellWidth = cellWidth
        @cellHeight = cellHeight
        @halfWidth = (self.getWidth() >> 1)
        @halfHeight = (self.getHeight() >> 1)
        @halfCellWidth = (cellWidth >> 1)
        @halfCellHeight = (cellHeight >> 1)
    end
    

    def setCells(mapTwoDArray)
        stringBuffer = StringMaker.new()
        stringBuffer.append("Start: r: ")
        stringBuffer.appendint(mapTwoDArray.length)
        stringBuffer.append(" c: ")
        stringBuffer.appendint(mapTwoDArray[0].length)
        stringBuffer.append(" rows: ")
        stringBuffer.appendint(self.getRows())
        stringBuffer.append(" columns: ")
        stringBuffer.appendint(self.getColumns())
        @logUtil.putF(stringBuffer.to_s, self, "setCells")
        rows = self.getRows()
        columns = self.getColumns()
        (0...columns).each do |col|
            (0...rows).each do |row|
                self.setCell(col, row, mapTwoDArray[row][col])
            end
        end
    end
    

    def updateCells(mapTwoDArray, fromTileId, toTileId)
        rows = self.getRows()
        columns = self.getColumns()
        (0...columns).each do |col|
            (0...rows).each do |row|
                if fromTileId == mapTwoDArray[row][col]
                    mapTwoDArray[row][col] = toTileId
                    self.setCell(col, row, mapTwoDArray[row][col])
                end
            end
        end
    end
    

    def getName()
        return self.class.name
    end
    

    def paint(graphics)
    end
    

    def paintThreed(graphics)
    end
    

    def getX2()
        return @x + self.getWidth()
    end
    

    def getY2()
        return @y + self.getHeight()
    end
    

    def getZ2()
        return ((@z + self.getDepth())).to_i
    end
    

    def getCellWidth()
        return @cellWidth
    end
    

    def getCellHeight()
        return @cellHeight
    end
    

    def getCell(col, row)
        return -1
    end
    

    def getColumns()
        return -1
    end
    

    def getRows()
        return -1
    end
    

    def setCell(col, row, tileIndex)
    end
    

    def getHalfWidth()
        return @halfWidth
    end
    

    def getHalfHeight()
        return @halfHeight
    end
    

    def getDataId()
        return @dataId
    end
    

    def getHalfCellWidth()
        return @halfCellWidth
    end
    

    def getHalfCellHeight()
        return @halfCellHeight
    end
    

    def isOnTileLayer(column, row)
        if self.getColumns() > column && self.getRows() > row && row >= 0 && column >= 0
            return true
        else
            return false
        end
    end
    

    def getAnimatedTile(animationTileIndex)
        return animationTileIndex
    end
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"

