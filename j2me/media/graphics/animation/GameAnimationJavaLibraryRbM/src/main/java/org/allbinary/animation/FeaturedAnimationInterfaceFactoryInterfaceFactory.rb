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

require "org/allbinary/game/resource/FeaturedResourceFactory"

class FeaturedAnimationInterfaceFactoryInterfaceFactory < FeaturedResourceFactory
    

    def initialize()
        super()
    end
    

    def self.getInstance()
        return FeaturedAnimationInterfaceFactoryInterfaceFactory::INSTANCE
    end
    

    # throws Exception
    def getRectangle(resource)
        return self.getRectangleXY(resource, 0, 0)
    end
    

    # throws Exception
    def getRectangleXY(resource, x, y)
        pointFactory = PointFactory.getInstance()
        list = self.getList()
        scale = GameConfigurationCentral.getInstance().SCALE.getValue().to_i
        size = self.getList().size()
        (0...size).each do |index|
            featureInterface = list.objectArray[index]
            if featureInterface.isFeature()
                rectangle = featureInterface.getRectangle(resource)
                if rectangle != RectangleFactory::SINGLETON
                    return Rectangle.new(pointFactory.createXY(x, y), ((rectangle.getWidth() * scale) >> 1), ((rectangle.getHeight() * scale) >> 1))
                end
            end
        end
        raise StandardError.new(StringMaker.new().append("No rectangle available for current feature selection or Resource: ").append(resource).to_s)
    end
    

    # throws Exception
    def getProcedural(resource)
        return self.getBasicAnimationInterfaceFactoryInstance(resource)
    end
    

    # throws Exception
    def get(resource)
        return self.getBasicAnimationInterfaceFactoryInstance(resource)
    end
    

    # throws Exception
    def getBasicAnimationInterfaceFactoryInstance(resource)
        list = self.getList()
        resourceTypeAvailableList = BasicArrayListD.new()
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
            stringBuffer = StringMaker.new()
            stringBuffer.append(_NO_ANIMATION_AVAILABLE_FROM)
            stringBuffer.appendint(resourceTypeAvailableList.size())
            stringBuffer.append(CommonSeps.getInstance().FORWARD_SLASH)
            stringBuffer.appendint(size)
            stringBuffer.append(_FOR_FACTORIES)
            size2 = resourceTypeAvailableList.size()
            (0...size2).each do |index|
                stringBuffer.append(resourceTypeAvailableList.get(index).to_s)
                stringBuffer.append(CommonSeps.getInstance().COMMA_SEP)
            end
            stringBuffer.append(_FOR_RESOURCE)
            stringBuffer.append(resource)
            (0...size).each do |index|
                stringBuffer.append(CommonSeps.getInstance().NEW_LINE)
                featureInterface = list.objectArray[index]
                if featureInterface.isFeature()
                    stringBuffer.append(StringUtil.getInstance().toString(featureInterface))
                    stringBuffer.append(_HAS_KEY)
                    stringBuffer.appendint(featureInterface.getHashtable().size())
                    stringBuffer.append(_RESOURCES_LABEL)
                end
            end
            raise StandardError.new(stringBuffer.to_s)
        else
            stringBuffer = StringMaker.new()
            (0...size).each do |index|
                featureInterface = list.objectArray[index]
                stringBuffer.append(featureInterface.to_s)
                stringBuffer.append(CommonSeps.getInstance().SPACE)
            end
            result = stringBuffer.to_s
            stringBuffer.delete(0, stringBuffer.length())
            raise StandardError.new(stringBuffer.append("No feature resource type available for Resource: ").append(resource).append(" Resource Factories Available: ").append(result).to_s)
        end
    end

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

autoload :FeatureResourceAnimationInterfaceFactoryInterface, "org/allbinary/animation/resource/FeatureResourceAnimationInterfaceFactoryInterface"
autoload :GameConfigurationCentral, "org/allbinary/game/configuration/GameConfigurationCentral"
autoload :PointFactory, "org/allbinary/graphics/PointFactory"
autoload :Rectangle, "org/allbinary/graphics/Rectangle"
autoload :RectangleFactory, "org/allbinary/graphics/RectangleFactory"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :AnimationInterfaceFactoryInterface, "org/allbinary/animation/AnimationInterfaceFactoryInterface"
autoload :BasicAnimationInterfaceFactoryInterface, "org/allbinary/animation/BasicAnimationInterfaceFactoryInterface"
autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory"
autoload :ProceduralAnimationInterfaceFactoryInterface, "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface"

begin
    FeaturedAnimationInterfaceFactoryInterfaceFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

