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
require "java/lang/JavaClass"
require "org/allbinary/graphics/paint/PaintableInterface"
require "org/allbinary/layer/Layer"
require "org/allbinary/layer/NamedInterface"

module ::Org; module Allbinary; module Game; module Layer

class AllBinaryTiledLayer < ::Org::Allbinary::Layer::Layer
    include ::Org::Allbinary::Layer::NamedInterface
    include ::Org::Allbinary::Graphics::Paint::PaintableInterface
    attr_accessor :cellWidth, :cellHeight, :halfWidth, :halfHeight, :halfCellWidth, :halfCellHeight, :dataId

    def jfields_org_allbinary_game_layer_AllBinaryTiledLayer
        @cellWidth = nil unless instance_variable_defined?(:@cellWidth)
        @cellHeight = nil unless instance_variable_defined?(:@cellHeight)
        @halfWidth = nil unless instance_variable_defined?(:@halfWidth)
        @halfHeight = nil unless instance_variable_defined?(:@halfHeight)
        @halfCellWidth = nil unless instance_variable_defined?(:@halfCellWidth)
        @halfCellHeight = nil unless instance_variable_defined?(:@halfCellHeight)
        @dataId = nil unless instance_variable_defined?(:@dataId)
    end
    

    def initialize(dataId, width, height, cellWidth, cellHeight)
        super(0, 0)
        jfields_org_allbinary_game_layer_AllBinaryTiledLayer
        @dataId = dataId
        self.setLayerWidth(width)
        self.setLayerHeight(height)
        AllBinaryTiledLayer.superclass.java_super_method(:setPosition, 3).bind(self).call(0, 0, 0)
        @cellWidth = cellWidth
        @cellHeight = cellHeight
        @halfWidth = (self.getWidth() >> 1)
        @halfHeight = (self.getHeight() >> 1)
        @halfCellWidth = (cellWidth >> 1)
        @halfCellHeight = (cellHeight >> 1)
    end
    

    def setCells(mapTwoDArray)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
    java_overload :setCells, 1
    

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
    java_overload :updateCells, 3
    

    def getName()
        return self.class.java_name
    end
    java_overload :getName, 0
    

    def paint(graphics)
    end
    java_overload :paint, 1
    

    def paintThreed(graphics)
    end
    java_overload :paintThreed, 1
    

    def getX2()
        return @x + self.getWidth()
    end
    java_overload :getX2, 0
    

    def getY2()
        return @y + self.getHeight()
    end
    java_overload :getY2, 0
    

    def getZ2()
        return (((@z + self.getDepth())).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
    end
    java_overload :getZ2, 0
    

    def getCellWidth()
        return @cellWidth
    end
    java_overload :getCellWidth, 0
    

    def getCellHeight()
        return @cellHeight
    end
    java_overload :getCellHeight, 0
    

    def getCell(col, row)
        return -1
    end
    java_overload :getCell, 2
    

    def getColumns()
        return -1
    end
    java_overload :getColumns, 0
    

    def getRows()
        return -1
    end
    java_overload :getRows, 0
    

    def setCell(col, row, tileIndex)
    end
    java_overload :setCell, 3
    

    def getHalfWidth()
        return @halfWidth
    end
    java_overload :getHalfWidth, 0
    

    def getHalfHeight()
        return @halfHeight
    end
    java_overload :getHalfHeight, 0
    

    def getDataId()
        return @dataId
    end
    java_overload :getDataId, 0
    

    def getHalfCellWidth()
        return @halfCellWidth
    end
    java_overload :getHalfCellWidth, 0
    

    def getHalfCellHeight()
        return @halfCellHeight
    end
    java_overload :getHalfCellHeight, 0
    

    def isOnTileLayer(column, row)
        if self.getColumns() > column && self.getRows() > row && row >= 0 && column >= 0
            return true
        else
            return false
        end
    end
    java_overload :isOnTileLayer, 2
    

    def getAnimatedTile(animationTileIndex)
        return animationTileIndex
    end
    java_overload :getAnimatedTile, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end

