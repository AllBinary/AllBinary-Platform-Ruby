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
end

require "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/util/BasicArrayListUtil"

class DropLayerFactory
    DROP_LAYER_FACTORY = DropLayerFactory.new()
end

