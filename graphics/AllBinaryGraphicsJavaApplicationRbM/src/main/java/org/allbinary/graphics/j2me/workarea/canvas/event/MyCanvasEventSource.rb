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

class MyCanvasEventSource
    attr_accessor :command, :treeNode, :angle

    def initialize_fields
        @command = nil
        @treeNode = nil
        @angle = 0.0
    end

    def initialize(*args)
        case args.length
        when 2 then constructor2(*args)
        when 3 then constructor3(*args)
        end
    end
    

    def constructor2(command, treeNode)
        initialize_fields
        @command = command
        @treeNode = treeNode
    end
    

    def constructor3(command, angle, treeNode)
        initialize_fields
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

