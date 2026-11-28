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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/game/layer/SelectionHudPaintable"

module ::Org; module Allbinary; module Game; module Layer

class RTSLayerHudPaintable < SelectionHudPaintable
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :weaponProperties, :rtsLayer, :costY, :costY1, :fontHeight

    def jfields_org_allbinary_game_layer_RTSLayerHudPaintable
        @weaponProperties = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().getArrayInstance()
        @rtsLayer = ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
        @costY = 0 unless instance_variable_defined?(:@costY)
        @costY1 = 0 unless instance_variable_defined?(:@costY1)
        @fontHeight = 0 unless instance_variable_defined?(:@fontHeight)
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        super()
        jfields_org_allbinary_game_layer_RTSLayerHudPaintable
    end
    

    def updateMeasurement(graphics)
        RTSLayerHudPaintable.superclass.java_super_method(:updateMeasurement, 1).bind(self).call(graphics)
        font = graphics.getFont()
        @fontHeight = font.getHeight()
        @costY1 = (@y + ((@weaponProperties.length + 1) * @fontHeight))
        if !::Org::Allbinary::AndroidUtil.isAndroid()
            @costY = @costY1
        else
            @costY = (@y + ((@weaponProperties.length + 2) * @fontHeight))
        end
    end
    java_overload :updateMeasurement, 1
    

    def updateSelectionInfo()
        self.setName(self.getRtsLayer().getName())
        partInterface = self.getRtsLayer().getPartInterfaceArray()[0]
        @weaponProperties = partInterface.getWeaponProperties().toStringArray()
        @myFontProcessor = @updateMyFontProcessor
    end
    java_overload :updateSelectionInfo, 0
    

    def paint(graphics)
        RTSLayerHudPaintable.superclass.java_super_method(:paint, 1).bind(self).call(graphics)
        size = @weaponProperties.length
        (0...size).each do |index|
            graphics.drawString(@weaponProperties[index], @textX, @y + ((index + 1) * @fontHeight), 0)
        end
    end
    java_overload :paint, 1
    

    def setRtsLayer(rtsLayer)
        @rtsLayer = rtsLayer
    end
    java_overload :setRtsLayer, 1
    

    def getRtsLayer()
        return @rtsLayer
    end
    java_overload :getRtsLayer, 0

    def self.instance()
        RTSLayerHudPaintable.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        RTSLayerHudPaintable.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = RTSLayerHudPaintable.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "RTSLayerHudPaintable"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; autoload :AndroidUtil, "org/allbinary/AndroidUtil" unless const_defined?(:AndroidUtil, false); end; end
module ::Org; module Allbinary; module Game; module Layer; module Special; autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" unless const_defined?(:CollidableDestroyableDamageableLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Part; module Weapon; autoload :BasicWeaponPart, "org/allbinary/game/part/weapon/BasicWeaponPart" unless const_defined?(:BasicWeaponPart, false); end; end; end; end; end
autoload :RTSLayer, "org/allbinary/game/layer/RTSLayer" unless const_defined?(:RTSLayer, false)

begin
    RTSLayerHudPaintable.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

