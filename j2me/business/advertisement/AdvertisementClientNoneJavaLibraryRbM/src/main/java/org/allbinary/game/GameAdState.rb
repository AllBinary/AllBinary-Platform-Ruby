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

require "org/allbinary/business/advertisement/GameAdStateBase"
require "org/allbinary/input/event/VirtualKeyboardEventListenerInterface"

class GameAdState < GameAdStateBase
    include VirtualKeyboardEventListenerInterface
    

    def initialize(adConfiguration)
        super(adConfiguration)
        VirtualKeyboardEventHandler.getInstance().addListenerInterface(self)
    end
    

    # throws Exception
    def onVirtualKeyboardEvent(virtualKeyboardEvent)
    end
end

require "org/allbinary/business/advertisement/AdConfiguration"
require "org/allbinary/input/event/VirtualKeyboardEvent"
require "org/allbinary/input/event/VirtualKeyboardEventHandler"

