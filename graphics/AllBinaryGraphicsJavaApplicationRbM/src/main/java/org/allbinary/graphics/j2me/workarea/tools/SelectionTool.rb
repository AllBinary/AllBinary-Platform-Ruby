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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "java/awt/Color"
# require "java/awt/Graphics"
# require "javax/swing/tree/MutableTreeNode"
# require "java/awt/event/KeyEvent"
# require "java/awt/event/MouseEvent"
require "org/allbinary/graphics/j2me/workarea/tools/GraphicItemInterface"

module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools

class SelectionTool
    include GraphicItemInterface
    attr_accessor :logUtil, :commonStrings, :canvasJPanel, :active, :controlIdDown, :rectColor, :startPoint, :endPoint

    def jfields_org_allbinary_graphics_j2me_workarea_tools_SelectionTool
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @canvasJPanel = nil unless instance_variable_defined?(:@canvasJPanel)
        @active = true
        @controlIdDown = false unless instance_variable_defined?(:@controlIdDown)
        @rectColor = Color.new(::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().RED.to_i)
        @startPoint = ::Org::Allbinary::Graphics::PointFactory.getInstance().ZERO_ZERO
        @endPoint = @startPoint
    end
    

    def initialize(canvasJPanel)
        jfields_org_allbinary_graphics_j2me_workarea_tools_SelectionTool
        @canvasJPanel = canvasJPanel
    end
    

    def setColor(color)
    end
    java_overload :setColor, 1
    

    def getTreeNode()
        return nil
    end
    java_overload :getTreeNode, 0
    

    def getPointsInterface()
        return nil
    end
    java_overload :getPointsInterface, 0
    

    def setPointsInterface(points)
    end
    java_overload :setPointsInterface, 1
    

    def isValid()
        return true
    end
    java_overload :isValid, 0
    

    def isActive()
        return @active
    end
    java_overload :isActive, 0
    

    def deactivate()
    end
    java_overload :deactivate, 0
    

    def activate()
    end
    java_overload :activate, 0
    

    def setFulcrumPoint(point)
    end
    java_overload :setFulcrumPoint, 1
    

    # throws Exception
    def translate(x, y)
    end
    java_overload :translate, 2
    

    def setRotate(theta)
    end
    java_overload :setRotate, 1
    

    def addRotate(theta)
    end
    java_overload :addRotate, 1
    

    def setAngle(angle)
    end
    java_overload :setAngle, 1
    

    def addAngle(angle)
    end
    java_overload :addAngle, 1
    

    def getAngle()
        return 0.0
    end
    java_overload :getAngle, 0
    

    def makeSelection()
        xRect = self.getXRect()
        xRect2 = (@endPoint.getX() - @startPoint.getX()).abs + xRect
        yRect = self.getYRect()
        yRect2 = (@endPoint.getY() - @startPoint.getY()).abs + yRect
        hashMap = @canvasJPanel.getGraphicItemHashMap()
        graphicItemArray = hashMap.keySet().toArray()
        size = graphicItemArray.length
        (0...size).each do |index|
            item = hashMap.get(graphicItemArray[index])
            if item.getName() == LinesGraphicItem.getStaticName()
                if ::Org::Allbinary::MathPackage::RectangleCollisionPointUtil.allPointsInsideCell(xRect, yRect, xRect2, yRect2, item.getPointsInterface().getPoints(), @canvasJPanel.getXPixelsPerWorkAreaPixel(), @canvasJPanel.getYPixelsPerWorkAreaPixel())
                    item.setColor(Color::YELLOW)
                    item.activate()
                elsif !@controlIdDown
                    item.setColor(Color::WHITE)
                    item.deactivate()
                end
            end
        end
    end
    java_overload :makeSelection, 0
    

    def getXRect()
        xDiff = @endPoint.getX() - @startPoint.getX()
        xRect = @startPoint.getX()
        if xDiff < 0
            xRect = @endPoint.getX()
        end
        return xRect
    end
    java_overload :getXRect, 0
    

    def getYRect()
        yDiff = @endPoint.getY() - @startPoint.getY()
        yRect = @startPoint.getY()
        if yDiff < 0
            yRect = @endPoint.getY()
        end
        return yRect
    end
    java_overload :getYRect, 0
    

    def paint(g, canvasAngle, dimension, x, y)
        g.setColor(@rectColor)
        xRect = self.getXRect()
        width = (@endPoint.getX() - @startPoint.getX()).abs
        yRect = self.getYRect()
        height = (@endPoint.getY() - @startPoint.getY()).abs
        g.drawRect(xRect, yRect, width, height)
    end
    java_overload :paint, 5
    

    # throws Exception
    def toDom(canvasDom)
        return nil
    end
    java_overload :toDom, 1
    

    def removePoint()
        return nil
    end
    java_overload :removePoint, 0
    

    def addPoint(point)
    end
    java_overload :addPoint, 1
    

    def getName()
        return NAME
    end
    java_overload :getName, 0
    

    def self.getStaticName()
        return NAME
    end
    

    def mouseClicked(mouseEvent, xPixelsPerCell, yPixelsPerCell)
    end
    java_overload :mouseClicked, 3
    

    def mouseMoved(mouseEvent, xPixelsPerCell, yPixelsPerCell)
    end
    java_overload :mouseMoved, 3
    

    def mouseEntered(mouseEvent)
    end
    java_overload :mouseEntered, 1
    

    def mouseExited(mouseEvent)
    end
    java_overload :mouseExited, 1
    

    def mousePressed(mouseEvent, xPixelsPerCell, yPixelsPerCell)
        @logUtil.putF(@commonStrings.START, self, MouseStrings.getInstance().MOUSE_PRESSED)
        @startPoint = ::Org::Allbinary::Graphics::PointFactory.getInstance().createXY(mouseEvent.getX(), mouseEvent.getY())
        @endPoint = @startPoint
    end
    java_overload :mousePressed, 3
    

    def mouseReleased(mouseEvent, xPixelsPerCell, yPixelsPerCell)
        @logUtil.putF(@commonStrings.START, self, MouseStrings.getInstance().MOUSE_RELEASED)
        @endPoint = ::Org::Allbinary::Graphics::PointFactory.getInstance().createXY(mouseEvent.getX(), mouseEvent.getY())
        @active = false
        self.makeSelection()
    end
    java_overload :mouseReleased, 3
    

    def mouseDragged(mouseEvent, xPixelsPerCell, yPixelsPerCell)
        @endPoint = ::Org::Allbinary::Graphics::PointFactory.getInstance().createXY(mouseEvent.getX(), mouseEvent.getY())
    end
    java_overload :mouseDragged, 3
    

    def keyPressed(keyEvent)
        if keyEvent.getKeyCode() == keyEvent.VK_CONTROL
            @controlIdDown = true
        end
    end
    java_overload :keyPressed, 1
    

    def keyReleased(keyEvent)
        if keyEvent.getKeyCode() == keyEvent.VK_CONTROL
            @controlIdDown = false
        end
    end
    java_overload :keyReleased, 1
    

    def keyTyped(keyEvent)
    end
    java_overload :keyTyped, 1
    

    # throws Exception
    def duplicate()
        return nil
    end
    java_overload :duplicate, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "Selection Tool")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SelectionTool"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NAME].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Canvas; autoload :CanvasDom, "org/allbinary/graphics/j2me/workarea/canvas/CanvasDom" unless const_defined?(:CanvasDom, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Canvas; autoload :CanvasJPanel, "org/allbinary/graphics/j2me/workarea/canvas/CanvasJPanel" unless const_defined?(:CanvasJPanel, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Canvas; autoload :IntegerDimension, "org/allbinary/graphics/j2me/workarea/canvas/IntegerDimension" unless const_defined?(:IntegerDimension, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :RectangleCollisionPointUtil, "org/allbinary/math/RectangleCollisionPointUtil" unless const_defined?(:RectangleCollisionPointUtil, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :LinesGraphicItem, "org/allbinary/graphics/j2me/workarea/tools/LinesGraphicItem" unless const_defined?(:LinesGraphicItem, false)
autoload :MouseStrings, "org/allbinary/graphics/j2me/workarea/tools/MouseStrings" unless const_defined?(:MouseStrings, false)
autoload :Points, "org/allbinary/graphics/j2me/workarea/tools/Points" unless const_defined?(:Points, false)

begin
    SelectionTool.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

