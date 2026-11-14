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
        (CountedPickedUpLayerInterfaceFactoryPool.send(:remove_const, :SINGLETON) if CountedPickedUpLayerInterfaceFactoryPool.const_defined?(:SINGLETON, false); CountedPickedUpLayerInterfaceFactoryPool.const_set(:SINGLETON, CountedPickedUpLayerInterfaceFactoryPool.new()))
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, CountedPickedUpLayerInterfaceFactoryPool.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CountedPickedUpLayerInterfaceFactoryPool"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"

begin
    CountedPickedUpLayerInterfaceFactoryPool.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

