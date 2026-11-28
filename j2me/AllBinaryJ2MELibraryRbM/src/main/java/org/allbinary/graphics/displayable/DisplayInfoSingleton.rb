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
# package org.allbinary.graphics.displayable


module ::Org; module Allbinary; module Graphics; module Displayable

class DisplayInfoSingleton
    attr_accessor :logUtil, :commonLabels, :commonSeps, :commonStrings, :ORIENTATION, :ADJUSTING_FOR_SCALING_IN_PORTRAIT, :ADJUSTING_FOR_SCALING_IN_LANDSCAPE, :last, :lastHalf, :full, :top, :left, :xOffset, :yOffset, :scaleLargestTo, :WIDTH, :HEIGHT, :CUSTOM_WIDTH, :CUSTOM_HEIGHT, :scalableListener, :displayRatio, :ratio, :SET_LAST_SIZE_METHOD_NAME, :FULL_WIDTH, :FULL_HEIGHT, :LAST_WIDTH, :LAST_HEIGHT, :PORTRAIT, :LANDSCAPE, :displayChangeEvent, :FIRE_METHOD_NAME, :REASON, :UPDATE_FROM_ORIENTATION_CHANGE, :list, :DISPLAY_INFO, :FULL, :LAST, :LAST_HALF

    def jfields_org_allbinary_graphics_displayable_DisplayInfoSingleton
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonLabels = ::Org::Allbinary::StringPackage::CommonLabels.getInstance()
        @commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @ORIENTATION = "ORIENTATION"
        @ADJUSTING_FOR_SCALING_IN_PORTRAIT = "Adjusting for Scaling in portrait display ratio: "
        @ADJUSTING_FOR_SCALING_IN_LANDSCAPE = "Adjusting for Scaling in landscape display ratio: "
        @last = (Array.new(4, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
        @lastHalf = (Array.new(4, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
        @full = (Array.new(4, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
        @top = 0 unless instance_variable_defined?(:@top)
        @left = 0 unless instance_variable_defined?(:@left)
        @xOffset = 0 unless instance_variable_defined?(:@xOffset)
        @yOffset = 0 unless instance_variable_defined?(:@yOffset)
        @scaleLargestTo = 0.0 unless instance_variable_defined?(:@scaleLargestTo)
        @WIDTH = 0
        @HEIGHT = 1
        @CUSTOM_WIDTH = 2
        @CUSTOM_HEIGHT = 3
        @scalableListener = BaseScalable.new()
        @displayRatio = 0.0 unless instance_variable_defined?(:@displayRatio)
        @ratio = 1.0
        @SET_LAST_SIZE_METHOD_NAME = "setLastSize"
        @FULL_WIDTH = " FullWidth: "
        @FULL_HEIGHT = " FullHeight: "
        @LAST_WIDTH = "LastWidth: "
        @LAST_HEIGHT = " LastHeight: "
        @PORTRAIT = "Portrait"
        @LANDSCAPE = "Landscape"
        @displayChangeEvent = ::Org::Allbinary::Graphics::Displayable::Event::DisplayChangeEvent.new(self)
        @FIRE_METHOD_NAME = "fire"
        @REASON = "reason: "
        @UPDATE_FROM_ORIENTATION_CHANGE = "Updating from Orientation Change "
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
        @DISPLAY_INFO = "Display Info: "
        @FULL = "full"
        @LAST = "last"
        @LAST_HALF = "lastHalf"
    end
    

    def self.getInstance()
        return SINGLETON
    end
    

    def initialize()
        jfields_org_allbinary_graphics_displayable_DisplayInfoSingleton
        size = @last.length
        (0...size).each do |index|
            @last[index] = 0
            @lastHalf[index] = 0
            @full[index] = 0
        end
        if ::Org::Allbinary::AndroidUtil.isAndroid()
            @scaleLargestTo = 640.0
        else
            @scaleLargestTo = 1080.0
        end
    end
    

    def getLastHalf()
        return @lastHalf
    end
    

    def getLast()
        return @last
    end
    

    def getFull()
        return @full
    end
    

    def getScaleLargestTo()
        return @scaleLargestTo
    end
    

    def setScaleLargestTo(scaleLargestTo)
        @scaleLargestTo = (scaleLargestTo).to_f
    end
    

    def setLastSize(aLastWidth, aLastHeight, reason)
        if @full[@WIDTH] != aLastWidth || @full[@HEIGHT] != aLastHeight
            self.setLastSizeForce(aLastWidth, aLastHeight, reason)
        end
    end
    

    def setLastSizeForce(aLastWidth, aLastHeight, reason)
        stringMaker = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        @logUtil.putF(stringMaker.append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().START_LABEL).append(reason).to_s, self, @SET_LAST_SIZE_METHOD_NAME)
        aFullWidth = aLastWidth
        aFullHeight = aLastHeight
        stringMaker.delete(0, stringMaker.length())
        @logUtil.putF(stringMaker.append(@FULL_WIDTH).appendint(aFullWidth).append(@FULL_HEIGHT).appendint(aFullHeight).append(self.to_s).to_s, self, @SET_LAST_SIZE_METHOD_NAME)
        operatingSystemInterface = ::Org::Allbinary::Logic::System::Os::OperatingSystemFactory.getInstance().getOperatingSystemInstance()
        if operatingSystemInterface.isOverScan()
            aLastWidth = aLastWidth * operatingSystemInterface.getOverScanXPercent() / 100
            aLastHeight = aLastHeight * operatingSystemInterface.getOverScanYPercent() / 100
        end
        if operatingSystemInterface.isScalable()
            if self.isPortraitWH(aLastWidth, aLastHeight)
                if (aLastHeight).to_f > @scaleLargestTo
                    @displayRatio = @scaleLargestTo / (aLastHeight).to_f
                    @ratio = (aLastHeight).to_f / @scaleLargestTo
                    stringMaker.delete(0, stringMaker.length())
                    @logUtil.putF(stringMaker.append(@ADJUSTING_FOR_SCALING_IN_PORTRAIT).appendfloat(@displayRatio).to_s, self, @SET_LAST_SIZE_METHOD_NAME)
                    aLastWidth = (((aLastWidth).to_f * @displayRatio)).to_i
                    aLastHeight = (((aLastHeight).to_f * @displayRatio)).to_i
                    @scalableListener.scale(@ratio)
                else
                    @ratio = 1.0
                    @scalableListener.scale(@ratio)
                end
            else
                if (aLastWidth).to_f > @scaleLargestTo
                    @displayRatio = @scaleLargestTo / (aLastWidth).to_f
                    @ratio = (aLastWidth).to_f / @scaleLargestTo
                    stringMaker.delete(0, stringMaker.length())
                    @logUtil.putF(stringMaker.append(@ADJUSTING_FOR_SCALING_IN_LANDSCAPE).appendfloat(@displayRatio).to_s, self, @SET_LAST_SIZE_METHOD_NAME)
                    aLastWidth = (((aLastWidth).to_f * @displayRatio)).to_i
                    aLastHeight = (((aLastHeight).to_f * @displayRatio)).to_i
                    @scalableListener.scale(@ratio)
                else
                    @ratio = 1.0
                    @scalableListener.scale(@ratio)
                end
            end
        end
        stringMaker.delete(0, stringMaker.length())
        @logUtil.putF(stringMaker.append(@LAST_WIDTH).appendint(aLastWidth).append(@LAST_HEIGHT).appendint(aLastHeight).to_s, self, @SET_LAST_SIZE_METHOD_NAME)
        @xOffset = aFullWidth - aLastWidth
        @yOffset = aFullHeight - aLastHeight
        @left = @scalableListener.getLeft(@xOffset)
        @top = @scalableListener.getTop(@yOffset)
        @full[@WIDTH] = aFullWidth
        @full[@HEIGHT] = aFullHeight
        @last[@WIDTH] = aLastWidth
        @lastHalf[@WIDTH] = (@last[@WIDTH] >> 1)
        @last[@HEIGHT] = aLastHeight
        @lastHalf[@HEIGHT] = (@last[@HEIGHT] >> 1)
        ::Org::Allbinary::Graphics::Threed::SWTJOGLProcessor.getInstance().setCustom(aLastWidth, aLastHeight, @ratio)
        self.add(@SET_LAST_SIZE_METHOD_NAME)
    end
    

    def isPortraitWH(lastWidth, lastHeight)
        if lastHeight > lastWidth
            return true
        else
            return false
        end
    end
    

    def isPortrait()
        return self.isPortraitWH(@last[@WIDTH], @last[@HEIGHT])
    end
    

    def add(reason)
        stringMaker = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        @logUtil.putF(stringMaker.append(@REASON).append(reason).to_s, self, @FIRE_METHOD_NAME)
        stringMaker.delete(0, stringMaker.length())
        @logUtil.putF(self.toStringAppend(stringMaker), self, @FIRE_METHOD_NAME)
        @list.add(reason)
    end
    

    def process()
        begin
            if @list.size() > 0
                self.processForced()
            end
            @list.clear()
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(@commonStrings.EXCEPTION, self, @FIRE_METHOD_NAME, e)
        end
    end
    

    def processForced()
        begin
            swtJOGLProcessor = ::Org::Allbinary::Graphics::Threed::SWTJOGLProcessor.getInstance()
            swtJOGLProcessor.clear()
            ::Org::Allbinary::Graphics::Displayable::Event::DisplayChangeEventHandler.getInstance().fireEvent(@displayChangeEvent)
            ::Org::Allbinary::Graphics::Displayable::Event::LastDisplayChangeEventHandler.getInstance().fireEvent(@displayChangeEvent)
            swtJOGLProcessor.onSurfaceChanged()
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(@commonStrings.EXCEPTION, self, @FIRE_METHOD_NAME, e)
        end
    end
    

    def update(displayable, reason)
        aLastWidth = displayable.getWidth()
        aLastHeight = displayable.getHeight()
        aFullWidth = aLastWidth
        aFullHeight = aLastHeight
        stringMaker = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        @logUtil.putF(stringMaker.append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().START_LABEL).append(reason).append(@LAST_WIDTH).appendint(aLastWidth).append(@LAST_HEIGHT).appendint(aLastHeight).append(@commonSeps.SPACE).append(self.to_s).to_s, self, @commonStrings.UPDATE)
        if aLastWidth > 0 && aLastHeight > 0
            features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
            openGLFeatureFactory = ::Org::Allbinary::Graphics::Opengles::OpenGLFeatureFactory.getInstance()
            if !features.isDefault(openGLFeatureFactory.OPENGL) || @last[@WIDTH] != aLastWidth || @last[@HEIGHT] != aLastHeight
                stringMaker.delete(0, stringMaker.length())
                @logUtil.putF(stringMaker.append(@UPDATE_FROM_ORIENTATION_CHANGE).to_s, self, @commonStrings.UPDATE)
                operatingSystemInterface = ::Org::Allbinary::Logic::System::Os::OperatingSystemFactory.getInstance().getOperatingSystemInstance()
                if operatingSystemInterface.isOverScan()
                    aLastWidth = aLastWidth * operatingSystemInterface.getOverScanXPercent() / 100
                    aLastHeight = aLastHeight * operatingSystemInterface.getOverScanYPercent() / 100
                end
                if operatingSystemInterface.isScalable()
                    if self.isPortraitWH(aLastWidth, aLastHeight)
                        if (aLastHeight).to_f > @scaleLargestTo
                            @displayRatio = @scaleLargestTo / (aLastHeight).to_f
                            @ratio = (aLastHeight).to_f / @scaleLargestTo
                            stringMaker.delete(0, stringMaker.length())
                            @logUtil.putF(stringMaker.append(@ADJUSTING_FOR_SCALING_IN_PORTRAIT).appendfloat(@displayRatio).to_s, self, @commonStrings.UPDATE)
                            aLastWidth = (((aLastWidth).to_f * @displayRatio)).to_i
                            aLastHeight = (((aLastHeight).to_f * @displayRatio)).to_i
                            @scalableListener.scale(@ratio)
                        else
                            @ratio = 1.0
                            @scalableListener.scale(@ratio)
                        end
                    else
                        if (aLastWidth).to_f > @scaleLargestTo
                            @displayRatio = @scaleLargestTo / (aLastWidth).to_f
                            @ratio = (aLastWidth).to_f / @scaleLargestTo
                            stringMaker.delete(0, stringMaker.length())
                            @logUtil.putF(stringMaker.append(@ADJUSTING_FOR_SCALING_IN_LANDSCAPE).appendfloat(@displayRatio).to_s, self, @commonStrings.UPDATE)
                            aLastWidth = (((aLastWidth).to_f * @displayRatio)).to_i
                            aLastHeight = (((aLastHeight).to_f * @displayRatio)).to_i
                            @scalableListener.scale(@ratio)
                        else
                            @ratio = 1.0
                            @scalableListener.scale(@ratio)
                        end
                    end
                end
                stringMaker.delete(0, stringMaker.length())
                @logUtil.putF(stringMaker.append(@UPDATE_FROM_ORIENTATION_CHANGE).append(@LAST_WIDTH).appendint(aLastWidth).append(@LAST_HEIGHT).appendint(aLastHeight).to_s, self, @commonStrings.UPDATE)
                @xOffset = aFullWidth - aLastWidth
                @yOffset = aFullHeight - aLastHeight
                @left = @scalableListener.getLeft(@xOffset)
                @top = @scalableListener.getTop(@yOffset)
                @full[@WIDTH] = aFullWidth
                @full[@HEIGHT] = aFullHeight
                @last[@WIDTH] = aLastWidth
                @lastHalf[@WIDTH] = (@last[@WIDTH] >> 1)
                @last[@HEIGHT] = aLastHeight
                @lastHalf[@HEIGHT] = (@last[@HEIGHT] >> 1)
                ::Org::Allbinary::Graphics::Threed::SWTJOGLProcessor.getInstance().setCustom(aLastWidth, aLastHeight, @ratio)
                self.add(@commonStrings.UPDATE)
            end
        end
    end
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        return self.toStringAppend(stringBuffer)
    end
    alias_method :to_s, :toString
    

    def toStringAppend(stringBuffer)
        stringBuffer.append(@DISPLAY_INFO)
        stringBuffer.append(@FULL)
        stringBuffer.append(@commonLabels.WIDTH_LABEL)
        stringBuffer.appendint(@full[@WIDTH])
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(@FULL)
        stringBuffer.append(@commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(@full[@HEIGHT])
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(@LAST)
        stringBuffer.append(@commonLabels.WIDTH_LABEL)
        stringBuffer.appendint(@last[@WIDTH])
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(@LAST)
        stringBuffer.append(@commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(@last[@HEIGHT])
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(@LAST_HALF)
        stringBuffer.append(@commonLabels.WIDTH_LABEL)
        stringBuffer.appendint(@lastHalf[@WIDTH])
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(@LAST_HALF)
        stringBuffer.append(@commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(@lastHalf[@HEIGHT])
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append((self.isPortrait() ? @PORTRAIT : @LANDSCAPE))
        return stringBuffer.to_s
    end
    

    def getTop()
        return @top
    end
    

    def getLeft()
        return @left
    end
    

    def getLastWidth()
        return @last[@WIDTH]
    end
    

    def getLastHeight()
        return @last[@HEIGHT]
    end
    

    def getLastHalfWidth()
        return @lastHalf[@WIDTH]
    end
    

    def getLastHalfHeight()
        return @lastHalf[@HEIGHT]
    end
    

    def getCustomLastWidth()
        return @last[@CUSTOM_WIDTH]
    end
    

    def getCustomLastHeight()
        return @last[@CUSTOM_HEIGHT]
    end
    

    def getRawLastWidth()
        return @last[@WIDTH]
    end
    

    def getRawLastHeight()
        return @last[@HEIGHT]
    end
    

    def setCustom(width, height)
        @last[@CUSTOM_WIDTH] = width
        @lastHalf[@CUSTOM_WIDTH] = (@last[@CUSTOM_WIDTH] >> 1)
        @last[@CUSTOM_HEIGHT] = height
        @lastHalf[@CUSTOM_HEIGHT] = (@last[@CUSTOM_HEIGHT] >> 1)
    end
    

    def setScalableListener(scalableListener)
        @scalableListener = scalableListener
    end
    

    def getScalableListener()
        return @scalableListener
    end
    

    def getRatio()
        return @ratio
    end
    

    def getDisplayRatio()
        return @displayRatio
    end
    

    def setOffset(left, top)
        @left = left
    end
    

    def getxOffset()
        return @xOffset
    end
    

    def getyOffset()
        return @yOffset
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, DisplayInfoSingleton.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DisplayInfoSingleton"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Displayable, "javax/microedition/lcdui/Displayable" unless const_defined?(:Displayable, false); end; end; end
module ::Org; module Allbinary; autoload :AndroidUtil, "org/allbinary/AndroidUtil" unless const_defined?(:AndroidUtil, false); end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Event; autoload :DisplayChangeEvent, "org/allbinary/graphics/displayable/event/DisplayChangeEvent" unless const_defined?(:DisplayChangeEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Event; autoload :DisplayChangeEventHandler, "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler" unless const_defined?(:DisplayChangeEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Event; autoload :LastDisplayChangeEventHandler, "org/allbinary/graphics/displayable/event/LastDisplayChangeEventHandler" unless const_defined?(:LastDisplayChangeEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory" unless const_defined?(:OpenGLFeatureFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Threed; autoload :SWTJOGLProcessor, "org/allbinary/graphics/threed/SWTJOGLProcessor" unless const_defined?(:SWTJOGLProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :GenericOperatingSystem, "org/allbinary/logic/system/os/GenericOperatingSystem" unless const_defined?(:GenericOperatingSystem, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :OperatingSystemFactory, "org/allbinary/logic/system/os/OperatingSystemFactory" unless const_defined?(:OperatingSystemFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :BaseScalable, "org/allbinary/graphics/displayable/BaseScalable" unless const_defined?(:BaseScalable, false)
autoload :ScalableListener, "org/allbinary/graphics/displayable/ScalableListener" unless const_defined?(:ScalableListener, false)

begin
    DisplayInfoSingleton.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

