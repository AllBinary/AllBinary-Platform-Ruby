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
# package org.allbinary.game.input.event

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/EventListenerInterface"

module ::Org; module Allbinary; module Game; module Input; module Event

module DownGameKeyEventListenerInterface
    include ::Org::Allbinary::Logic::Util::Event::EventListenerInterface
    

    # throws Exception
    def onDownGameKeyEvent(gameKeyEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onDownGameKeyEvent, 1
end

autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false)

end; end; end; end; end

