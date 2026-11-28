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
require "org/allbinary/graphics/form/item/ItemArraySingletonFactoryInterface"

module ::Org; module Allbinary; module Game; module Layer; module Unit

class UnitItemArrayFactory
    include ::Org::Allbinary::Graphics::Form::Item::ItemArraySingletonFactoryInterface
    attr_accessor :commonSeps, :basicColor, :resources

    def jfields_org_allbinary_game_layer_unit_UnitItemArrayFactory
        @commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        @basicColor = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE
        @resources = nil unless instance_variable_defined?(:@resources)
    end
    

    def initialize(resources)
        jfields_org_allbinary_game_layer_unit_UnitItemArrayFactory
        @resources = resources
    end
    

    # throws Exception
    def createFlagItem(flagResources, layerInterfaceFactoryInterface)
        name = flagResources.NAME
        index = (name.index(@commonSeps.SPACE) || -1)
        if index >= 0
            name = name[index..]
        end
        return self.createNamedFlagItem(flagResources, name, layerInterfaceFactoryInterface)
    end
    java_overload :createFlagItem, 2
    

    # throws Exception
    def createNamedFlagItem(flagResources, name, layerInterfaceFactoryInterface)
        _IMAGE_CACHE = ::Org::Allbinary::Image::GameFeatureImageCacheFactory.getInstance()
        image = _IMAGE_CACHE.getWithKey(flagResources.RESOURCE_ICON)
        item = ::Org::Allbinary::Game::Layer::Item::LayerInterfaceFactoryImageItem.new(name, image, ::Javax::Microedition::Lcdui::ImageItem::LAYOUT_DEFAULT, flagResources.NAME, @basicColor, [::Org::Allbinary::Game::Layer::Item::RTSLayerTextAnimation.new(::Org::Allbinary::Game::Layer::RTSGameStrings.getInstance().DRAGGABLE, image)], layerInterfaceFactoryInterface)
        return item
    end
    java_overload :createNamedFlagItem, 3
    

    # throws Exception
    def getItems()
        return ITEMS
    end
    java_overload :getItems, 0
    

    def getResources()
        return @resources
    end
    java_overload :getResources, 0
    

    def indexOf(basicGameResources)
        (@resources.length - 1).step(0, -(1)) do |index|
            if @resources[index] == basicGameResources
                return index
            end
        end
        return -1
    end
    java_overload :indexOf, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:ITEMS, ::Org::Allbinary::Graphics::Form::Item::CustomItemUtil.getInstance().CUSTOM_ITEM_ARRAY)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "UnitItemArrayFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:ITEMS].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :ImageItem, "javax/microedition/lcdui/ImageItem" unless const_defined?(:ImageItem, false); end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSGameStrings, "org/allbinary/game/layer/RTSGameStrings" unless const_defined?(:RTSGameStrings, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Item; autoload :LayerInterfaceFactoryImageItem, "org/allbinary/game/layer/item/LayerInterfaceFactoryImageItem" unless const_defined?(:LayerInterfaceFactoryImageItem, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Item; autoload :RTSLayerTextAnimation, "org/allbinary/game/layer/item/RTSLayerTextAnimation" unless const_defined?(:RTSLayerTextAnimation, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Resources; autoload :BasicGameResources, "org/allbinary/game/layer/resources/BasicGameResources" unless const_defined?(:BasicGameResources, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :FlagGameResources, "org/allbinary/game/layer/waypoint/FlagGameResources" unless const_defined?(:FlagGameResources, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem" unless const_defined?(:ABCustomItem, false); end; end; end; end; end
module ::Org; module Allbinary; module Image; autoload :GameFeatureImageCacheFactory, "org/allbinary/image/GameFeatureImageCacheFactory" unless const_defined?(:GameFeatureImageCacheFactory, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :CustomItemUtil, "org/allbinary/graphics/form/item/CustomItemUtil" unless const_defined?(:CustomItemUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Image; autoload :ImageCache, "org/allbinary/image/ImageCache" unless const_defined?(:ImageCache, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :LayerInterfaceFactoryInterface, "org/allbinary/layer/LayerInterfaceFactoryInterface" unless const_defined?(:LayerInterfaceFactoryInterface, false); end; end; end

begin
    UnitItemArrayFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

