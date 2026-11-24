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
require "org/allbinary/logic/util/event/EventListenerInterface"

module ::Org; module Allbinary; module Game; module Midlet

module DemoGameMidletEventListener
    include ::Org::Allbinary::Logic::Util::Event::EventListenerInterface
    

    def onDemoStart()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onDemoStart, 0
    

    def onGameStart()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onGameStart, 0
    

    def onDemoGameMidletEvent(demoGameMidletEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onDemoGameMidletEvent, 1
end

autoload :DemoGameMidletEvent, "org/allbinary/game/midlet/DemoGameMidletEvent" unless const_defined?(:DemoGameMidletEvent, false)

end; end; end; end

