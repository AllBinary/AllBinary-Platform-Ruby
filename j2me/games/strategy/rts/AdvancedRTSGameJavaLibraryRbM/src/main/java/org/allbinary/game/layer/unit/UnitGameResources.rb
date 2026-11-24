# 
# AllBinary Open License Version 1 
# Copyright (c) 2006 AllBinary 
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
# package org.allbinary.game.layer.unit

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/game/layer/resources/BasicGameResources"

module ::Org; module Allbinary; module Game; module Layer; module Unit

class UnitGameResources < ::Org::Allbinary::Game::Layer::Resources::BasicGameResources
    attr_accessor :NAME, :RESOURCE_ICON_ANIMATION, :RESOURCE_ICON_BUILD, :RESOURCE_ICON, :ICON_SIZE

    def jfields_org_allbinary_game_layer_unit_UnitGameResources
        @NAME = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @RESOURCE_ICON_ANIMATION = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @RESOURCE_ICON_BUILD = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @RESOURCE_ICON = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @ICON_SIZE = "_64_by_64.png"
    end
    

    def initialize()
        super()
        jfields_org_allbinary_game_layer_unit_UnitGameResources
    end
    

    # throws Exception
    def append(_ROOT, sizeString)
        UnitGameResources.superclass.java_super_method(:append, 2).bind(self).call(_ROOT, sizeString)
        string = ::Org::Allbinary::Game::Layer::Resources::GameGraphicsResourceUtil.getInstance().getName()
        ::Org::Allbinary::Game::Layer::Resources::BasicGameResources.stringBuffer.delete(0, ::Org::Allbinary::Game::Layer::Resources::BasicGameResources.stringBuffer.length())
        ::Org::Allbinary::Game::Layer::Resources::BasicGameResources.stringBuffer.append(_ROOT)
        ::Org::Allbinary::Game::Layer::Resources::BasicGameResources.stringBuffer.append(UnitGameResources::DESTROY)
        ::Org::Allbinary::Game::Layer::Resources::BasicGameResources.stringBuffer.append(string)
        ::Org::Allbinary::Game::Layer::Resources::BasicGameResources.stringBuffer.append(sizeString)
        @RESOURCE_DESTROY = ::Org::Allbinary::Game::Layer::Resources::BasicGameResources.stringBuffer.to_s
        ::Org::Allbinary::Game::Layer::Resources::BasicGameResources.stringBuffer.delete(0, ::Org::Allbinary::Game::Layer::Resources::BasicGameResources.stringBuffer.length())
        ::Org::Allbinary::Game::Layer::Resources::BasicGameResources.stringBuffer.append(UnitGameResources::ICON)
        ::Org::Allbinary::Game::Layer::Resources::BasicGameResources.stringBuffer.append(_ROOT)
        @RESOURCE_ICON_ANIMATION = ::Org::Allbinary::Game::Layer::Resources::BasicGameResources.stringBuffer.to_s
        ::Org::Allbinary::Game::Layer::Resources::BasicGameResources.stringBuffer.delete(0, ::Org::Allbinary::Game::Layer::Resources::BasicGameResources.stringBuffer.length())
        ::Org::Allbinary::Game::Layer::Resources::BasicGameResources.stringBuffer.append(_ROOT)
        ::Org::Allbinary::Game::Layer::Resources::BasicGameResources.stringBuffer.append(UnitGameResources::ICON)
        ::Org::Allbinary::Game::Layer::Resources::BasicGameResources.stringBuffer.append(string)
        ::Org::Allbinary::Game::Layer::Resources::BasicGameResources.stringBuffer.append(@ICON_SIZE)
        @RESOURCE_ICON = ::Org::Allbinary::Game::Layer::Resources::BasicGameResources.stringBuffer.to_s
        ::Org::Allbinary::Game::Layer::Resources::BasicGameResources.stringBuffer.delete(0, ::Org::Allbinary::Game::Layer::Resources::BasicGameResources.stringBuffer.length())
        ::Org::Allbinary::Game::Layer::Resources::BasicGameResources.stringBuffer.append(_ROOT)
        ::Org::Allbinary::Game::Layer::Resources::BasicGameResources.stringBuffer.append(UnitGameResources::ICON_BUILD)
        ::Org::Allbinary::Game::Layer::Resources::BasicGameResources.stringBuffer.append(string)
        ::Org::Allbinary::Game::Layer::Resources::BasicGameResources.stringBuffer.append(@ICON_SIZE)
        @RESOURCE_ICON_BUILD = ::Org::Allbinary::Game::Layer::Resources::BasicGameResources.stringBuffer.to_s
    end
    java_overload :append, 2
    

    # throws Exception
    def getString()
        if ::Org::Allbinary::AndroidUtil.isAndroid()
            return ::Org::Allbinary::Game::Layer::Resources::GameGraphicsResourceUtil.getInstance().getStringForFeature(::Org::Allbinary::Game::Configuration::Feature::GraphicsFeatureFactory.getInstance().SPRITE_QUARTER_ROTATION_GRAPHICS)
        else
            return UnitGameResources.superclass.java_super_method(:getString, 0).bind(self).call()
        end
    end
    java_overload :getString, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:ICON, "_icon")
        const_set(:BUILD, "_build")
        const_set(:DESTROY, "_destroy")
        begin
            const_set(:ICON_BUILD, "_icon" + (UnitGameResources::BUILD).to_s)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "UnitGameResources"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:ICON, :BUILD, :DESTROY, :ICON_BUILD].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Layer; module Resources; autoload :GameGraphicsResourceUtil, "org/allbinary/game/layer/resources/GameGraphicsResourceUtil" unless const_defined?(:GameGraphicsResourceUtil, false); end; end; end; end; end
module ::Org; module Allbinary; autoload :AndroidUtil, "org/allbinary/AndroidUtil" unless const_defined?(:AndroidUtil, false); end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GraphicsFeatureFactory, "org/allbinary/game/configuration/feature/GraphicsFeatureFactory" unless const_defined?(:GraphicsFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

begin
    UnitGameResources.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

