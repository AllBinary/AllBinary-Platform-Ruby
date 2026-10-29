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
# package org.allbinary.midlet

# require "javax/microedition/lcdui/Displayable"
# require "javax/microedition/midlet/MIDlet"

module MidletCompositeInterface
    

    def setMidlet(midlet)
        raise NotImplementedError
    end
    

    def getMidlet()
        raise NotImplementedError
    end
    

    def getDisplayable()
        raise NotImplementedError
    end
end

require "org/allbinary/midlet/AllBinaryMidlet"

