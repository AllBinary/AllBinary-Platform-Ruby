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

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/font/UpdateMyFontInterface"

class GeographicMapCellHistory
    include UpdateMyFontInterface
    attr_accessor :logUtil, :booleanFactory, :list, :visitedList, :MISSED_INFO, :animation, :myFontProcessor, :totalVisited, :halfWidth, :fontHeight, :RED

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @booleanFactory = BooleanFactory.getInstance()
        @list = nil
        @visitedList = nil
        @MISSED_INFO = "Missed"
        @animation = TextAnimation.new(@MISSED_INFO, AnimationBehavior.getInstance())
        @myFontProcessor = UpdateMyFontProcessor.new(self)
        @totalVisited = 0
        @halfWidth = 0
        @fontHeight = 0
        @RED = BasicColorFactory.getInstance().RED.to_i
    end
    

    def initialize()
        initialize_fields
        @list = BasicArrayListD.new()
        @visitedList = BasicArrayListD.new()
        self.init()
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @fontHeight = font.getHeight()
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def getTotalVisited()
        return @totalVisited
    end
    

    def getTotalNotVisited()
        return self.getSize() - @totalVisited
    end
    

    def getSize()
        return @list.size()
    end
    

    def trackAll(list)
        size = list.size()
        @list.ensureCapacity(size)
        @visitedList.ensureCapacity(size)
        geographicMapCellPosition = nil
        (0...size).each do |index|
            geographicMapCellPosition = list.get(index)
            self.track(geographicMapCellPosition)
        end
    end
    

    def track(geographicMapCellPosition)
        if !@list.contains(geographicMapCellPosition)
            @list.add(geographicMapCellPosition)
            @visitedList.add(@booleanFactory.FALSE)
        end
    end
    

    def getTracked()
        return @list
    end
    

    def getVisited()
        return @visitedList
    end
    

    def getAfterIfNotLast(geographicMapCellPosition)
        localList = @list
        index = localList.indexOf(geographicMapCellPosition)
        if localList.size() > index + 1
            return localList.get(index + 1)
        end
        return geographicMapCellPosition
    end
    

    def getFirstUnvisited()
        localList = @list
        localVisitedList = @visitedList
        size = localVisitedList.size()
        value = nil
        (0...size).each do |index|
            value = @visitedList.get(index)
            if value == @booleanFactory.FALSE
                return localList.get(index)
            end
        end
        return localList.get(0)
    end
    

    def getFirstUnvisitedIndex()
        localVisitedList = @visitedList
        size = localVisitedList.size()
        value = nil
        (0...size).each do |index|
            value = @visitedList.get(index)
            if value == @booleanFactory.FALSE
                return index
            end
        end
        return 0
    end
    

    def getInPathButNotTracked(pathList)
        inPathButNotTrackedList = BasicArrayListD.new()
        localList = @list
        size = pathList.size()
        geographicMapCellPosition = nil
        (0...size).each do |index|
            geographicMapCellPosition = pathList.get(index)
            if !localList.contains(geographicMapCellPosition)
                inPathButNotTrackedList.add(geographicMapCellPosition)
            end
        end
        return inPathButNotTrackedList
    end
    

    def isVisited(geographicMapCellPosition)
        index = @list.indexOf(geographicMapCellPosition)
        if index != -1
            value = @visitedList.get(index)
            if value == @booleanFactory.TRUE
                return true
            end
        else
        end
        return false
    end
    

    def visit(geographicMapCellPosition)
        index = @list.indexOf(geographicMapCellPosition)
        value = nil
        if index != -1
            value = @visitedList.get(index)
            _TRUE = @booleanFactory.TRUE
            if value != _TRUE
                @visitedList.set(index, _TRUE)
                @totalVisited += 1
                return true
            end
        else
        end
        return false
    end
    

    # throws Exception
    def isAllVisited()
        if @totalVisited == self.getSize() - 1
            return true
        else
            return false
        end
    end
    

    # throws Exception
    def isAllVisited2()
        if @totalVisited == self.getSize()
            return true
        else
            return false
        end
    end
    

    # throws Exception
    def isPortionVisited(basicDecimal)
        size = self.getSize()
        numberRequired = (size << basicDecimal.getScaledFactor()) / (basicDecimal.getUnscaled()).to_i
        numberNotVisited = self.getSize() - 1 - @totalVisited
        if size - numberNotVisited > numberRequired
            return true
        else
            return false
        end
    end
    

    # throws Exception
    def reset()
        localVisitedList = @visitedList
        localFalseBoolean = @booleanFactory.FALSE
        size = localVisitedList.size()
        (size - 1).step(0, -(1)) do |index|
            localVisitedList.set(index, localFalseBoolean)
        end
        @totalVisited = 0
    end
    

    def paintNotVisitedRelativeToPoint(graphics, tiledLayer, point)
        x = point.getX() - tiledLayer.getXP()
        y = point.getY() - tiledLayer.getYP()
        if @halfWidth == 0
            @halfWidth = (graphics.getFont().stringWidth(@MISSED_INFO) >> 1)
        end
        height = 2 * @fontHeight
        @animation.paintXY(graphics, x + @halfWidth, y + (height))
    end
    

    def paintNotVisited(graphics, geographicMapInterface)
        begin
            @myFontProcessor.process(graphics)
            graphics.setColor(@RED)
            localVisitedList = @visitedList
            size = localVisitedList.size()
            geographicMapCellPosition = nil
            isCellVisitedBoolean = nil
            index = size
            while (index -= 1) >= 0
                geographicMapCellPosition = @list.get(index)
                isCellVisitedBoolean = localVisitedList.get(index)
                if !isCellVisitedBoolean
                    self.paintNotVisitedRelativeToPoint(graphics, geographicMapInterface.getAllBinaryTiledLayer(), geographicMapCellPosition.getPoint())
                end
            end
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "paintNotVisited", e)
        end
    end
    

    def init()
        @list.clear()
        @visitedList.clear()
        @totalVisited = 0
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/animation/text/TextAnimation"
require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/font/UpdateMyFontProcessor"
require "org/allbinary/logic/math/BasicDecimal"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"

class GeographicMapCellHistory
    NULL_GEOGRPAHIC_MAP_HISTORY_ARRAY = Array.new(0, nil)
end

