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


module ::Org; module Allbinary; module Game; module Layer; module Pickup

class CountedPickedUpLayerInterfaceFactoryPool
    attr_accessor :list

    def jfields_org_allbinary_game_layer_pickup_CountedPickedUpLayerInterfaceFactoryPool
        @list = nil unless instance_variable_defined?(:@list)
    end
    

    def initialize()
        jfields_org_allbinary_game_layer_pickup_CountedPickedUpLayerInterfaceFactoryPool
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def getList()
        return @list
    end
    

    def self.getInstance()
        return CountedPickedUpLayerInterfaceFactoryPool::SINGLETON
    end
    

    def self.init()
        (CountedPickedUpLayerInterfaceFactoryPool.instance_exec(CountedPickedUpLayerInterfaceFactoryPool.new()) { |java_value| remove_const(:SINGLETON) if const_defined?(:SINGLETON, false); const_set(:SINGLETON, java_value) })
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

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

begin
    CountedPickedUpLayerInterfaceFactoryPool.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

