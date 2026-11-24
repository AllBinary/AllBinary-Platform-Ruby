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

class AllAnalogControllerVisitor < AnalogControllerVisitor
    

    def process(allbinaryLayerManager, analogLocationInputProcessor)
        analogLocationInputList = ::Org::Allbinary::Game::Input::Analog::AnalogLocationInputFactory.getInstance().getList()
        analogLocationInput = nil
        (analogLocationInputList.size() - 1).step(0, -(1)) do |index|
            analogLocationInput = analogLocationInputList.get(index)
            analogLocationInputProcessor.process(allbinaryLayerManager, analogLocationInput)
        end
    end
    java_overload :process, 2
end

module ::Org; module Allbinary; module Game; module Input; module Analog; autoload :AnalogLocationInput, "org/allbinary/game/input/analog/AnalogLocationInput" unless const_defined?(:AnalogLocationInput, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Analog; autoload :AnalogLocationInputFactory, "org/allbinary/game/input/analog/AnalogLocationInputFactory" unless const_defined?(:AnalogLocationInputFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :AnalogLocationInputProcessor, "org/allbinary/android/input/motion/AnalogLocationInputProcessor" unless const_defined?(:AnalogLocationInputProcessor, false)

end; end; end; end; end

