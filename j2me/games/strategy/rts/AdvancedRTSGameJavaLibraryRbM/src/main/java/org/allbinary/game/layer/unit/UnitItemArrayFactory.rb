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

# require "javax/microedition/lcdui/Image"
# require "javax/microedition/lcdui/ImageItem"
require "org/allbinary/graphics/form/item/ItemArraySingletonFactoryInterface"

class UnitItemArrayFactory
    include ItemArraySingletonFactoryInterface
    attr_accessor :commonSeps, :basicColor, :resources

    def initialize_fields
        @commonSeps = CommonSeps.getInstance()
        @basicColor = BasicColorFactory.getInstance().WHITE
        @resources = nil
    end
    

    def initialize(resources)
        initialize_fields
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
    

    # throws Exception
    def createNamedFlagItem(flagResources, name, layerInterfaceFactoryInterface)
        _IMAGE_CACHE = GameFeatureImageCacheFactory.getInstance()
        image = _IMAGE_CACHE.getWithKey(flagResources.RESOURCE_ICON)
        item = LayerInterfaceFactoryImageItem.new(name, image, ImageItem::LAYOUT_DEFAULT, flagResources.NAME, @basicColor, [RTSLayerTextAnimation.new(RTSGameStrings.getInstance().DRAGGABLE, image)], layerInterfaceFactoryInterface)
        return item
    end
    

    # throws Exception
    def getItems()
        return UnitItemArrayFactory::ITEMS
    end
    

    def getResources()
        return @resources
    end
    

    def indexOf(basicGameResources)
        (@resources.length - 1).step(0, -(1)) do |index|
            if @resources[index] == basicGameResources
                return index
            end
        end
        return -1
    end
end

require "org/allbinary/game/layer/RTSGameStrings"
require "org/allbinary/game/layer/item/LayerInterfaceFactoryImageItem"
require "org/allbinary/game/layer/item/RTSLayerTextAnimation"
require "org/allbinary/game/layer/resources/BasicGameResources"
require "org/allbinary/game/layer/waypoint/FlagGameResources"
require "org/allbinary/graphics/form/item/ABCustomItem"
require "org/allbinary/image/GameFeatureImageCacheFactory"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/animation/Animation"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/form/item/CustomItemUtil"
require "org/allbinary/image/ImageCache"
require "org/allbinary/layer/LayerInterfaceFactoryInterface"

class UnitItemArrayFactory
    ITEMS = CustomItemUtil.getInstance().CUSTOM_ITEM_ARRAY
end

