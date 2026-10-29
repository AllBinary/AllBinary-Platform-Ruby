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

require "org/allbinary/game/ag/ai/KeyPressesAI"

class MultiKeyPressesAI < KeyPressesAI
    attr_accessor :toggleTimeHelper, :gameTickTimeDelayHelper

    def initialize_fields
        @toggleTimeHelper = TimeDelayHelper.new(600)
        @gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    end
    

    def initialize(hashtable, ownerLayerInterface, gameInput)
        super(hashtable, ownerLayerInterface, gameInput)
        initialize_fields
        self.update()
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
    end
    

    # throws Exception
    def update()
        gameInput = self.getGameInput()
        keys = @keys
        size = keys.length
        if self.isOn()
            (0...size).each do |index|
                key = keys[index].to_i
                if key != -1
                    gameInput.add(@gameKeyEventFactory.getInstanceForKey(self, key))
                end
            end
        else
            (0...size).each do |index|
                key = keys[index].to_i
                if key != -1
                    gameInput.addForRemoval(@gameKeyEventFactory.getInstanceForKey(self, key))
                end
            end
        end
    end
    

    # throws Exception
    def toggle()
        if @toggleTimeHelper.isTime(@gameTickTimeDelayHelper.startTime)
            super()
            self.update()
        end
    end
    

    # throws Exception
    def disable()
        if @toggleTimeHelper.isTime(@gameTickTimeDelayHelper.startTime)
            super()
            self.update()
        end
    end
    

    # throws Exception
    def enable()
        if @toggleTimeHelper.isTime(@gameTickTimeDelayHelper.startTime)
            super()
            self.update()
        end
    end
end

require "org/allbinary/game/input/GameInput"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/time/GameTickTimeDelayHelper"
require "org/allbinary/time/GameTickTimeDelayHelperFactory"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/util/ABHashtable"

