# 
# AllBinary Open License Version 1 
# Copyright (c) 2002 AllBinary 
#  
# By agreeing to this license you and any business entity you represent are 
# legally bound to the AllBinary Open License Version 1 legal agreement. 
#  
# You may obtain the AllBinary Open License Version 1 legal agreement from 
# AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
#  
# Created By: Travis Berthelot  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.layer.capital.event

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/EventListenerInterface"

module ::Org; module Allbinary; module Game; module Layer; module Capital; module Event

module CapitalEventListenerInterface
    include ::Org::Allbinary::Logic::Util::Event::EventListenerInterface
    

    # throws Exception
    def onCapitalChangeEvent(event)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onCapitalChangeEvent, 1
end

autoload :CapitalEvent, "org/allbinary/game/layer/capital/event/CapitalEvent" unless const_defined?(:CapitalEvent, false)

end; end; end; end; end; end

