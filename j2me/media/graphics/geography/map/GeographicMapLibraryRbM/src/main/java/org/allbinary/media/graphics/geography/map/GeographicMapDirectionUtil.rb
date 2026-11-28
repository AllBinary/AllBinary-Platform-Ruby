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


module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map

class GeographicMapDirectionUtil
    attr_accessor :MESSAGE, :ERROR, :EQUAL

    def jfields_org_allbinary_media_graphics_geography_map_GeographicMapDirectionUtil
        @MESSAGE = "Cell Position should have been cached!!!"
        @ERROR = "Error: "
        @EQUAL = " == "
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_media_graphics_geography_map_GeographicMapDirectionUtil
    end
    

    # throws Exception
    def getDirectionFromCellPositionToAdjacentCellPosition(fromGeographicMapCellPosition, toGeographicMapCellPosition)
        fromColumn = fromGeographicMapCellPosition.getColumn()
        fromRow = fromGeographicMapCellPosition.getRow()
        goColumn = toGeographicMapCellPosition.getColumn()
        goRow = toGeographicMapCellPosition.getRow()
        directionFactory = ::Org::Allbinary::Direction::DirectionFactory.getInstance()
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
        directionFactory = ::Org::Allbinary::Direction::DirectionFactory.getInstance()
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
        directionFactory = ::Org::Allbinary::Direction::DirectionFactory.getInstance()
        if fromColumn > goColumn
            return directionFactory.LEFT
        elsif fromColumn < goColumn
            return directionFactory.RIGHT
        elsif fromRow > goRow
            return directionFactory.UP
        elsif fromRow < goRow
            return directionFactory.DOWN
        end
        stringMaker = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        string = stringMaker.append(::Org::Allbinary::Graphics::CellPosition.toStringCellPosition(fromGeographicMapCellPosition)).append(" == ").append(::Org::Allbinary::Graphics::CellPosition.toStringCellPosition(toGeographicMapCellPosition)).to_s
        stringMaker.delete(0, stringMaker.length())
        raise StandardError.new(stringMaker.append("Error: ").append(string).to_s)
    end
    

    # throws Exception
    def getEightDirectionFromCellPositionToCellPosition(fromGeographicMapCellPosition, toGeographicMapCellPosition)
        fromColumn = fromGeographicMapCellPosition.getColumn()
        fromRow = fromGeographicMapCellPosition.getRow()
        goColumn = toGeographicMapCellPosition.getColumn()
        goRow = toGeographicMapCellPosition.getRow()
        directionFactory = ::Org::Allbinary::Direction::DirectionFactory.getInstance()
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
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@ERROR)
        stringBuffer.append(::Org::Allbinary::Graphics::CellPosition.toStringCellPosition(fromGeographicMapCellPosition))
        stringBuffer.append(@EQUAL)
        stringBuffer.append(::Org::Allbinary::Graphics::CellPosition.toStringCellPosition(toGeographicMapCellPosition))
        raise StandardError.new(stringBuffer.to_s)
    end

    def self.instance()
        GeographicMapDirectionUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GeographicMapDirectionUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GeographicMapDirectionUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GeographicMapDirectionUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Direction; autoload :Direction, "org/allbinary/direction/Direction" unless const_defined?(:Direction, false); end; end; end
module ::Org; module Allbinary; module Direction; autoload :DirectionFactory, "org/allbinary/direction/DirectionFactory" unless const_defined?(:DirectionFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :CellPosition, "org/allbinary/graphics/CellPosition" unless const_defined?(:CellPosition, false); end; end; end
autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false)

begin
    GeographicMapDirectionUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

