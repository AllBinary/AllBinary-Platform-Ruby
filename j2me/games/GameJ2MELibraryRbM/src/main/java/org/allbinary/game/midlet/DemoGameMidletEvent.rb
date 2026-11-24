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
# package org.allbinary.game.midlet

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/AllBinaryEventObject"

module ::Org; module Allbinary; module Game; module Midlet

class DemoGameMidletEvent < ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObject
    attr_accessor :demoGameMidletState

    def jfields_org_allbinary_game_midlet_DemoGameMidletEvent
        @demoGameMidletState = nil unless instance_variable_defined?(:@demoGameMidletState)
    end
    

    def initialize(anyType, demoGameMidletState)
        super(anyType)
        jfields_org_allbinary_game_midlet_DemoGameMidletEvent
        @demoGameMidletState = demoGameMidletState
    end
    

    def init(anyType)
        self.setSource(anyType)
    end
    java_overload :init, 1
    

    def setDemoGameMidletState(demoGameMidletState)
        @demoGameMidletState = demoGameMidletState
    end
    java_overload :setDemoGameMidletState, 1
    

    def getDemoGameMidletState()
        return @demoGameMidletState
    end
    java_overload :getDemoGameMidletState, 0
end

autoload :DemoGameMidletState, "org/allbinary/game/midlet/DemoGameMidletState" unless const_defined?(:DemoGameMidletState, false)

end; end; end; end

