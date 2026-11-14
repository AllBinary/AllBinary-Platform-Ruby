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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:INSTANCE, FeaturedResourceRelativeRelationshipFactory.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "FeaturedResourceRelativeRelationshipFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:INSTANCE].include?(name)
        end
        super
    end
end

autoload :PointFactory, "org/allbinary/graphics/PointFactory"
autoload :RelativeRelationship, "org/allbinary/graphics/RelativeRelationship"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :RelativeLayerRelationship, "org/allbinary/layer/relationship/RelativeLayerRelationship"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil"
autoload :ResourceRelativeRelationshipFactoryInterface, "org/allbinary/game/resource/ResourceRelativeRelationshipFactoryInterface"

begin
    FeaturedResourceRelativeRelationshipFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

