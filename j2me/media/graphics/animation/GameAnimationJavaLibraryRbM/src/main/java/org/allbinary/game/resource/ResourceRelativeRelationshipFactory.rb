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

require "org/allbinary/game/resource/ResourceRelativeRelationshipFactoryInterface"

class ResourceRelativeRelationshipFactory
    include ResourceRelativeRelationshipFactoryInterface
    attr_accessor :basicArrayListUtil, :hashtable, :initialized

    def initialize_fields
        @basicArrayListUtil = BasicArrayListUtil.getInstance()
        @hashtable = StdUtil.getInstance().createHashtable()
        @initialized = false
    end

    def initialize
        initialize_fields
    end
    

    # throws Exception
    def init(level)
        self.setInitialized(true)
    end
    

    # throws Exception
    def getResourceRelativeRelationshipList(resource)
        listCanBeNull = @hashtable.get(resource)
        if listCanBeNull == nil
            return @basicArrayListUtil.getImmutableInstance()
        end
        return listCanBeNull
    end
    

    # throws Exception
    def addResourceRelativeRelationship(resource, hardPoint)
        list = self.getResourceRelativeRelationshipList(resource)
        if list == @basicArrayListUtil.getImmutableInstance()
            list = BasicArrayListD.new()
        end
        list.add(hardPoint)
        @hashtable.put(resource, list)
    end
    

    def isLoadingLevel(level)
        return false
    end
    

    def isFeature()
        return false
    end
    

    def setInitialized(initialized)
        @initialized = initialized
    end
    

    def isInitialized()
        return @initialized
    end
end

require "org/allbinary/graphics/RelativeRelationship"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/util/BasicArrayListUtil"

