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
# package org.allbinary.game.layer.weapon


class WeaponLayerArrayLayerCircularStaticPool
    attr_accessor :MAX, :circularIndexUtil, :WEAPONLAYER_ARRAY, :TWO_WEAPONLAYER_ARRAY, :THREE_WEAPONLAYER_ARRAY

    def initialize_fields
        @MAX = 5
        @circularIndexUtil = CircularIndexUtil.createInstance(@MAX)
        @WEAPONLAYER_ARRAY = nil
        @TWO_WEAPONLAYER_ARRAY = nil
        @THREE_WEAPONLAYER_ARRAY = nil
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return WeaponLayerArrayLayerCircularStaticPool.instance
    end
    

    def init()
        _WEAPONLAYER_ARRAY = Array.new(@MAX * 2, nil)
        _TWO_WEAPONLAYER_ARRAY = Array.new(@MAX, nil)
        _THREE_WEAPONLAYER_ARRAY = Array.new(@MAX, nil)
        (0...@MAX).each do |index|
            _WEAPONLAYER_ARRAY[index] = Array.new(1, nil)
            _TWO_WEAPONLAYER_ARRAY[index] = Array.new(2, nil)
            _THREE_WEAPONLAYER_ARRAY[index] = Array.new(3, nil)
        end
        @WEAPONLAYER_ARRAY = _WEAPONLAYER_ARRAY
        @TWO_WEAPONLAYER_ARRAY = _TWO_WEAPONLAYER_ARRAY
        @THREE_WEAPONLAYER_ARRAY = _THREE_WEAPONLAYER_ARRAY
    end
    

    def getWeaponLayerArrays(size)
        if size == 1
            return @WEAPONLAYER_ARRAY
        elsif size == 2
            return @TWO_WEAPONLAYER_ARRAY
        elsif size == 3
            return @THREE_WEAPONLAYER_ARRAY
        end
        raise RuntimeError.new()
    end
    

    # throws Exception
    def getInstanceArray(size)
        weaponLayerArray = self.getWeaponLayerArrays(size)[@circularIndexUtil.getIndex()]
        @circularIndexUtil.next_()
        return weaponLayerArray
    end

    def self.instance()
        WeaponLayerArrayLayerCircularStaticPool.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        WeaponLayerArrayLayerCircularStaticPool.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = WeaponLayerArrayLayerCircularStaticPool.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "WeaponLayerArrayLayerCircularStaticPool"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil"
autoload :WeaponLayer, "org/allbinary/game/layer/weapon/WeaponLayer"

begin
    WeaponLayerArrayLayerCircularStaticPool.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

