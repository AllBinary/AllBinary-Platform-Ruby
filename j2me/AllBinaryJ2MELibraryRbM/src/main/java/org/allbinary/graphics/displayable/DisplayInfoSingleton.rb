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

# require "javax/microedition/lcdui/Displayable"

class DisplayInfoSingleton
    attr_accessor :logUtil, :commonLabels, :commonSeps, :commonStrings, :ORIENTATION, :ADJUSTING_FOR_SCALING_IN_PORTRAIT, :ADJUSTING_FOR_SCALING_IN_LANDSCAPE, :last, :lastHalf, :full, :top, :left, :xOffset, :yOffset, :scaleLargestTo, :WIDTH, :HEIGHT, :CUSTOM_WIDTH, :CUSTOM_HEIGHT, :scalableListener, :displayRatio, :ratio, :SET_LAST_SIZE_METHOD_NAME, :FULL_WIDTH, :FULL_HEIGHT, :LAST_WIDTH, :LAST_HEIGHT, :PORTRAIT, :LANDSCAPE, :displayChangeEvent, :FIRE_METHOD_NAME, :REASON, :UPDATE_FROM_ORIENTATION_CHANGE, :list, :DISPLAY_INFO, :FULL, :LAST, :LAST_HALF

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonLabels = CommonLabels.getInstance()
        @commonSeps = CommonSeps.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @ORIENTATION = "ORIENTATION"
        @ADJUSTING_FOR_SCALING_IN_PORTRAIT = "Adjusting for Scaling in portrait display ratio: "
        @ADJUSTING_FOR_SCALING_IN_LANDSCAPE = "Adjusting for Scaling in landscape display ratio: "
        @last = Array.new(4, 0)
        @lastHalf = Array.new(4, 0)
        @full = Array.new(4, 0)
        @top = 0
        @left = 0
        @xOffset = 0
        @yOffset = 0
        @scaleLargestTo = 0.0
        @WIDTH = 0
        @HEIGHT = 1
        @CUSTOM_WIDTH = 2
        @CUSTOM_HEIGHT = 3
        @scalableListener = BaseScalable.new()
        @displayRatio = 0.0
        @ratio = 1.0
        @SET_LAST_SIZE_METHOD_NAME = "setLastSize"
        @FULL_WIDTH = " FullWidth: "
        @FULL_HEIGHT = " FullHeight: "
        @LAST_WIDTH = "LastWidth: "
        @LAST_HEIGHT = " LastHeight: "
        @PORTRAIT = "Portrait"
        @LANDSCAPE = "Landscape"
        @displayChangeEvent = DisplayChangeEvent.new(self)
        @FIRE_METHOD_NAME = "fire"
        @REASON = "reason: "
        @UPDATE_FROM_ORIENTATION_CHANGE = "Updating from Orientation Change "
        @list = BasicArrayListD.new()
        @DISPLAY_INFO = "Display Info: "
        @FULL = "full"
        @LAST = "last"
        @LAST_HALF = "lastHalf"
    end
    

    def self.getInstance()
        return DisplayInfoSingleton::SINGLETON
    end
    

    def initialize()
        initialize_fields
        size = @last.length
        (0...size).each do |index|
            @last[index] = 0
            @lastHalf[index] = 0
            @full[index] = 0
        end
        if AndroidUtil.isAndroid()
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
        stringMaker = StringMaker.new()
        @logUtil.putF(stringMaker.append(CommonLabels.getInstance().START_LABEL).append(reason).to_s, self, @SET_LAST_SIZE_METHOD_NAME)
        aFullWidth = aLastWidth
        aFullHeight = aLastHeight
        stringMaker.delete(0, stringMaker.length())
        @logUtil.putF(stringMaker.append(@FULL_WIDTH).appendint(aFullWidth).append(@FULL_HEIGHT).appendint(aFullHeight).append(self.to_s).to_s, self, @SET_LAST_SIZE_METHOD_NAME)
        operatingSystemInterface = OperatingSystemFactory.getInstance().getOperatingSystemInstance()
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
        SWTJOGLProcessor.getInstance().setCustom(aLastWidth, aLastHeight, @ratio)
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
        stringMaker = StringMaker.new()
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
            PreLogUtil.putOE(@commonStrings.EXCEPTION, self, @FIRE_METHOD_NAME, e)
        end
    end
    

    def processForced()
        begin
            swtJOGLProcessor = SWTJOGLProcessor.getInstance()
            swtJOGLProcessor.clear()
            DisplayChangeEventHandler.getInstance().fireEvent(@displayChangeEvent)
            LastDisplayChangeEventHandler.getInstance().fireEvent(@displayChangeEvent)
            swtJOGLProcessor.onSurfaceChanged()
        rescue StandardError => e
            PreLogUtil.putOE(@commonStrings.EXCEPTION, self, @FIRE_METHOD_NAME, e)
        end
    end
    

    def update(displayable, reason)
        aLastWidth = displayable.getWidth()
        aLastHeight = displayable.getHeight()
        aFullWidth = aLastWidth
        aFullHeight = aLastHeight
        stringMaker = StringMaker.new()
        @logUtil.putF(stringMaker.append(CommonLabels.getInstance().START_LABEL).append(reason).append(@LAST_WIDTH).appendint(aLastWidth).append(@LAST_HEIGHT).appendint(aLastHeight).append(@commonSeps.SPACE).append(self.to_s).to_s, self, @commonStrings.UPDATE)
        if aLastWidth > 0 && aLastHeight > 0
            features = Features.getInstance()
            openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
            if !features.isDefault(openGLFeatureFactory.OPENGL) || @last[@WIDTH] != aLastWidth || @last[@HEIGHT] != aLastHeight
                stringMaker.delete(0, stringMaker.length())
                @logUtil.putF(stringMaker.append(@UPDATE_FROM_ORIENTATION_CHANGE).to_s, self, @commonStrings.UPDATE)
                operatingSystemInterface = OperatingSystemFactory.getInstance().getOperatingSystemInstance()
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
                SWTJOGLProcessor.getInstance().setCustom(aLastWidth, aLastHeight, @ratio)
                self.add(@commonStrings.UPDATE)
            end
        end
    end
    

    def toString()
        stringBuffer = StringMaker.new()
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
end

require "org/allbinary/AndroidUtil"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/graphics/displayable/event/DisplayChangeEvent"
require "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler"
require "org/allbinary/graphics/displayable/event/LastDisplayChangeEventHandler"
require "org/allbinary/graphics/opengles/OpenGLFeatureFactory"
require "org/allbinary/graphics/threed/SWTJOGLProcessor"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/os/GenericOperatingSystem"
require "org/allbinary/logic/system/os/OperatingSystemFactory"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/graphics/displayable/BaseScalable"
require "org/allbinary/graphics/displayable/ScalableListener"

class DisplayInfoSingleton
    SINGLETON = DisplayInfoSingleton.new()
end

