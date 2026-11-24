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
# package org.allbinary.game

require "java/lang/JavaOverload"
require "org/allbinary/business/advertisement/GameAdStateBase"
require "org/allbinary/input/event/VirtualKeyboardEventListenerInterface"

module ::Org; module Allbinary; module Game

class GameAdState < ::Org::Allbinary::Business::Advertisement::GameAdStateBase
    include ::Org::Allbinary::Input::Event::VirtualKeyboardEventListenerInterface
    

    def initialize(adConfiguration)
        super(adConfiguration)
        ::Org::Allbinary::Input::Event::VirtualKeyboardEventHandler.getInstance().addListenerInterface(self)
    end
    

    # throws Exception
    def onVirtualKeyboardEvent(virtualKeyboardEvent)
    end
    java_overload :onVirtualKeyboardEvent, 1
    

    def onEvent(eventObject)
        GameAdState.superclass.java_super_method(:onEvent, 1).bind(self).call(eventObject)
    end
    java_overload :onEvent, 1
end

module ::Org; module Allbinary; module Business; module Advertisement; autoload :AdConfiguration, "org/allbinary/business/advertisement/AdConfiguration" unless const_defined?(:AdConfiguration, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Event; autoload :VirtualKeyboardEvent, "org/allbinary/input/event/VirtualKeyboardEvent" unless const_defined?(:VirtualKeyboardEvent, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Event; autoload :VirtualKeyboardEventHandler, "org/allbinary/input/event/VirtualKeyboardEventHandler" unless const_defined?(:VirtualKeyboardEventHandler, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end

end; end; end

