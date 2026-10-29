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
# package org.allbinary.game.resource

require "org/allbinary/game/resource/FeaturedResourceFactory"

class FeaturedResourceRelativeRelationshipFactory < FeaturedResourceFactory
    attr_accessor :basicArrayListUtil

    def initialize_fields
        @basicArrayListUtil = BasicArrayListUtil.getInstance()
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def self.getInstance()
        return FeaturedResourceRelativeRelationshipFactory::INSTANCE
    end
    

    # throws Exception
    def getRelativeRelationshipList(resource, layer)
        featureReleaseList = self.getList()
        size = self.getList().size()
        (0...size).each do |index|
            featureInterface = featureReleaseList.objectArray[index]
            if featureInterface.isFeature()
                list = featureInterface.getResourceRelativeRelationshipList(resource)
                if list != @basicArrayListUtil.getImmutableInstance()
                    return self.duplicate(list, layer)
                end
            end
        end
        raise StandardError.new(StringMaker.new().append("Not available for current feature selection or Resource: ").append(resource).to_s)
    end
    

    # throws Exception
    def duplicate(list, layer)
        pointFactory = PointFactory.getInstance()
        newList = BasicArrayListD.new()
        size = list.size()
        (0...size).each do |index|
            relativeRelationship = list.objectArray[index]
            newList.add(RelativeLayerRelationship.new(layer, pointFactory.createXY(relativeRelationship.getX(), relativeRelationship.getY()), BasicArrayListUtil.getInstance().getImmutableInstance()))
        end
        return newList
    end
end

require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/RelativeRelationship"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/relationship/RelativeLayerRelationship"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/util/BasicArrayListUtil"
require "org/allbinary/game/resource/ResourceRelativeRelationshipFactoryInterface"

class FeaturedResourceRelativeRelationshipFactory
    INSTANCE = FeaturedResourceRelativeRelationshipFactory.new()
end

