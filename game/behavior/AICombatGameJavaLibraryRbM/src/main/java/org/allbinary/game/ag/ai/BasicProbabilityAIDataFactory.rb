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

# require "javax/microedition/lcdui/Canvas"

class BasicProbabilityAIDataFactory
    

    def getInstance()
        likelyhoodIntegerArray = Array.new(Canvas::KEY_NUM9 + 1) { Array.new(2, nil) }
        smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        likelyhoodIntegerArray[Canvas::UP][0] = smallIntegerSingletonFactory.getAt(0)
        likelyhoodIntegerArray[Canvas::UP][1] = smallIntegerSingletonFactory.getAt(10)
        likelyhoodIntegerArray[Canvas::DOWN][0] = smallIntegerSingletonFactory.getAt(10)
        likelyhoodIntegerArray[Canvas::DOWN][1] = smallIntegerSingletonFactory.getAt(14)
        likelyhoodIntegerArray[Canvas::LEFT][0] = smallIntegerSingletonFactory.getAt(14)
        likelyhoodIntegerArray[Canvas::LEFT][1] = smallIntegerSingletonFactory.getAt(18)
        likelyhoodIntegerArray[Canvas::RIGHT][0] = smallIntegerSingletonFactory.getAt(18)
        likelyhoodIntegerArray[Canvas::RIGHT][1] = smallIntegerSingletonFactory.getAt(22)
        likelyhoodIntegerArray[Canvas::KEY_NUM7][0] = smallIntegerSingletonFactory.getAt(22)
        likelyhoodIntegerArray[Canvas::KEY_NUM7][1] = smallIntegerSingletonFactory.getAt(26)
        likelyhoodIntegerArray[Canvas::KEY_NUM9][0] = smallIntegerSingletonFactory.getAt(26)
        likelyhoodIntegerArray[Canvas::KEY_NUM9][1] = smallIntegerSingletonFactory.getAt(30)
        likelyhoodIntegerArray[Canvas::KEY_NUM1][0] = smallIntegerSingletonFactory.getAt(30)
        likelyhoodIntegerArray[Canvas::KEY_NUM1][1] = smallIntegerSingletonFactory.getAt(40)
        repeatLikelyhoodIntegerArray = Array.new(Canvas::KEY_NUM9 + 1, nil)
        repeatLikelyhoodIntegerArray[Canvas::UP] = smallIntegerSingletonFactory.getAt(0)
        repeatLikelyhoodIntegerArray[Canvas::DOWN] = smallIntegerSingletonFactory.getAt(0)
        repeatLikelyhoodIntegerArray[Canvas::LEFT] = smallIntegerSingletonFactory.getAt(0)
        repeatLikelyhoodIntegerArray[Canvas::RIGHT] = smallIntegerSingletonFactory.getAt(0)
        repeatLikelyhoodIntegerArray[Canvas::KEY_NUM7] = smallIntegerSingletonFactory.getAt(0)
        repeatLikelyhoodIntegerArray[Canvas::KEY_NUM9] = smallIntegerSingletonFactory.getAt(0)
        repeatLikelyhoodIntegerArray[Canvas::KEY_NUM1] = smallIntegerSingletonFactory.getAt(10)
        inputProbability = InputProbability.new(likelyhoodIntegerArray, repeatLikelyhoodIntegerArray, 42, NoTimeDelayHelper::SINGLETON)
        return inputProbability.toHashtable()
    end
end

require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/time/NoTimeDelayHelper"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/game/ag/ai/InputProbability"

