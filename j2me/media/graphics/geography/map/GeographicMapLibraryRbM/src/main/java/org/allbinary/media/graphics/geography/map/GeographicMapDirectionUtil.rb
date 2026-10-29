#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
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
# package org.allbinary.media.graphics.geography.map


class GeographicMapDirectionUtil
    attr_accessor :MESSAGE, :ERROR, :EQUAL

    def initialize_fields
        @MESSAGE = "Cell Position should have been cached!!!"
        @ERROR = "Error: "
        @EQUAL = " == "
    end
    

    def self.getInstance()
        return GeographicMapDirectionUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def getDirectionFromCellPositionToAdjacentCellPosition(fromGeographicMapCellPosition, toGeographicMapCellPosition)
        fromColumn = fromGeographicMapCellPosition.getColumn()
        fromRow = fromGeographicMapCellPosition.getRow()
        goColumn = toGeographicMapCellPosition.getColumn()
        goRow = toGeographicMapCellPosition.getRow()
        directionFactory = DirectionFactory.getInstance()
        if fromColumn - 1 == goColumn
            return directionFactory.LEFT
        elsif fromColumn + 1 == goColumn
            return directionFactory.RIGHT
        elsif fromRow - 1 == goRow
            return directionFactory.UP
        elsif fromRow + 1 == goRow
            return directionFactory.DOWN
        elsif fromGeographicMapCellPosition == toGeographicMapCellPosition
            return directionFactory.NO_DIRECTION
        elsif fromRow == goRow && fromColumn == goColumn
            raise StandardError.new(@MESSAGE)
        end
        return directionFactory.NOT_BORDERED_WITH
    end
    

    # throws Exception
    def getEightDirectionFromCellPositionToAdjacentCellPosition(fromGeographicMapCellPosition, toGeographicMapCellPosition)
        fromColumn = fromGeographicMapCellPosition.getColumn()
        fromRow = fromGeographicMapCellPosition.getRow()
        goColumn = toGeographicMapCellPosition.getColumn()
        goRow = toGeographicMapCellPosition.getRow()
        directionFactory = DirectionFactory.getInstance()
        if fromRow == goRow
            if fromColumn - 1 == goColumn
                return directionFactory.LEFT
            elsif fromColumn + 1 == goColumn
                return directionFactory.RIGHT
            end
        elsif fromRow - 1 == goRow
            if fromColumn == goColumn
                return directionFactory.UP
            end
            if fromColumn - 1 == goColumn
                return directionFactory.UP_LEFT
            elsif fromColumn + 1 == goColumn
                return directionFactory.UP_RIGHT
            end
        elsif fromRow + 1 == goRow
            if fromColumn == goColumn
                return directionFactory.DOWN
            end
            if fromColumn - 1 == goColumn
                return directionFactory.DOWN_LEFT
            elsif fromColumn + 1 == goColumn
                return directionFactory.DOWN_RIGHT
            end
        elsif fromGeographicMapCellPosition == toGeographicMapCellPosition
            return directionFactory.NO_DIRECTION
        elsif fromRow == goRow && fromColumn == goColumn
            raise StandardError.new(@MESSAGE)
        end
        return directionFactory.NOT_BORDERED_WITH
    end
    

    # throws Exception
    def getDirectionFromCellPositionToCellPosition(fromGeographicMapCellPosition, toGeographicMapCellPosition)
        fromColumn = fromGeographicMapCellPosition.getColumn()
        fromRow = fromGeographicMapCellPosition.getRow()
        goColumn = toGeographicMapCellPosition.getColumn()
        goRow = toGeographicMapCellPosition.getRow()
        directionFactory = DirectionFactory.getInstance()
        if fromColumn > goColumn
            return directionFactory.LEFT
        elsif fromColumn < goColumn
            return directionFactory.RIGHT
        elsif fromRow > goRow
            return directionFactory.UP
        elsif fromRow < goRow
            return directionFactory.DOWN
        end
        stringMaker = StringMaker.new()
        string = stringMaker.append(CellPosition.toStringCellPosition(fromGeographicMapCellPosition)).append(" == ").append(CellPosition.toStringCellPosition(toGeographicMapCellPosition)).to_s
        stringMaker.delete(0, stringMaker.length())
        raise StandardError.new(stringMaker.append("Error: ").append(string).to_s)
    end
    

    # throws Exception
    def getEightDirectionFromCellPositionToCellPosition(fromGeographicMapCellPosition, toGeographicMapCellPosition)
        fromColumn = fromGeographicMapCellPosition.getColumn()
        fromRow = fromGeographicMapCellPosition.getRow()
        goColumn = toGeographicMapCellPosition.getColumn()
        goRow = toGeographicMapCellPosition.getRow()
        directionFactory = DirectionFactory.getInstance()
        if fromGeographicMapCellPosition == toGeographicMapCellPosition
            return directionFactory.NO_DIRECTION
        elsif fromRow == goRow
            if fromColumn > goColumn
                return directionFactory.LEFT
            elsif fromColumn < goColumn
                return directionFactory.RIGHT
            end
        elsif fromRow > goRow
            if fromColumn > goColumn
                return directionFactory.UP_LEFT
            elsif fromColumn < goColumn
                return directionFactory.UP_RIGHT
            elsif fromColumn == goColumn
                return directionFactory.UP
            end
        elsif fromRow < goRow
            if fromColumn > goColumn
                return directionFactory.DOWN_LEFT
            elsif fromColumn < goColumn
                return directionFactory.DOWN_RIGHT
            elsif fromColumn == goColumn
                return directionFactory.DOWN
            end
        end
        stringBuffer = StringMaker.new()
        stringBuffer.append(@ERROR)
        stringBuffer.append(CellPosition.toStringCellPosition(fromGeographicMapCellPosition))
        stringBuffer.append(@EQUAL)
        stringBuffer.append(CellPosition.toStringCellPosition(toGeographicMapCellPosition))
        raise StandardError.new(stringBuffer.to_s)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/direction/Direction"
require "org/allbinary/direction/DirectionFactory"
require "org/allbinary/graphics/CellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"

class GeographicMapDirectionUtil
    @@instance = GeographicMapDirectionUtil.new()
end

