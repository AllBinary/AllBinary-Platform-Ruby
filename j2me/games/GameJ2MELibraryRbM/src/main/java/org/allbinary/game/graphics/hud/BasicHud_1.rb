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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/font/UpdateMyFontInterface"

module ::Org; module Allbinary; module Game; module Graphics; module Hud

class BasicHud_1
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :logUtil, :commonStrings, :canvasStrings, :basicSetColorUtil, :displayInfo, :updateMyFontProcessor, :myFontProcessor, :location, :direction, :bufferZone, :hudGraphicsPosition, :x, :y, :basicColor, :color, :updateMaxWidth, :updateMaxHeight, :offsetY

    def jfields_org_allbinary_game_graphics_hud_BasicHud_1
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @canvasStrings = ::Org::Allbinary::Graphics::Displayable::CanvasStrings.getInstance()
        @basicSetColorUtil = ::Org::Allbinary::Graphics::Color::BasicColorSetUtil.getInstance()
        @displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        @updateMyFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @myFontProcessor = @updateMyFontProcessor
        @location = 0 unless instance_variable_defined?(:@location)
        @direction = 0 unless instance_variable_defined?(:@direction)
        @bufferZone = 0 unless instance_variable_defined?(:@bufferZone)
        @hudGraphicsPosition = HudGraphicsPosition::NULL_HUD_GRAPHICS_POSITION
        @x = 0 unless instance_variable_defined?(:@x)
        @y = 0 unless instance_variable_defined?(:@y)
        @basicColor = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().BLACK
        @color = nil unless instance_variable_defined?(:@color)
        @updateMaxWidth = 0 unless instance_variable_defined?(:@updateMaxWidth)
        @updateMaxHeight = 0 unless instance_variable_defined?(:@updateMaxHeight)
        @offsetY = 0 unless instance_variable_defined?(:@offsetY)
    end
    

    def initialize(location, direction, bufferZone, basicColor)
        jfields_org_allbinary_game_graphics_hud_BasicHud_1
        self.setLocation(location)
        self.setDirection(direction)
        self.setBufferZone(bufferZone)
        self.onDisplayChangeEvent(::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance().displayChangeEvent)
        self.setBasicColorP(basicColor)
        @color = basicColor.to_i
    end
    

    def updateMeasurement(graphics)
        begin
            @hudGraphicsPosition = self.getHudGraphicsPositionWH(@displayInfo.getLastWidth(), @displayInfo.getLastHeight(), @updateMaxWidth, @updateMaxHeight)
            @x = @hudGraphicsPosition.getPoint().getX()
            self.setY(@hudGraphicsPosition.getPoint().getY())
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, @canvasStrings.ON_DISPLAY_CHANGE_EVENT, e)
        end
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    def getLocation()
        return @location
    end
    java_overload :getLocation, 0
    

    def getDirection()
        return @direction
    end
    java_overload :getDirection, 0
    

    # throws Exception
    def getHudGraphicsPositionWH(width, height, maxWidth, maxHeight)
        x = 0
        y = 0
        anchor = 0
        basicHudFactory = BasicHudFactory.getInstance()
        if basicHudFactory.BOTTOMLEFT == self.getLocation()
            x = @bufferZone + 2
            y = height - maxHeight - @bufferZone
            anchor = ::Javax::Microedition::Lcdui::Graphics::BOTTOM & ::Javax::Microedition::Lcdui::Graphics::LEFT
        elsif basicHudFactory.BOTTOMRIGHT == self.getLocation()
            x = width - maxWidth
            y = height - maxHeight - @bufferZone
            anchor = ::Javax::Microedition::Lcdui::Graphics::BOTTOM & ::Javax::Microedition::Lcdui::Graphics::RIGHT
        elsif basicHudFactory.TOPLEFT == self.getLocation()
            x = @bufferZone + 2
            y = @bufferZone + 5
            anchor = ::Org::Allbinary::Graphics::Anchor::TOP_LEFT
        elsif basicHudFactory.TOPRIGHT == self.getLocation()
            x = width - maxWidth
            y = @bufferZone + 5
            anchor = ::Javax::Microedition::Lcdui::Graphics::TOP & ::Javax::Microedition::Lcdui::Graphics::RIGHT
        elsif basicHudFactory.TOPCENTER == self.getLocation()
            x = ((width - maxWidth) / 2)
            y = @bufferZone + 5
            anchor = ::Javax::Microedition::Lcdui::Graphics::TOP & ::Javax::Microedition::Lcdui::Graphics::HCENTER
        elsif basicHudFactory.BOTTOMCENTER == self.getLocation()
            x = ((width - maxWidth) / 2)
            y = height - maxHeight - @bufferZone
            anchor = ::Javax::Microedition::Lcdui::Graphics::BOTTOM & ::Javax::Microedition::Lcdui::Graphics::HCENTER
        elsif basicHudFactory.ABSOLUTE == self.getLocation()
            x = maxHeight
            y = maxWidth
            anchor = 0
        end
        return HudGraphicsPosition.new(self.getPoint(x, y), anchor)
    end
    java_overload :getHudGraphicsPositionWH, 4
    

    def onEvent(eventObject)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :onEvent, 1
    

    def onDisplayChangeEvent(displayChangeEvent)
        @myFontProcessor = @updateMyFontProcessor
    end
    java_overload :onDisplayChangeEvent, 1
    

    def getPoint(x, y)
        return ::Org::Allbinary::Graphics::PointFactory.getInstance().createXY(x, y)
    end
    java_overload :getPoint, 2
    

    def getBufferZone()
        return @bufferZone
    end
    java_overload :getBufferZone, 0
    

    def setBufferZone(bufferZone)
        @bufferZone = bufferZone
    end
    java_overload :setBufferZone, 1
    

    def setLocation(location)
        @location = location
    end
    java_overload :setLocation, 1
    

    def setDirection(direction)
        @direction = direction
    end
    java_overload :setDirection, 1
    

    def getHudGraphicsPosition()
        return @hudGraphicsPosition
    end
    java_overload :getHudGraphicsPosition, 0
    

    def getColor()
        return @color
    end
    java_overload :getColor, 0
    

    def getX()
        return @x
    end
    java_overload :getX, 0
    

    def setX(x)
        @x = x
    end
    java_overload :setX, 1
    

    def setBasicColorP(basicColor)
        @basicColor = basicColor
    end
    java_overload :setBasicColorP, 1
    

    def getBasicColorP()
        return @basicColor
    end
    java_overload :getBasicColorP, 0
    

    def setY(y)
        @y = y
    end
    java_overload :setY, 1
    

    def getY()
        return @y
    end
    java_overload :getY, 0
    

    def paintSSO(graphics, string, string2, offset)
        @myFontProcessor.process(graphics)
        @basicSetColorUtil.setBasicColorP(graphics, self.getBasicColorP())
        graphics.drawString(string, @x, self.getY(), @hudGraphicsPosition.getAnchor())
        graphics.drawString(string2, @x + offset, self.getY(), @hudGraphicsPosition.getAnchor())
    end
    java_overload :paintSSO, 4
    

    def paintSSOO(graphics, string, string2, offset, offset2)
        @myFontProcessor.process(graphics)
        graphics.setColor(self.getColor())
        graphics.drawString(string, @x + offset, self.getY(), @hudGraphicsPosition.getAnchor())
        graphics.drawString(string2, @x + offset2, self.getY(), @hudGraphicsPosition.getAnchor())
    end
    java_overload :paintSSOO, 5
    

    def paintDXY(graphics, charArray, offset, len, charArray2, offset2, len2, xOffset, xOffset2)
        @myFontProcessor.process(graphics)
        @basicSetColorUtil.setBasicColorP(graphics, self.getBasicColorP())
        y = self.getY()
        graphics.drawChars(charArray, offset, len, @x + xOffset, y, @hudGraphicsPosition.getAnchor())
        graphics.drawChars(charArray2, offset2, len2, @x + xOffset2, y, @hudGraphicsPosition.getAnchor())
    end
    java_overload :paintDXY, 9
    

    def paintDX(graphics, charArray, offset, len, charArray2, offset2, len2, xOffset)
        @myFontProcessor.process(graphics)
        @basicSetColorUtil.setBasicColorP(graphics, self.getBasicColorP())
        y = self.getY()
        graphics.drawChars(charArray, offset, len, @x, y, @hudGraphicsPosition.getAnchor())
        graphics.drawChars(charArray2, offset2, len2, @x + xOffset, y, @hudGraphicsPosition.getAnchor())
    end
    java_overload :paintDX, 8
    

    def paintOffsetAndLength(graphics, charArray, offset, len)
        @myFontProcessor.process(graphics)
        @basicSetColorUtil.setBasicColorP(graphics, self.getBasicColorP())
        y = self.getY()
        graphics.drawChars(charArray, offset, len, @x, y, @hudGraphicsPosition.getAnchor())
    end
    java_overload :paintOffsetAndLength, 4
    

    def paintString(graphics, string)
        @myFontProcessor.process(graphics)
        @basicSetColorUtil.setBasicColorP(graphics, self.getBasicColorP())
        y = self.getY() + @offsetY
        graphics.drawString(string, @x, y, @hudGraphicsPosition.getAnchor())
    end
    java_overload :paintString, 2
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Anchor, "org/allbinary/graphics/Anchor" unless const_defined?(:Anchor, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorSetUtil, "org/allbinary/graphics/color/BasicColorSetUtil" unless const_defined?(:BasicColorSetUtil, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :CanvasStrings, "org/allbinary/graphics/displayable/CanvasStrings" unless const_defined?(:CanvasStrings, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Event; autoload :DisplayChangeEvent, "org/allbinary/graphics/displayable/event/DisplayChangeEvent" unless const_defined?(:DisplayChangeEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :BasicHudFactory, "org/allbinary/game/graphics/hud/BasicHudFactory" unless const_defined?(:BasicHudFactory, false)
autoload :HudGraphicsPosition, "org/allbinary/game/graphics/hud/HudGraphicsPosition" unless const_defined?(:HudGraphicsPosition, false)

end; end; end; end; end

