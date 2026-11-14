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
        RandomPatrolAI.superclass.instance_method(:update).bind(self).call()
        RandomPatrolAI.superclass.instance_method(:processKeyAI).bind(self).call(@keyDirection)
        if @changedDirection
            RandomPatrolAI.superclass.instance_method(:processKeyAI).bind(self).call(Canvas::KEY_NUM1)
            self.updateRandomDistance()
            @changedDirection = false
        end
    end
    

    def nextDirection()
        super()
        @changedDirection = true
    end
end

autoload :Canvas, "javax/microedition/lcdui/Canvas"
autoload :GameInput, "org/allbinary/game/input/GameInput"
autoload :MyRandomFactory, "org/allbinary/game/rand/MyRandomFactory"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"

