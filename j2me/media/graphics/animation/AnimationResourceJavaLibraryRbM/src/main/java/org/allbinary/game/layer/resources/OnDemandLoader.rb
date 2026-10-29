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
# package org.allbinary.game.layer.resources


class OnDemandLoader
    attr_accessor :onDemandResourcesFactory, :gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, :resourceAnimationInterfaceFactoryInterfaceFactory

    def initialize_fields
        @onDemandResourcesFactory = nil
        @gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory = nil
        @resourceAnimationInterfaceFactoryInterfaceFactory = nil
    end
    

    def initialize(onDemandResourcesFactory, gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, resourceAnimationInterfaceFactoryInterfaceFactory)
        initialize_fields
        @onDemandResourcesFactory = onDemandResourcesFactory
        @gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory = gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory
        @resourceAnimationInterfaceFactoryInterfaceFactory = resourceAnimationInterfaceFactoryInterfaceFactory
    end
    

    # throws Exception
    def init(imageCache, level, loadingString)
        resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
        if Features.getInstance().isFeature(MainFeatureFactory.getInstance().LOAD_ALL)
            if @resourceAnimationInterfaceFactoryInterfaceFactory.isInitialized()
                return
            end
            self.initAll(imageCache, loadingString)
        elsif level != resourceLoadingLevelFactory.LOAD_ALL.getLevel()
            layerPlacementInterfaceBasicArrayListFactoryInterface = @gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.getInstance(level)
            self.initLevel(layerPlacementInterfaceBasicArrayListFactoryInterface, imageCache, level, loadingString)
        end
    end
    

    # throws Exception
    def initAll(imageCache, loadingString)
        index = 0
        portion = 120
        onDemandResources = nil
        onDemandIndex = @onDemandResourcesFactory.size()
        while (onDemandIndex -= 1) >= 0
            onDemandResources = @onDemandResourcesFactory.remove(onDemandIndex)
            if onDemandResources != OnDemandResources::NULL_ON_DEMAND_RESOURCES
                index = onDemandResources.initAt(imageCache, @resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index)
            end
        end
    end
    

    # throws Exception
    def initLevel(layerPlacementInterfaceBasicArrayListFactoryInterface, imageCache, level, loadingString)
        commonStrings = CommonStrings.getInstance()
        portion = 120
        index = 0
        onDemandArray = layerPlacementInterfaceBasicArrayListFactoryInterface.getOnDemandResources()
        PreLogUtil.put(StringMaker.new().append(commonStrings.START).appendint(onDemandArray.length).to_s, self, "initLevel")
        onDemandResources = nil
        onDemandIndex = onDemandArray.length
        while (onDemandIndex -= 1) >= 0
            onDemandResources = @onDemandResourcesFactory.remove(onDemandArray[onDemandIndex])
            if onDemandResources != OnDemandResources::NULL_ON_DEMAND_RESOURCES
                index = onDemandResources.initAt(imageCache, @resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index)
            end
        end
    end
end

require "org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/MainFeatureFactory"
require "org/allbinary/game/layer/GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory"
require "org/allbinary/game/layer/LayerPlacementInterfaceBasicArrayListFactoryInterface"
require "org/allbinary/game/resource/ResourceLoadingLevelFactory"
require "org/allbinary/image/ImageCache"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/game/layer/resources/OnDemandResources"
require "org/allbinary/game/layer/resources/OnDemandResourcesFactory"

