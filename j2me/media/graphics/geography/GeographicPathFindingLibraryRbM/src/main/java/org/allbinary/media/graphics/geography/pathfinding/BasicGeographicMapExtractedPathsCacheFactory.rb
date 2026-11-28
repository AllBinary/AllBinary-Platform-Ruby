# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.media.graphics.geography.pathfinding

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/cache/BaseBasicArrayListCache"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding

class BasicGeographicMapExtractedPathsCacheFactory < ::Org::Allbinary::Logic::Util::Cache::BaseBasicArrayListCache
    attr_accessor :maxConcurrentPaths, :maxPaths

    def jfields_org_allbinary_media_graphics_geography_pathfinding_BasicGeographicMapExtractedPathsCacheFactory
        @maxConcurrentPaths = 0 unless instance_variable_defined?(:@maxConcurrentPaths)
        @maxPaths = 0 unless instance_variable_defined?(:@maxPaths)
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        super()
        jfields_org_allbinary_media_graphics_geography_pathfinding_BasicGeographicMapExtractedPathsCacheFactory
    end
    

    def init(maxConcurrentPaths, maxPaths)
        if maxConcurrentPaths != @maxConcurrentPaths
            (maxConcurrentPaths).step(@maxConcurrentPaths, -(1)) do |index|
                @list.add(::Org::Allbinary::Util::BasicArrayListS.new(maxPaths))
            end
            @maxConcurrentPaths = maxConcurrentPaths
        end
        @maxPaths = maxPaths
    end
    java_overload :init, 2
    

    def getPaths()
        if @list.size() > 0
            return @list.removeAt(0)
        else
            return ::Org::Allbinary::Util::BasicArrayListS.new(@maxPaths)
        end
    end
    java_overload :getPaths, 0
    

    def release(list)
        (list.size() - 1).step(0, -(1)) do |index|
            BasicGeographicMapExtractedPathCacheFactory.getInstance().release(list.get(index))
        end
        list.clear()
        @list.add(list)
    end
    java_overload :release, 1

    def self.instance()
        BasicGeographicMapExtractedPathsCacheFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BasicGeographicMapExtractedPathsCacheFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = BasicGeographicMapExtractedPathsCacheFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicGeographicMapExtractedPathsCacheFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListS, "org/allbinary/util/BasicArrayListS" unless const_defined?(:BasicArrayListS, false); end; end; end
autoload :BasicGeographicMapExtractedPathCacheFactory, "org/allbinary/media/graphics/geography/pathfinding/BasicGeographicMapExtractedPathCacheFactory" unless const_defined?(:BasicGeographicMapExtractedPathCacheFactory, false)

begin
    BasicGeographicMapExtractedPathsCacheFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

