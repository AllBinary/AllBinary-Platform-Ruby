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

require "java/lang/JavaOverload"
require "org/allbinary/game/resource/FeaturedResourceFactory"

module ::Org; module Allbinary; module Game; module Resource

class FeaturedResourceRelativeRelationshipFactory < FeaturedResourceFactory
    attr_accessor :basicArrayListUtil

    def jfields_org_allbinary_game_resource_FeaturedResourceRelativeRelationshipFactory
        @basicArrayListUtil = ::Org::Allbinary::Util::BasicArrayListUtil.getInstance()
    end
    

    def initialize()
        super()
        jfields_org_allbinary_game_resource_FeaturedResourceRelativeRelationshipFactory
    end
    

    def self.getInstance()
        return INSTANCE
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
        raise StandardError.new(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Not available for current feature selection or Resource: ").append(resource).to_s)
    end
    java_overload :getRelativeRelationshipList, 2
    

    # throws Exception
    def duplicate(list, layer)
        pointFactory = ::Org::Allbinary::Graphics::PointFactory.getInstance()
        newList = ::Org::Allbinary::Util::BasicArrayListD.new()
        size = list.size()
        (0...size).each do |index|
            relativeRelationship = list.objectArray[index]
            newList.add(::Org::Allbinary::Layer::Relationship::RelativeLayerRelationship.new(layer, pointFactory.createXY(relativeRelationship.getX(), relativeRelationship.getY()), ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getImmutableInstance()))
        end
        return newList
    end
    java_overload :duplicate, 2

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

module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :RelativeRelationship, "org/allbinary/graphics/RelativeRelationship" unless const_defined?(:RelativeRelationship, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; module Relationship; autoload :RelativeLayerRelationship, "org/allbinary/layer/relationship/RelativeLayerRelationship" unless const_defined?(:RelativeLayerRelationship, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end
autoload :ResourceRelativeRelationshipFactoryInterface, "org/allbinary/game/resource/ResourceRelativeRelationshipFactoryInterface" unless const_defined?(:ResourceRelativeRelationshipFactoryInterface, false)

begin
    FeaturedResourceRelativeRelationshipFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

