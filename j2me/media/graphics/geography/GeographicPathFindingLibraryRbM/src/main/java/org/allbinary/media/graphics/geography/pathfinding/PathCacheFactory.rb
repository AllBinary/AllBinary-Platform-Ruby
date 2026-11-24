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


module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding

class PathCacheFactory
    attr_accessor :basicArrayListUtil, :hashtable

    def jfields_org_allbinary_media_graphics_geography_pathfinding_PathCacheFactory
        @basicArrayListUtil = ::Org::Allbinary::Util::BasicArrayListUtil.getInstance()
        @hashtable = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
    end
    

    def initialize()
        jfields_org_allbinary_media_graphics_geography_pathfinding_PathCacheFactory
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
        PathCacheFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@pathFactory) ? @@pathFactory : nil
    end

    def self.pathFactory=(value)
        PathCacheFactory.java_static_fields unless @java_static_fields_started
        @@pathFactory = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@pathFactory = PathCacheFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PathCacheFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end

begin
    PathCacheFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

