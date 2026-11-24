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
# package org.allbinary.input.motion.gesture

require "java/lang/JavaOverload"
require "org/allbinary/game/input/Input"

module ::Org; module Allbinary; module Input; module Motion; module Gesture

class MotionGestureInput < ::Org::Allbinary::Game::Input::Input
    

    def initialize(id, name)
        super(id, name)
        inputFactory = ::Org::Allbinary::Game::Input::InputFactory.getInstance()
        inputFactory.add(self.getId(), self)
    end
end

module ::Org; module Allbinary; module Game; module Input; autoload :InputFactory, "org/allbinary/game/input/InputFactory" unless const_defined?(:InputFactory, false); end; end; end; end

end; end; end; end; end

