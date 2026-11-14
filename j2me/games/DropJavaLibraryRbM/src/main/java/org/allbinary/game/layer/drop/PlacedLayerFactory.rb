# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.layer.drop


class PlacedLayerFactory
    attr_accessor :list, :basicArrayListUtil

    def initialize_fields
        @list = BasicArrayListD.new()
        @basicArrayListUtil = BasicArrayListUtil.getInstance()
    end
    

    def initialize()
        initialize_fields
    end
    

    def clear()
        @list.clear()
    end
    

    def self.getInstance()
        return PlacedLayerFactory.instance
    end
    

    def getSize()
        return @list.size()
    end
    

    def getRandomInstance()
        return @basicArrayListUtil.getRandom(@list)
    end
    

    def add(layerInterfaceFactoryInterface)
        @list.add(layerInterfaceFactoryInterface)
    end

    def self.instance()
        PlacedLayerFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PlacedLayerFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PlacedLayerFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PlacedLayerFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :AllBinaryLayerFactoryInterface, "org/allbinary/layer/AllBinaryLayerFactoryInterface"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil"

begin
    PlacedLayerFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

