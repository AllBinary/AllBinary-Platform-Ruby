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
# package org.allbinary.graphics.j2me.workarea.canvas.event

require "java/lang/JavaOverload"
# require "javax/swing/tree/MutableTreeNode"
require "java/util/EventObject"

module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Canvas; module Event

class MyCanvasEvent < ::Java::Util::EventObject
    

    def initialize(source)
        super(source)
    end
    

    def getSource()
        return MyCanvasEvent.superclass.java_super_method(:getSource, 0).bind(self).call()
    end
    java_overload :getSource, 0
    

    def toString()
        return super.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
    

    def getCommand()
        myEventSource = self.getSource()
        return myEventSource.getCommand()
    end
    java_overload :getCommand, 0
    

    def getTreeNode()
        myEventSource = self.getSource()
        return myEventSource.getTreeNode()
    end
    java_overload :getTreeNode, 0
    

    def getAngle()
        myEventSource = self.getSource()
        return myEventSource.getAngle()
    end
    java_overload :getAngle, 0
end

autoload :MyCanvasEventSource, "org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEventSource" unless const_defined?(:MyCanvasEventSource, false)

end; end; end; end; end; end; end

