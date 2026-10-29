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
# package org.allbinary.game.layer.pickup


class CountedPickedUpLayerInterfaceFactoryPool
    attr_accessor :list

    def initialize_fields
        @list = nil
    end
    

    def initialize()
        initialize_fields
        @list = BasicArrayListD.new()
    end
    

    def getList()
        return @list
    end
    

    def self.getInstance()
        return CountedPickedUpLayerInterfaceFactoryPool::SINGLETON
    end
    

    def self.init()
        CountedPickedUpLayerInterfaceFactoryPool::SINGLETON = CountedPickedUpLayerInterfaceFactoryPool.new()
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

class CountedPickedUpLayerInterfaceFactoryPool
    SINGLETON = CountedPickedUpLayerInterfaceFactoryPool.new()
end

