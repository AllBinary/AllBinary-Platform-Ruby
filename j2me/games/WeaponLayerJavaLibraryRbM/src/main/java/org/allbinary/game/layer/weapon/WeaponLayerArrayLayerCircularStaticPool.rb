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

require "java/lang/Object"

class WeaponLayerArrayLayerCircularStaticPool
    attr_accessor :MAX, :circularIndexUtil, :ALL_WEAPONLAYER_ARRAY

    def initialize_fields
        @MAX = 5
        @circularIndexUtil = CircularIndexUtil.createInstance(@MAX)
        @ALL_WEAPONLAYER_ARRAY = Array.new(4, nil)
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
        @ALL_WEAPONLAYER_ARRAY[1] = _WEAPONLAYER_ARRAY
        @ALL_WEAPONLAYER_ARRAY[2] = _TWO_WEAPONLAYER_ARRAY
        @ALL_WEAPONLAYER_ARRAY[3] = _THREE_WEAPONLAYER_ARRAY
    end
    

    # throws Exception
    def getInstanceArray(size)
        java_monitor.synchronize do
        weaponLayerArray = @ALL_WEAPONLAYER_ARRAY[size][@circularIndexUtil.getIndex()]
        @circularIndexUtil.next_()
        return weaponLayerArray
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/util/CircularIndexUtil"
require "org/allbinary/game/layer/weapon/WeaponLayer"

class WeaponLayerArrayLayerCircularStaticPool
    @@instance = WeaponLayerArrayLayerCircularStaticPool.new()
end

