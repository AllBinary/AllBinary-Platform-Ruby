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

module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools; module Event

class MyGraphicItemEventSource
    attr_accessor :command, :treeNode, :angle

    def jfields_org_allbinary_graphics_j2me_workarea_tools_event_MyGraphicItemEventSource
        @command = nil unless instance_variable_defined?(:@command)
        @treeNode = nil unless instance_variable_defined?(:@treeNode)
        @angle = 0.0
    end

    def initialize(*args)
        case args.length
        when 2 then jnew_org_allbinary_graphics_j2me_workarea_tools_event_MyGraphicItemEventSource_2(*args)
        when 3 then jnew_org_allbinary_graphics_j2me_workarea_tools_event_MyGraphicItemEventSource_3(*args)
        else raise ArgumentError, "No constructor of MyGraphicItemEventSource takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_graphics_j2me_workarea_tools_event_MyGraphicItemEventSource_2(command, treeNode)
        jfields_org_allbinary_graphics_j2me_workarea_tools_event_MyGraphicItemEventSource
        @command = command
        @treeNode = treeNode
    end
    

    def jnew_org_allbinary_graphics_j2me_workarea_tools_event_MyGraphicItemEventSource_3(command, angle, treeNode)
        jfields_org_allbinary_graphics_j2me_workarea_tools_event_MyGraphicItemEventSource
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

