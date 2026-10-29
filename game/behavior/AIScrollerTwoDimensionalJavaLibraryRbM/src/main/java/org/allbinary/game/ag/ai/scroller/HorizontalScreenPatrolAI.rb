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
require "org/allbinary/game/ai/BasicAI"

class HorizontalScreenPatrolAI < BasicAI
    attr_accessor :keyDirection, :displayInfoSingleton, :firingX, :firedIndex, :MAX_FIRE, :timeDelayHelper, :secondaryPlayerQueue, :sound

    def initialize_fields
        @keyDirection = Canvas::LEFT
        @displayInfoSingleton = DisplayInfoSingleton.getInstance()
        @firingX = @displayInfoSingleton.getLastHalfWidth()
        @firedIndex = 0
        @MAX_FIRE = 28
        @timeDelayHelper = TimeDelayHelper.new(240)
        @secondaryPlayerQueue = SecondaryPlayerQueueFactory.getInstance()
        @sound = nil
    end
    

    def initialize(hashtable, ownerLayerInterface, gameInput)
        super(ownerLayerInterface, gameInput)
        initialize_fields
        @sound = hashtable.get(HorizontalScreenPatrolAI::SOUND)
        if @sound == nil
            raise StandardError.new("No Sound Provided!!")
        end
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        self.class.superclass.instance_method(:processKeyAI).bind(self).call(@keyDirection)
        if @timeDelayHelper.isTimeTNT()
            layerInterface = self.getOwnerLayerInterface()
            currentOwnerLayerX = layerInterface.getXP()
            if currentOwnerLayerX < -layerInterface.getWidth()
                y = MyRandomFactory.getInstance().getAbsoluteNextIntAllowZero(50)
                layerInterface.setPosition(@displayInfoSingleton.getLastWidth() + layerInterface.getWidth() + 50, y, layerInterface.getZP())
                @firedIndex = 0
                @firingX = @displayInfoSingleton.getLastHalfWidth() + MyRandomFactory.getInstance().getNextInt(@displayInfoSingleton.getLastHalfWidth())
                @secondaryPlayerQueue.add(@sound)
            end
            if currentOwnerLayerX < @firingX && currentOwnerLayerX > -layerInterface.getWidth()
                self.class.superclass.instance_method(:processKeyAI).bind(self).call(Canvas::KEY_NUM1)
                gameLayerManager = allBinaryLayerManager
                _FIRE = (gameLayerManager.getGameInfo().getCurrentLevel() + 12) >> 2
                if _FIRE > @MAX_FIRE
                    _FIRE = @MAX_FIRE
                end
                if @firedIndex > _FIRE
                    @firedIndex = 0
                    @firingX = (-2147483648)
                end
                @firedIndex += 1
            end
        end
    end
    

    def nextDirection()
    end
end

require "org/allbinary/game/input/GameInput"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/rand/MyRandomFactory"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/media/audio/PlayerQueue"
require "org/allbinary/media/audio/SecondaryPlayerQueueFactory"
require "org/allbinary/media/audio/Sound"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/util/ABHashtable"

class HorizontalScreenPatrolAI
    SOUND = SmallIntegerSingletonFactory.getInstance().getAt(433)
end

