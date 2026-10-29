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
# package org.allbinary.game.graphics.hud

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/font/UpdateMyFontInterface"

class BasicHud
    include UpdateMyFontInterface
    attr_accessor :logUtil, :commonStrings, :canvasStrings, :basicSetColorUtil, :displayInfo, :updateMyFontProcessor, :myFontProcessor, :location, :direction, :bufferZone, :bufferZoneY, :hudGraphicsPosition, :x, :y, :basicColor, :color, :updateMaxWidth, :updateMaxHeight, :offsetY

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @canvasStrings = CanvasStrings.getInstance()
        @basicSetColorUtil = BasicColorSetUtil.getInstance()
        @displayInfo = DisplayInfoSingleton.getInstance()
        @updateMyFontProcessor = UpdateMyFontProcessor.new(self)
        @myFontProcessor = @updateMyFontProcessor
        @location = 0
        @direction = 0
        @bufferZone = 0
        @bufferZoneY = 0
        @hudGraphicsPosition = HudGraphicsPosition::NULL_HUD_GRAPHICS_POSITION
        @x = 0
        @y = 0
        @basicColor = BasicColorFactory.getInstance().BLACK
        @color = nil
        @updateMaxWidth = 0
        @updateMaxHeight = 0
        @offsetY = 0
    end
    

    def initialize(location, direction, bufferZone, basicColor)
        initialize_fields
        self.setLocation(location)
        self.setDirection(direction)
        self.setBufferZone(bufferZone)
        self.onDisplayChangeEvent(DisplayInfoSingleton.getInstance().displayChangeEvent)
        self.setBasicColorP(basicColor)
        @color = basicColor.to_i
    end
    

    def updateMeasurement(graphics)
        begin
            @hudGraphicsPosition = self.getHudGraphicsPositionWH(@displayInfo.getLastWidth(), @displayInfo.getLastHeight(), @updateMaxWidth, @updateMaxHeight)
            @x = @hudGraphicsPosition.getPoint().getX()
            self.setY(@hudGraphicsPosition.getPoint().getY())
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, @canvasStrings.ON_DISPLAY_CHANGE_EVENT, e)
        end
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def getLocation()
        return @location
    end
    

    def getDirection()
        return @direction
    end
    

    # throws Exception
    def getHudGraphicsPositionWH(width, height, maxWidth, maxHeight)
        x = 0
        y = 0
        anchor = 0
        basicHudFactory = BasicHudFactory.getInstance()
        if basicHudFactory.BOTTOMLEFT == self.getLocation()
            x = @bufferZone + 2
            y = height - maxHeight - @bufferZone
            anchor = Graphics::BOTTOM & Graphics::LEFT
        elsif basicHudFactory.BOTTOMRIGHT == self.getLocation()
            x = width - maxWidth
            y = height - maxHeight - @bufferZone
            anchor = Graphics::BOTTOM & Graphics::RIGHT
        elsif basicHudFactory.TOPLEFT == self.getLocation()
            x = @bufferZone + 2
            y = @bufferZoneY
            anchor = Anchor::TOP_LEFT
        elsif basicHudFactory.TOPRIGHT == self.getLocation()
            x = width - maxWidth
            y = @bufferZoneY
            anchor = Graphics::TOP & Graphics::RIGHT
        elsif basicHudFactory.TOPCENTER == self.getLocation()
            x = ((width - maxWidth) / 2)
            y = @bufferZoneY
            anchor = Graphics::TOP & Graphics::HCENTER
        elsif basicHudFactory.BOTTOMCENTER == self.getLocation()
            x = ((width - maxWidth) / 2)
            y = height - maxHeight - @bufferZone
            anchor = Graphics::BOTTOM & Graphics::HCENTER
        elsif basicHudFactory.ABSOLUTE == self.getLocation()
            x = maxHeight
            y = maxWidth
            anchor = 0
        end
        return HudGraphicsPosition.new(self.getPoint(x, y), anchor)
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    def onDisplayChangeEvent(displayChangeEvent)
        @myFontProcessor = @updateMyFontProcessor
    end
    

    def getPoint(x, y)
        return PointFactory.getInstance().createXY(x, y)
    end
    

    def getBufferZone()
        return @bufferZone
    end
    

    def setBufferZone(bufferZone)
        @bufferZone = bufferZone
        if J2MEUtil.isHTML()
            @bufferZoneY = @bufferZone
        else
            @bufferZoneY = @bufferZone + 5
        end
    end
    

    def setLocation(location)
        @location = location
    end
    

    def setDirection(direction)
        @direction = direction
    end
    

    def getHudGraphicsPosition()
        return @hudGraphicsPosition
    end
    

    def getColor()
        return @color
    end
    

    def getX()
        return @x
    end
    

    def setX(x)
        @x = x
    end
    

    def setBasicColorP(basicColor)
        @basicColor = basicColor
    end
    

    def getBasicColorP()
        return @basicColor
    end
    

    def setY(y)
        @y = y
    end
    

    def getY()
        return @y
    end
    

    def paintSSO(graphics, string, string2, offset)
        @myFontProcessor.process(graphics)
        @basicSetColorUtil.setBasicColorP(graphics, self.getBasicColorP())
        graphics.drawString(string, @x, self.getY(), @hudGraphicsPosition.getAnchor())
        graphics.drawString(string2, @x + offset, self.getY(), @hudGraphicsPosition.getAnchor())
    end
    

    def paintSSOO(graphics, string, string2, offset, offset2)
        @myFontProcessor.process(graphics)
        graphics.setColor(self.getColor())
        graphics.drawString(string, @x + offset, self.getY(), @hudGraphicsPosition.getAnchor())
        graphics.drawString(string2, @x + offset2, self.getY(), @hudGraphicsPosition.getAnchor())
    end
    

    def paintDXY(graphics, charArray, offset, len, charArray2, offset2, len2, xOffset, xOffset2)
        @myFontProcessor.process(graphics)
        @basicSetColorUtil.setBasicColorP(graphics, self.getBasicColorP())
        y = self.getY()
        graphics.drawChars(charArray, offset, len, @x + xOffset, y, @hudGraphicsPosition.getAnchor())
        graphics.drawChars(charArray2, offset2, len2, @x + xOffset2, y, @hudGraphicsPosition.getAnchor())
    end
    

    def paintDX(graphics, charArray, offset, len, charArray2, offset2, len2, xOffset)
        @myFontProcessor.process(graphics)
        @basicSetColorUtil.setBasicColorP(graphics, self.getBasicColorP())
        y = self.getY()
        graphics.drawChars(charArray, offset, len, @x, y, @hudGraphicsPosition.getAnchor())
        graphics.drawChars(charArray2, offset2, len2, @x + xOffset, y, @hudGraphicsPosition.getAnchor())
    end
    

    def paintOffsetAndLength(graphics, charArray, offset, len)
        @myFontProcessor.process(graphics)
        @basicSetColorUtil.setBasicColorP(graphics, self.getBasicColorP())
        y = self.getY()
        graphics.drawChars(charArray, offset, len, @x, y, @hudGraphicsPosition.getAnchor())
    end
    

    def paintString(graphics, string)
        @myFontProcessor.process(graphics)
        @basicSetColorUtil.setBasicColorP(graphics, self.getBasicColorP())
        y = self.getY() + @offsetY
        graphics.drawString(string, @x, y, @hudGraphicsPosition.getAnchor())
    end
end

require "org/allbinary/J2MEUtil"
require "org/allbinary/graphics/Anchor"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/color/BasicColorSetUtil"
require "org/allbinary/graphics/displayable/CanvasStrings"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/displayable/event/DisplayChangeEvent"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/font/UpdateMyFontProcessor"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/game/graphics/hud/BasicHudFactory"
require "org/allbinary/game/graphics/hud/HudGraphicsPosition"

