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


module ::Org; module Allbinary; module Game; module Layer; module Resources

class OnDemandLoader
    attr_accessor :onDemandResourcesFactory, :gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, :resourceAnimationInterfaceFactoryInterfaceFactory

    def jfields_org_allbinary_game_layer_resources_OnDemandLoader
        @onDemandResourcesFactory = nil unless instance_variable_defined?(:@onDemandResourcesFactory)
        @gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory = nil unless instance_variable_defined?(:@gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory)
        @resourceAnimationInterfaceFactoryInterfaceFactory = nil unless instance_variable_defined?(:@resourceAnimationInterfaceFactoryInterfaceFactory)
    end
    

    def initialize(onDemandResourcesFactory, gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, resourceAnimationInterfaceFactoryInterfaceFactory)
        jfields_org_allbinary_game_layer_resources_OnDemandLoader
        @onDemandResourcesFactory = onDemandResourcesFactory
        @gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory = gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory
        @resourceAnimationInterfaceFactoryInterfaceFactory = resourceAnimationInterfaceFactoryInterfaceFactory
    end
    

    # throws Exception
    def init(imageCache, level, loadingString)
        resourceLoadingLevelFactory = ::Org::Allbinary::Game::Resource::ResourceLoadingLevelFactory.getInstance()
        if ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isFeature(::Org::Allbinary::Game::Configuration::Feature::MainFeatureFactory.getInstance().LOAD_ALL)
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
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        portion = 120
        index = 0
        onDemandArray = layerPlacementInterfaceBasicArrayListFactoryInterface.getOnDemandResources()
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(commonStrings.START).appendint(onDemandArray.length).to_s, self, "initLevel")
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

module ::Org; module Allbinary; module Animation; module Resource; autoload :BaseResourceAnimationInterfaceFactoryInterfaceFactory, "org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory" unless const_defined?(:BaseResourceAnimationInterfaceFactoryInterfaceFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :MainFeatureFactory, "org/allbinary/game/configuration/feature/MainFeatureFactory" unless const_defined?(:MainFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, "org/allbinary/game/layer/GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory" unless const_defined?(:GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :LayerPlacementInterfaceBasicArrayListFactoryInterface, "org/allbinary/game/layer/LayerPlacementInterfaceBasicArrayListFactoryInterface" unless const_defined?(:LayerPlacementInterfaceBasicArrayListFactoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Resource; autoload :ResourceLoadingLevelFactory, "org/allbinary/game/resource/ResourceLoadingLevelFactory" unless const_defined?(:ResourceLoadingLevelFactory, false); end; end; end; end
module ::Org; module Allbinary; module Image; autoload :ImageCache, "org/allbinary/image/ImageCache" unless const_defined?(:ImageCache, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :OnDemandResources, "org/allbinary/game/layer/resources/OnDemandResources" unless const_defined?(:OnDemandResources, false)
autoload :OnDemandResourcesFactory, "org/allbinary/game/layer/resources/OnDemandResourcesFactory" unless const_defined?(:OnDemandResourcesFactory, false)

end; end; end; end; end

