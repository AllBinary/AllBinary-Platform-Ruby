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
# package org.allbinary.game.ag.ai.scroller

# require "javax/microedition/lcdui/Canvas"
require "org/allbinary/game/ag/ai/scroller/BasePatrolAI"

class RandomPatrolAI < BasePatrolAI
    attr_accessor :changedDirection

    def initialize_fields
        @changedDirection = true
    end
    

    def initialize(hashtable, ownerLayerInterface, gameInput)
        super(hashtable, ownerLayerInterface, gameInput)
        initialize_fields
        self.updateRandomDistance()
    end
    

    def updateRandomDistance()
        @currentDistance = MyRandomFactory.getInstance().getAbsoluteNextInt(@maxDistance.to_i)
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        self.class.superclass.instance_method(:update).bind(self).call()
        self.class.superclass.instance_method(:processKeyAI).bind(self).call(@keyDirection)
        if @changedDirection
            self.class.superclass.instance_method(:processKeyAI).bind(self).call(Canvas::KEY_NUM1)
            self.updateRandomDistance()
            @changedDirection = false
        end
    end
    

    def nextDirection()
        super()
        @changedDirection = true
    end
end

require "org/allbinary/game/input/GameInput"
require "org/allbinary/game/rand/MyRandomFactory"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/util/ABHashtable"

