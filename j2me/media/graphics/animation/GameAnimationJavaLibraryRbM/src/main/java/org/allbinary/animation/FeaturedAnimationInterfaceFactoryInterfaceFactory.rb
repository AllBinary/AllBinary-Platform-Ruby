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
# package org.allbinary.animation

require "java/lang/JavaOverload"
require "org/allbinary/game/resource/FeaturedResourceFactory"

module ::Org; module Allbinary; module Animation

class FeaturedAnimationInterfaceFactoryInterfaceFactory < ::Org::Allbinary::Game::Resource::FeaturedResourceFactory
    

    def initialize()
        super()
    end
    

    def self.getInstance()
        return INSTANCE
    end
    

    # throws Exception
    def getRectangle(resource)
        return self.getRectangleXY(resource, 0, 0)
    end
    java_overload :getRectangle, 1
    

    # throws Exception
    def getRectangleXY(resource, x, y)
        pointFactory = ::Org::Allbinary::Graphics::PointFactory.getInstance()
        list = self.getList()
        scale = ::Org::Allbinary::Game::Configuration::GameConfigurationCentral.getInstance().SCALE.getValue().to_i
        size = self.getList().size()
        (0...size).each do |index|
            featureInterface = list.objectArray[index]
            if featureInterface.isFeature()
                rectangle = featureInterface.getRectangle(resource)
                if rectangle != ::Org::Allbinary::Graphics::RectangleFactory::SINGLETON
                    return ::Org::Allbinary::Graphics::Rectangle.new(pointFactory.createXY(x, y), ((rectangle.getWidth() * scale) >> 1), ((rectangle.getHeight() * scale) >> 1))
                end
            end
        end
        raise StandardError.new(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("No rectangle available for current feature selection or Resource: ").append(resource).to_s)
    end
    java_overload :getRectangleXY, 3
    

    # throws Exception
    def getProcedural(resource)
        return self.getBasicAnimationInterfaceFactoryInstance(resource)
    end
    java_overload :getProcedural, 1
    

    # throws Exception
    def get(resource)
        return self.getBasicAnimationInterfaceFactoryInstance(resource)
    end
    java_overload :get, 1
    

    # throws Exception
    def getBasicAnimationInterfaceFactoryInstance(resource)
        list = self.getList()
        resourceTypeAvailableList = ::Org::Allbinary::Util::BasicArrayListD.new()
        size = self.getList().size()
        featureInterface = nil
        animationInterfaceFactoryInterface = nil
        (0...size).each do |index|
            featureInterface = list.objectArray[index]
            if featureInterface.isFeature()
                resourceTypeAvailableList.add(featureInterface)
                animationInterfaceFactoryInterface = featureInterface.getBasicAnimationInterfaceFactoryInstance(resource)
                if animationInterfaceFactoryInterface != NullAnimationFactory::NULL_NOT_FOR_USE_ANIMATION_FACTORY
                    return animationInterfaceFactoryInterface
                end
            end
        end
        if resourceTypeAvailableList.size() > 0
            _NO_ANIMATION_AVAILABLE_FROM = "No animation available from: "
            _FOR_FACTORIES = " factories: "
            _FOR_RESOURCE = " for Resource: "
            _HAS_KEY = " has: "
            _RESOURCES_LABEL = " resources "
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append(_NO_ANIMATION_AVAILABLE_FROM)
            stringBuffer.appendint(resourceTypeAvailableList.size())
            stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().FORWARD_SLASH)
            stringBuffer.appendint(size)
            stringBuffer.append(_FOR_FACTORIES)
            size2 = resourceTypeAvailableList.size()
            (0...size2).each do |index|
                stringBuffer.append(resourceTypeAvailableList.get(index).to_s)
                stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().COMMA_SEP)
            end
            stringBuffer.append(_FOR_RESOURCE)
            stringBuffer.append(resource)
            (0...size).each do |index|
                stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE)
                featureInterface = list.objectArray[index]
                if featureInterface.isFeature()
                    stringBuffer.append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(featureInterface))
                    stringBuffer.append(_HAS_KEY)
                    stringBuffer.appendint(featureInterface.getHashtable().size())
                    stringBuffer.append(_RESOURCES_LABEL)
                end
            end
            raise StandardError.new(stringBuffer.to_s)
        else
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            (0...size).each do |index|
                featureInterface = list.objectArray[index]
                stringBuffer.append(featureInterface.to_s)
                stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
            end
            result = stringBuffer.to_s
            stringBuffer.delete(0, stringBuffer.length())
            raise StandardError.new(stringBuffer.append("No feature resource type available for Resource: ").append(resource).append(" Resource Factories Available: ").append(result).to_s)
        end
    end
    java_overload :getBasicAnimationInterfaceFactoryInstance, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:INSTANCE, FeaturedAnimationInterfaceFactoryInterfaceFactory.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "FeaturedAnimationInterfaceFactoryInterfaceFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:INSTANCE].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Animation; module Resource; autoload :FeatureResourceAnimationInterfaceFactoryInterface, "org/allbinary/animation/resource/FeatureResourceAnimationInterfaceFactoryInterface" unless const_defined?(:FeatureResourceAnimationInterfaceFactoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :GameConfigurationCentral, "org/allbinary/game/configuration/GameConfigurationCentral" unless const_defined?(:GameConfigurationCentral, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :RectangleFactory, "org/allbinary/graphics/RectangleFactory" unless const_defined?(:RectangleFactory, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :AnimationInterfaceFactoryInterface, "org/allbinary/animation/AnimationInterfaceFactoryInterface" unless const_defined?(:AnimationInterfaceFactoryInterface, false)
autoload :BasicAnimationInterfaceFactoryInterface, "org/allbinary/animation/BasicAnimationInterfaceFactoryInterface" unless const_defined?(:BasicAnimationInterfaceFactoryInterface, false)
autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory" unless const_defined?(:NullAnimationFactory, false)
autoload :ProceduralAnimationInterfaceFactoryInterface, "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface" unless const_defined?(:ProceduralAnimationInterfaceFactoryInterface, false)

begin
    FeaturedAnimationInterfaceFactoryInterfaceFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

