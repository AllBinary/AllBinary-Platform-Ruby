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
# package org.allbinary.graphics.j2me.workarea.tools.event

# require "javax/swing/tree/MutableTreeNode"

class MyGraphicItemEvent < EventObject
    

    def initialize(source)
        super(source)
    end
    

    def getSource()
        return super()
    end
    

    def toString()
        return super.to_s
    end
    alias_method :to_s, :toString
    

    def getCommand()
        myEventSource = self.getSource()
        return myEventSource.getCommand()
    end
    

    def getTreeNode()
        myEventSource = self.getSource()
        return myEventSource.getTreeNode()
    end
    

    def getAngle()
        myEventSource = self.getSource()
        return myEventSource.getAngle()
    end
end

require "org/allbinary/graphics/j2me/workarea/tools/event/MyGraphicItemEventSource"

