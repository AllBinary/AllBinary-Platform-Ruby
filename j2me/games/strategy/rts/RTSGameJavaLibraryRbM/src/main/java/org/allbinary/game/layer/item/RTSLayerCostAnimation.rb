# 
# AllBinary Open License Version 1 
# Copyright (c) 2003 AllBinary 
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
# package org.allbinary.game.layer.item

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/Image"
require "org/allbinary/game/rts/technology/event/TechEventListenerInterface"
require "org/allbinary/animation/Animation"
require "org/allbinary/graphics/font/UpdateMyFontInterface"

class RTSLayerCostAnimation < Animation
    include TechEventListenerInterface
    include UpdateMyFontInterface
    attr_accessor :logUtil, :primitiveLongUtil, :DOLLAR, :image, :layerInterfaceFactoryInterface, :myFontProcessor, :costString, :len, :adjustedCostX, :fontHeight

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(10000)
        @DOLLAR = "$"
        @image = nil
        @layerInterfaceFactoryInterface = nil
        @myFontProcessor = UpdateMyFontProcessor.new(self)
        @costString = NullUtil.getInstance().NULL_CHAR_ARRAY
        @len = 0
        @adjustedCostX = 0
        @fontHeight = 0
    end
    

    def initialize(image, layerInterfaceFactoryInterface)
        super()
        initialize_fields
        @image = image
        @layerInterfaceFactoryInterface = layerInterfaceFactoryInterface
        self.update()
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @fontHeight = font.getHeight()
        @adjustedCostX = font.stringWidth(@DOLLAR)
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def onEvent(event)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    def onTechEvent(event)
        begin
            self.update()
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "onTechEvent", e)
        end
    end
    

    # throws Exception
    def update()
        @len = 0
        @costString = @primitiveLongUtil.getCharArray(@layerInterfaceFactoryInterface.getCost())
        @len = @primitiveLongUtil.getCurrentTotalDigits()
    end
    

    def paintXY(graphics, x, y)
        @myFontProcessor.process(graphics)
        super(graphics, x, y)
        adjustedCostY = @image.getHeight() - @fontHeight
        xa = x + 2
        graphics.drawString(@DOLLAR, xa, y + adjustedCostY, 0)
        graphics.drawChars(@costString, 0, @len, x + @adjustedCostX, y + adjustedCostY, 0)
    end
end

require "org/allbinary/game/layer/CostLayerInterfaceFactoryInterface"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/font/UpdateMyFontProcessor"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/math/PrimitiveLongUtil"
require "org/allbinary/logic/util/event/EventStrings"

