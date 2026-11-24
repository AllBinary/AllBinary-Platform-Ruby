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

require "java/lang/JavaOverload"
require "org/allbinary/android/input/motion/AnalogControllerVisitor"

module ::Org; module Allbinary; module Android; module Input; module Motion

class SingleAnalogControllerVisitor < AnalogControllerVisitor
    attr_accessor :playerInputId

    def jfields_org_allbinary_android_input_motion_SingleAnalogControllerVisitor
        @playerInputId = nil unless instance_variable_defined?(:@playerInputId)
    end
    

    def initialize(playerInputId)
        super()
        jfields_org_allbinary_android_input_motion_SingleAnalogControllerVisitor
        @playerInputId = playerInputId
    end
    

    def process(allbinaryLayerManager, analogLocationInputProcessor)
        analogLocationInput = ::Org::Allbinary::Game::Input::Analog::AnalogLocationInputFactory.getInstance().getInstanceForPlayer(@playerInputId)
        analogLocationInputProcessor.process(allbinaryLayerManager, analogLocationInput)
    end
    java_overload :process, 2
end

module ::Org; module Allbinary; module Game; module Input; module Analog; autoload :AnalogLocationInput, "org/allbinary/game/input/analog/AnalogLocationInput" unless const_defined?(:AnalogLocationInput, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Analog; autoload :AnalogLocationInputFactory, "org/allbinary/game/input/analog/AnalogLocationInputFactory" unless const_defined?(:AnalogLocationInputFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
autoload :AnalogLocationInputProcessor, "org/allbinary/android/input/motion/AnalogLocationInputProcessor" unless const_defined?(:AnalogLocationInputProcessor, false)

end; end; end; end; end

