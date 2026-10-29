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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/layer/AllBinaryLayerFactoryInterface"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/util/BasicArrayListUtil"

class PlacedLayerFactory
    @@instance = PlacedLayerFactory.new()
end

