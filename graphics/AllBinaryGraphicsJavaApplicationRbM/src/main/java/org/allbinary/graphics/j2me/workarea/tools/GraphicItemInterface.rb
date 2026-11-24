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
# package org.allbinary.graphics.j2me.workarea.tools

# require "java/awt/Color"
# require "java/awt/Graphics"
# require "javax/swing/tree/MutableTreeNode"
# require "java/awt/event/KeyEvent"
# require "java/awt/event/MouseEvent"

module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools

module GraphicItemInterface
    

    def getName()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setColor(color)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getTreeNode()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getPointsInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setPointsInterface(points)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isValid()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isActive()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def deactivate()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def activate()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setFulcrumPoint(point)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def translate(x, y)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setRotate(theta)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def addRotate(theta)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setAngle(angle)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def addAngle(angle)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getAngle()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def paint(g, canvasAngle, dimension, x, y)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def toDom(canvasDom)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def removePoint()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def addPoint(point)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def mouseClicked(mouseEvent, xPixelsPerCell, yPixelsPerCell)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def mouseEntered(mouseEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def mouseExited(mouseEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def mousePressed(mouseEvent, xPixelsPerCell, yPixelsPerCell)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def mouseReleased(mouseEvent, xPixelsPerCell, yPixelsPerCell)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def mouseDragged(mouseEvent, xPixelsPerCell, yPixelsPerCell)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def mouseMoved(mouseEvent, xPixelsPerCell, yPixelsPerCell)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def keyPressed(keyEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def keyReleased(keyEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def keyTyped(keyEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def duplicate()
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Canvas; autoload :CanvasDom, "org/allbinary/graphics/j2me/workarea/canvas/CanvasDom" unless const_defined?(:CanvasDom, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Canvas; autoload :IntegerDimension, "org/allbinary/graphics/j2me/workarea/canvas/IntegerDimension" unless const_defined?(:IntegerDimension, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :Points, "org/allbinary/graphics/j2me/workarea/tools/Points" unless const_defined?(:Points, false)

end; end; end; end; end; end

