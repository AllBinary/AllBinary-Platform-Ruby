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


module ::Org; module Allbinary; module Game; module Ag; module Layer; module Hud; module Basic

class NumberStringHudFactory
    attr_accessor :NULL_NUMBER_STRING_HUD

    def jfields_org_allbinary_game_ag_layer_hud_basic_NumberStringHudFactory
        @NULL_NUMBER_STRING_HUD = self.createHud()
    end

    def initialize
        jfields_org_allbinary_game_ag_layer_hud_basic_NumberStringHudFactory
    end
    

    def self.getInstance()
        if NumberStringHudFactory.instance == ::Org::Allbinary::Logic::NullUtil.getInstance()
            NumberStringHudFactory.instance = NumberStringHudFactory.new()
        end
        return NumberStringHudFactory.instance
    end
    

    def createHud()
        begin
            return NumberStringHud.new(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, 9, ::Org::Allbinary::Game::Graphics::Hud::BasicHudFactory.getInstance().ABSOLUTE, 1, 0, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().NULL_COLOR)
        rescue StandardError => e
            logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
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
            @@instance = ::Org::Allbinary::Logic::NullUtil.getInstance()
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

module ::Org; module Allbinary; module Game; module Graphics; module Hud; autoload :BasicHudFactory, "org/allbinary/game/graphics/hud/BasicHudFactory" unless const_defined?(:BasicHudFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :NumberStringHud, "org/allbinary/game/ag/layer/hud/basic/NumberStringHud" unless const_defined?(:NumberStringHud, false)

begin
    NumberStringHudFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

