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


module MidletCompositeInterface
    

    def setMidlet(midlet)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getMidlet()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getDisplayable()
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :Displayable, "javax/microedition/lcdui/Displayable"
autoload :MIDlet, "javax/microedition/midlet/MIDlet"
autoload :AllBinaryMidlet, "org/allbinary/midlet/AllBinaryMidlet"

