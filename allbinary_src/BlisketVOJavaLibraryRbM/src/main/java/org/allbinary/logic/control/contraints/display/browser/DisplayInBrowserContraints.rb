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

require "java/lang/JavaOverload"
require "org/allbinary/logic/control/contraints/display/browser/DisplayInBrowserContraintsInterface"

module ::Org; module Allbinary; module Logic; module ControlPackage; module Contraints; module Display; module Browser

class DisplayInBrowserContraints
    include DisplayInBrowserContraintsInterface
    attr_accessor :frameable, :mountable, :quickFrameable, :mountedLink

    def jfields_org_allbinary_logic_control_contraints_display_browser_DisplayInBrowserContraints
        @frameable = false unless instance_variable_defined?(:@frameable)
        @mountable = false unless instance_variable_defined?(:@mountable)
        @quickFrameable = false unless instance_variable_defined?(:@quickFrameable)
        @mountedLink = nil unless instance_variable_defined?(:@mountedLink)
    end
    

    def initialize(node)
        jfields_org_allbinary_logic_control_contraints_display_browser_DisplayInBrowserContraints
    end
    

    def isMountable()
        return @mountable
    end
    java_overload :isMountable, 0
    

    def setMountable(mountable)
        @mountable = mountable
    end
    java_overload :setMountable, 1
    

    def isFrameable()
        return @frameable
    end
    java_overload :isFrameable, 0
    

    def setFrameable(frameable)
        @frameable = frameable
    end
    java_overload :setFrameable, 1
    

    def isQuickFrameable()
        return @quickFrameable
    end
    java_overload :isQuickFrameable, 0
    

    def setQuickFrameable(quickFrameable)
        @quickFrameable = quickFrameable
    end
    java_overload :setQuickFrameable, 1
    

    def getMountedLink()
        return @mountedLink
    end
    java_overload :getMountedLink, 0
    

    def setMountedLink(mountedLink)
        @mountedLink = mountedLink
    end
    java_overload :setMountedLink, 1
end

module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end

end; end; end; end; end; end; end

