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
require "org/allbinary/logic/util/event/handler/BasicEventHandler"

module ::Org; module Allbinary; module Game; module Layer; module Capital; module Event

class CapitalEventHandler < ::Org::Allbinary::Logic::Util::Event::Handler::BasicEventHandler
    

    def initialize()
        super()
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        capitalEventListenerInterface = (eventListenerInterface)
        capitalEventListenerInterface.onCapitalChangeEvent(eventObject)
    end
    java_overload :process, 2
end

module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventListenerInterface, "org/allbinary/logic/util/event/EventListenerInterface" unless const_defined?(:EventListenerInterface, false); end; end; end; end; end
autoload :CapitalEvent, "org/allbinary/game/layer/capital/event/CapitalEvent" unless const_defined?(:CapitalEvent, false)
autoload :CapitalEventListenerInterface, "org/allbinary/game/layer/capital/event/CapitalEventListenerInterface" unless const_defined?(:CapitalEventListenerInterface, false)

end; end; end; end; end; end

