# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.view

# require "javax/microedition/lcdui/Displayable"
# require "javax/microedition/midlet/MIDlet"
require "org/allbinary/view/EmulatorViewInterface"

class NullEmulatorView
    include EmulatorViewInterface
    

    def setMidlet(midlet)
    end
    

    def onEmulatorInitComplete(midletActivity)
    end
    

    def onSetDisplayable(displayable)
    end
end

class NullEmulatorView
    NULL_EMULATOR_VIEW = NullEmulatorView.new()
end

