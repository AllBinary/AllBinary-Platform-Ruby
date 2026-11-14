# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.game.ag.layer.hud.basic


class NumberStringHudFactory
    attr_accessor :NULL_NUMBER_STRING_HUD

    def initialize_fields
        @NULL_NUMBER_STRING_HUD = self.createHud()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        if NumberStringHudFactory.instance == NullUtil.getInstance()
            NumberStringHudFactory.instance = NumberStringHudFactory.new()
        end
        return NumberStringHudFactory.instance
    end
    

    def createHud()
        begin
            return NumberStringHud.new(StringUtil.getInstance().EMPTY_STRING, 9, BasicHudFactory.getInstance().ABSOLUTE, 1, 0, BasicColorFactory.getInstance().NULL_COLOR)
        rescue StandardError => e
            logUtil = LogUtil.getInstance()
            commonStrings = CommonStrings.getInstance()
            logUtil.put(commonStrings.EXCEPTION, self, commonStrings.CONSTRUCTOR, e)
            raise RuntimeError.new()
        end
    end

    def self.instance()
        NumberStringHudFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        NumberStringHudFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = NullUtil.getInstance()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NumberStringHudFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :BasicHudFactory, "org/allbinary/game/graphics/hud/BasicHudFactory"
autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :NumberStringHud, "org/allbinary/game/ag/layer/hud/basic/NumberStringHud"

begin
    NumberStringHudFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

