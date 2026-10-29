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
# package org.allbinary.media.graphics.geography.pathfinding


class PathCacheFactory
    attr_accessor :basicArrayListUtil, :hashtable

    def initialize_fields
        @basicArrayListUtil = BasicArrayListUtil.getInstance()
        @hashtable = StdUtil.getInstance().createHashtable()
    end
    

    def initialize()
        initialize_fields
    end
    

    def self.getInstance()
        return PathCacheFactory.pathFactory
    end
    

    def getSize()
        return @hashtable.size()
    end
    

    def add(pathId, list)
        @hashtable.put(pathId, list)
    end
    

    def remove(pathId)
        @hashtable.remove(pathId)
    end
    

    # throws Exception
    def removeAll()
        @hashtable.clear()
        if @hashtable.size() > 0
            raise StandardError.new("Did not clear")
        end
    end
    

    # throws Exception
    def getOrCreate(pathIdInteger)
        listCanBeNull = @hashtable.get(pathIdInteger)
        if listCanBeNull == nil
            listCanBeNull = @basicArrayListUtil.getImmutableInstance()
        end
        return listCanBeNull
    end

    def self.pathFactory()
        return defined?(@@pathFactory) ? @@pathFactory : nil
    end

    def self.pathFactory=(value)
        @@pathFactory = value
    end
end

require "org/allbinary/logic/StdUtil"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListUtil"

class PathCacheFactory
    @@pathFactory = PathCacheFactory.new()
end

