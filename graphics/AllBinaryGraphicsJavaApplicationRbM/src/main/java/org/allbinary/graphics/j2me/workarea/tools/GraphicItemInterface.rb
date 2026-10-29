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

# require "java/awt"
# require "javax/swing/tree/MutableTreeNode"

module GraphicItemInterface
    

    def getName()
        raise NotImplementedError
    end
    

    def setColor(color)
        raise NotImplementedError
    end
    

    def getTreeNode()
        raise NotImplementedError
    end
    

    def getPointsInterface()
        raise NotImplementedError
    end
    

    def setPointsInterface(points)
        raise NotImplementedError
    end
    

    def isValid()
        raise NotImplementedError
    end
    

    def isActive()
        raise NotImplementedError
    end
    

    def deactivate()
        raise NotImplementedError
    end
    

    def activate()
        raise NotImplementedError
    end
    

    def setFulcrumPoint(point)
        raise NotImplementedError
    end
    

    # throws Exception
    def translate(x, y)
        raise NotImplementedError
    end
    

    def setRotate(theta)
        raise NotImplementedError
    end
    

    def addRotate(theta)
        raise NotImplementedError
    end
    

    def setAngle(angle)
        raise NotImplementedError
    end
    

    def addAngle(angle)
        raise NotImplementedError
    end
    

    def getAngle()
        raise NotImplementedError
    end
    

    def paint(g, canvasAngle, dimension, x, y)
        raise NotImplementedError
    end
    

    # throws Exception
    def toDom(canvasDom)
        raise NotImplementedError
    end
    

    def removePoint()
        raise NotImplementedError
    end
    

    def addPoint(point)
        raise NotImplementedError
    end
    

    def mouseClicked(mouseEvent, xPixelsPerCell, yPixelsPerCell)
        raise NotImplementedError
    end
    

    def mouseEntered(mouseEvent)
        raise NotImplementedError
    end
    

    def mouseExited(mouseEvent)
        raise NotImplementedError
    end
    

    def mousePressed(mouseEvent, xPixelsPerCell, yPixelsPerCell)
        raise NotImplementedError
    end
    

    def mouseReleased(mouseEvent, xPixelsPerCell, yPixelsPerCell)
        raise NotImplementedError
    end
    

    def mouseDragged(mouseEvent, xPixelsPerCell, yPixelsPerCell)
        raise NotImplementedError
    end
    

    def mouseMoved(mouseEvent, xPixelsPerCell, yPixelsPerCell)
        raise NotImplementedError
    end
    

    def keyPressed(keyEvent)
        raise NotImplementedError
    end
    

    def keyReleased(keyEvent)
        raise NotImplementedError
    end
    

    def keyTyped(keyEvent)
        raise NotImplementedError
    end
    

    # throws Exception
    def duplicate()
        raise NotImplementedError
    end
end

require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/j2me/workarea/canvas/CanvasDom"
require "org/allbinary/graphics/j2me/workarea/canvas/IntegerDimension"
require "org/w3c/dom/Node"
require "org/allbinary/graphics/j2me/workarea/tools/Points"

