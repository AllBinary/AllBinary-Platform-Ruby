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
end

require "org/allbinary/animation/resource/FeatureResourceAnimationInterfaceFactoryInterface"
require "org/allbinary/game/configuration/GameConfigurationCentral"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/RectangleFactory"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/animation/AnimationInterfaceFactoryInterface"
require "org/allbinary/animation/BasicAnimationInterfaceFactoryInterface"
require "org/allbinary/animation/NullAnimationFactory"
require "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface"

class FeaturedAnimationInterfaceFactoryInterfaceFactory
    INSTANCE = FeaturedAnimationInterfaceFactoryInterfaceFactory.new()
end

