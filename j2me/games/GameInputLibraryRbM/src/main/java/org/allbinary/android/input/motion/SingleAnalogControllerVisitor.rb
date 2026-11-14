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

class SingleAnalogControllerVisitor < AnalogControllerVisitor
    attr_accessor :playerInputId

    def initialize_fields
        @playerInputId = nil
    end
    

    def initialize(playerInputId)
        super()
        initialize_fields
        @playerInputId = playerInputId
    end
    

    def process(allbinaryLayerManager, analogLocationInputProcessor)
        analogLocationInput = AnalogLocationInputFactory.getInstance().getInstanceForPlayer(@playerInputId)
        analogLocationInputProcessor.process(allbinaryLayerManager, analogLocationInput)
    end
end

autoload :AnalogLocationInput, "org/allbinary/game/input/analog/AnalogLocationInput"
autoload :AnalogLocationInputFactory, "org/allbinary/game/input/analog/AnalogLocationInputFactory"
autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager"
autoload :AnalogLocationInputProcessor, "org/allbinary/android/input/motion/AnalogLocationInputProcessor"

