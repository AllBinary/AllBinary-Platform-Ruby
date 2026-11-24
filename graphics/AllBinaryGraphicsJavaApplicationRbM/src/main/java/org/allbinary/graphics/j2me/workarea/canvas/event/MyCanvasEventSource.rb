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

# require "javax/swing/tree/MutableTreeNode"

module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Canvas; module Event

class MyCanvasEventSource
    attr_accessor :command, :treeNode, :angle

    def jfields_org_allbinary_graphics_j2me_workarea_canvas_event_MyCanvasEventSource
        @command = nil unless instance_variable_defined?(:@command)
        @treeNode = nil unless instance_variable_defined?(:@treeNode)
        @angle = 0.0
    end

    def initialize(*args)
        case args.length
        when 2 then jnew_org_allbinary_graphics_j2me_workarea_canvas_event_MyCanvasEventSource_2(*args)
        when 3 then jnew_org_allbinary_graphics_j2me_workarea_canvas_event_MyCanvasEventSource_3(*args)
        else raise ArgumentError, "No constructor of MyCanvasEventSource takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_graphics_j2me_workarea_canvas_event_MyCanvasEventSource_2(command, treeNode)
        jfields_org_allbinary_graphics_j2me_workarea_canvas_event_MyCanvasEventSource
        @command = command
        @treeNode = treeNode
    end
    

    def jnew_org_allbinary_graphics_j2me_workarea_canvas_event_MyCanvasEventSource_3(command, angle, treeNode)
        jfields_org_allbinary_graphics_j2me_workarea_canvas_event_MyCanvasEventSource
        @command = command
        @treeNode = treeNode
        self.setAngle(angle)
    end
    

    def getCommand()
        return @command
    end
    

    def getTreeNode()
        return @treeNode
    end
    

    def getAngle()
        return @angle
    end
    

    def setAngle(angle)
        @angle = angle
    end
end

end; end; end; end; end; end; end

