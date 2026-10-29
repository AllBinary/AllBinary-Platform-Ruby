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
# package org.allbinary.game.layer

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/game/layer/SelectionHudPaintable"

class RTSLayerHudPaintable < SelectionHudPaintable
    include UpdateMyFontInterface
    attr_accessor :weaponProperties, :rtsLayer, :costY, :costY1, :fontHeight

    def initialize_fields
        @weaponProperties = StringUtil.getInstance().getArrayInstance()
        @rtsLayer = CollidableDestroyableDamageableLayer.getNullInstance()
        @costY = 0
        @costY1 = 0
        @fontHeight = 0
    end
    

    def self.getInstance()
        return RTSLayerHudPaintable.instance
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def updateMeasurement(graphics)
        super(graphics)
        font = graphics.getFont()
        @fontHeight = font.getHeight()
        @costY1 = (@y + ((@weaponProperties.length + 1) * @fontHeight))
        if !AndroidUtil.isAndroid()
            @costY = @costY1
        else
            @costY = (@y + ((@weaponProperties.length + 2) * @fontHeight))
        end
    end
    

    def updateSelectionInfo()
        self.setName(self.getRtsLayer().getName())
        partInterface = self.getRtsLayer().getPartInterfaceArray()[0]
        @weaponProperties = partInterface.getWeaponProperties().toStringArray()
        @myFontProcessor = @updateMyFontProcessor
    end
    

    def paint(graphics)
        super(graphics)
        size = @weaponProperties.length
        (0...size).each do |index|
            graphics.drawString(@weaponProperties[index], @textX, @y + ((index + 1) * @fontHeight), 0)
        end
    end
    

    def setRtsLayer(rtsLayer)
        @rtsLayer = rtsLayer
    end
    

    def getRtsLayer()
        return @rtsLayer
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/AndroidUtil"
require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
require "org/allbinary/game/part/weapon/BasicWeaponPart"
require "org/allbinary/game/layer/RTSLayer"

class RTSLayerHudPaintable
    @@instance = RTSLayerHudPaintable.new()
end

