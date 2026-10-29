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
# package org.allbinary.android.input.motion

require "org/allbinary/android/input/motion/AnalogControllerVisitor"

class AllAnalogControllerVisitor < AnalogControllerVisitor
    

    def process(allbinaryLayerManager, analogLocationInputProcessor)
        analogLocationInputList = AnalogLocationInputFactory.getInstance().getList()
        analogLocationInput = nil
        (analogLocationInputList.size() - 1).step(0, -(1)) do |index|
            analogLocationInput = analogLocationInputList.get(index)
            analogLocationInputProcessor.process(allbinaryLayerManager, analogLocationInput)
        end
    end
end

require "org/allbinary/game/input/analog/AnalogLocationInput"
require "org/allbinary/game/input/analog/AnalogLocationInputFactory"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/android/input/motion/AnalogLocationInputProcessor"

