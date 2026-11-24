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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/font/UpdateMyFontInterface"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map

class GeographicMapCellHistory
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :logUtil, :booleanFactory, :list, :visitedList, :MISSED_INFO, :animation, :myFontProcessor, :totalVisited, :halfWidth, :fontHeight, :RED

    def jfields_org_allbinary_media_graphics_geography_map_GeographicMapCellHistory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @booleanFactory = ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance()
        @list = nil unless instance_variable_defined?(:@list)
        @visitedList = nil unless instance_variable_defined?(:@visitedList)
        @MISSED_INFO = "Missed"
        @animation = ::Org::Allbinary::Animation::Text::TextAnimation.new(@MISSED_INFO, ::Org::Allbinary::Animation::AnimationBehavior.getInstance())
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @totalVisited = 0 unless instance_variable_defined?(:@totalVisited)
        @halfWidth = 0
        @fontHeight = 0
        @RED = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().RED.to_i
    end
    

    def initialize()
        jfields_org_allbinary_media_graphics_geography_map_GeographicMapCellHistory
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
        @visitedList = ::Org::Allbinary::Util::BasicArrayListD.new()
        self.init()
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @fontHeight = font.getHeight()
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    def getTotalVisited()
        return @totalVisited
    end
    java_overload :getTotalVisited, 0
    

    def getTotalNotVisited()
        return self.getSize() - @totalVisited
    end
    java_overload :getTotalNotVisited, 0
    

    def getSize()
        return @list.size()
    end
    java_overload :getSize, 0
    

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
    java_overload :trackAll, 1
    

    def track(geographicMapCellPosition)
        if !@list.contains(geographicMapCellPosition)
            @list.add(geographicMapCellPosition)
            @visitedList.add(@booleanFactory.FALSE)
        end
    end
    java_overload :track, 1
    

    def getTracked()
        return @list
    end
    java_overload :getTracked, 0
    

    def getVisited()
        return @visitedList
    end
    java_overload :getVisited, 0
    

    def getAfterIfNotLast(geographicMapCellPosition)
        localList = @list
        index = localList.indexOf(geographicMapCellPosition)
        if localList.size() > index + 1
            return localList.get(index + 1)
        end
        return geographicMapCellPosition
    end
    java_overload :getAfterIfNotLast, 1
    

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
    java_overload :getFirstUnvisited, 0
    

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
    java_overload :getFirstUnvisitedIndex, 0
    

    def getInPathButNotTracked(pathList)
        inPathButNotTrackedList = ::Org::Allbinary::Util::BasicArrayListD.new()
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
    java_overload :getInPathButNotTracked, 1
    

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
    java_overload :isVisited, 1
    

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
    java_overload :visit, 1
    

    # throws Exception
    def isAllVisited()
        if @totalVisited == self.getSize() - 1
            return true
        else
            return false
        end
    end
    java_overload :isAllVisited, 0
    

    # throws Exception
    def isAllVisited2()
        if @totalVisited == self.getSize()
            return true
        else
            return false
        end
    end
    java_overload :isAllVisited2, 0
    

    # throws Exception
    def isPortionVisited(basicDecimal)
        size = self.getSize()
        numberRequired = (size << basicDecimal.getScaledFactor()) / ((basicDecimal.getUnscaled()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        numberNotVisited = self.getSize() - 1 - @totalVisited
        if size - numberNotVisited > numberRequired
            return true
        else
            return false
        end
    end
    java_overload :isPortionVisited, 1
    

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
    java_overload :reset, 0
    

    def paintNotVisitedRelativeToPoint(graphics, tiledLayer, point)
        x = point.getX() - tiledLayer.getXP()
        y = point.getY() - tiledLayer.getYP()
        if @halfWidth == 0
            @halfWidth = (graphics.getFont().stringWidth(@MISSED_INFO) >> 1)
        end
        height = 2 * @fontHeight
        @animation.paintXY(graphics, x + @halfWidth, y + (height))
    end
    java_overload :paintNotVisitedRelativeToPoint, 3
    

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
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "paintNotVisited", e)
        end
    end
    java_overload :paintNotVisited, 2
    

    def init()
        @list.clear()
        @visitedList.clear()
        @totalVisited = 0
    end
    java_overload :init, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_GEOGRPAHIC_MAP_HISTORY_ARRAY, Array.new(0, nil))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GeographicMapCellHistory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_GEOGRPAHIC_MAP_HISTORY_ARRAY].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Animation; module Text; autoload :TextAnimation, "org/allbinary/animation/text/TextAnimation" unless const_defined?(:TextAnimation, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :BasicDecimal, "org/allbinary/logic/math/BasicDecimal" unless const_defined?(:BasicDecimal, false); end; end; end; end
autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false)
autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false)

begin
    GeographicMapCellHistory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

