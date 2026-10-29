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
# package org.allbinary.game.ag.ai.tactical

# require "javax/microedition/lcdui/Canvas"
require "org/allbinary/game/ai/BasicAI"

class BasicRandomAI < BasicAI
    attr_accessor :i_random, :inputProbability, :visitor, :keyArray, :myRandomFactory

    def initialize_fields
        @i_random = 0
        @inputProbability = nil
        @visitor = nil
        @keyArray = [Canvas::UP, Canvas::DOWN, Canvas::LEFT, Canvas::RIGHT, Canvas::KEY_NUM1, Canvas::KEY_NUM7, Canvas::KEY_NUM9]
        @myRandomFactory = MyRandomFactory.getInstance()
    end
    

    def initialize(ownerLayerInterface, gameInput, inputProbability, visitor)
        super(ownerLayerInterface, gameInput)
        initialize_fields
        @inputProbability = inputProbability
        @visitor = visitor
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        if @inputProbability.getTimeDelayHelper().isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)
            @i_random = @myRandomFactory.getAbsoluteNextInt(@inputProbability.getMax())
            repeat = false
            repeatLikelyhoodIntegerArray = @inputProbability.getRepeatLikelyhoodIntegerArray()
            if self.getLastKey() != -1 && repeatLikelyhoodIntegerArray[self.getLastKey()].to_i >= @i_random
                repeat = true
            end
            if !repeat
                likelyhoodIntegerArray = @inputProbability.getLikelyhoodIntegerArray()
                @i_random = @myRandomFactory.getAbsoluteNextInt(@inputProbability.getMax())
                size = @keyArray.length
                likelyhoodIntegerKeyArray = nil
                (0...size).each do |index|
                    key = @keyArray[index]
                    likelyhoodIntegerKeyArray = likelyhoodIntegerArray[key]
                    if likelyhoodIntegerArray.length >= key && likelyhoodIntegerKeyArray[0] != nil
                        if @i_random >= likelyhoodIntegerKeyArray[0].to_i && @i_random < likelyhoodIntegerKeyArray[1].to_i
                            self.setLastKey(key)
                            break
                        end
                    end
                end
            end
            @visitor.visit(self)
        end
    end
end

require "org/allbinary/game/ag/ai/InputProbability"
require "org/allbinary/game/input/GameInput"
require "org/allbinary/game/rand/MyRandomFactory"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/logic/util/visitor/Visitor"
require "org/allbinary/time/GameTickTimeDelayHelperFactory"

