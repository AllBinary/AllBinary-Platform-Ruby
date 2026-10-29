# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.media.graphics.geography.pathfinding

require "org/allbinary/logic/util/cache/BaseBasicArrayListCache"

class BasicGeographicMapExtractedPathCacheFactory < BaseBasicArrayListCache
    attr_accessor :maxConcurrentPaths, :maxPaths

    def initialize_fields
        @maxConcurrentPaths = 0
        @maxPaths = 0
    end
    

    def self.getInstance()
        return BasicGeographicMapExtractedPathCacheFactory.instance
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def init(maxConcurrentPaths, maxPaths)
        if maxConcurrentPaths != @maxConcurrentPaths
            (maxConcurrentPaths).step(@maxConcurrentPaths, -(1)) do |index|
                @list.add(BasicArrayListS.new(maxPaths))
            end
            @maxConcurrentPaths = maxConcurrentPaths
        end
        @maxPaths = maxPaths
    end
    

    def getPath()
        if @list.size() > 0
            return @list.removeAt(0)
        else
            return BasicArrayListS.new(@maxPaths)
        end
    end
    

    def release(list)
        list.clear()
        @list.add(list)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListS"

class BasicGeographicMapExtractedPathCacheFactory
    @@instance = BasicGeographicMapExtractedPathCacheFactory.new()
end

