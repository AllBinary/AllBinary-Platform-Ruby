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
# package org.allbinary.game.ag.ai

require "org/allbinary/game/ai/BasicAI"

class KeyPressesAI < BasicAI
    attr_accessor :on, :keys

    def initialize_fields
        @on = true
        @keys = nil
    end
    

    def initialize(hashtable, ownerLayerInterface, gameInput)
        super(ownerLayerInterface, gameInput)
        initialize_fields
        @keys = Array.new(hashtable.size(), nil)
        objectArray = HashtableUtil.getInstance().getKeysAsArray(hashtable)
        size = objectArray.length
        (0...size).each do |index|
            @keys[index] = hashtable.get(objectArray[index])
        end
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        if @on
            (0...@keys.length).each do |index|
                self.class.superclass.instance_method(:processKeyAI).bind(self).call(@keys[index].to_i)
            end
        end
    end
    

    # throws Exception
    def toggle()
        if self.isOn()
            self.setOn(false)
        else
            self.setOn(true)
        end
    end
    

    # throws Exception
    def disable()
        self.setOn(false)
    end
    

    # throws Exception
    def enable()
        self.setOn(true)
    end
    

    def setOn(on)
        @on = on
    end
    

    def isOn()
        return @on
    end
end

require "org/allbinary/game/input/GameInput"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/util/HashtableUtil"
require "org/allbinary/util/ABHashtable"

