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
# package org.allbinary.logic.control.contraints.display.browser

require "org/allbinary/logic/control/contraints/display/browser/DisplayInBrowserContraintsInterface"

class DisplayInBrowserContraints
    include DisplayInBrowserContraintsInterface
    attr_accessor :frameable, :mountable, :quickFrameable, :mountedLink

    def initialize_fields
        @frameable = false
        @mountable = false
        @quickFrameable = false
        @mountedLink = nil
    end
    

    def initialize(node)
        initialize_fields
    end
    

    def isMountable()
        return @mountable
    end
    

    def setMountable(mountable)
        @mountable = mountable
    end
    

    def isFrameable()
        return @frameable
    end
    

    def setFrameable(frameable)
        @frameable = frameable
    end
    

    def isQuickFrameable()
        return @quickFrameable
    end
    

    def setQuickFrameable(quickFrameable)
        @quickFrameable = quickFrameable
    end
    

    def getMountedLink()
        return @mountedLink
    end
    

    def setMountedLink(mountedLink)
        @mountedLink = mountedLink
    end
end

require "org/w3c/dom/Node"

