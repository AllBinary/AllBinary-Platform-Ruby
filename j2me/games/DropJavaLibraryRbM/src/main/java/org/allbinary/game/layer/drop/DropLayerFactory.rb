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
# package org.allbinary.game.layer.drop


class DropLayerFactory
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
        return DropLayerFactory::DROP_LAYER_FACTORY
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
    

    def getList()
        return @list
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:DROP_LAYER_FACTORY, DropLayerFactory.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DropLayerFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:DROP_LAYER_FACTORY].include?(name)
        end
        super
    end
end

autoload :PickedUpLayerInterfaceFactoryInterface, "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil"

begin
    DropLayerFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

