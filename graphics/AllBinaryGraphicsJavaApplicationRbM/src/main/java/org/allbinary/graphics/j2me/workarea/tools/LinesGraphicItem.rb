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

require "java/lang/Object"
require "java/lang/JavaOverload"
# require "java/awt/Color"
# require "java/awt/Graphics2D"
# require "java/awt/BasicStroke"
# require "java/awt/Graphics"
# require "javax/swing/tree/DefaultMutableTreeNode"
# require "javax/swing/tree/MutableTreeNode"
# require "java/awt/event/KeyEvent"
# require "java/awt/event/MouseEvent"
require "org/allbinary/graphics/j2me/workarea/tools/GraphicItemInterface"

module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools

class LinesGraphicItem
    include GraphicItemInterface
    attr_accessor :logUtil, :commonStrings, :gameInputStrings, :treeNode, :pointTreeNodeVector, :currentMousePoint, :fulcrumPoint, :active, :theta, :color, :points

    def jfields_org_allbinary_graphics_j2me_workarea_tools_LinesGraphicItem
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @gameInputStrings = ::Org::Allbinary::Game::Input::GameInputStrings.getInstance()
        @treeNode = nil unless instance_variable_defined?(:@treeNode)
        @pointTreeNodeVector = nil unless instance_variable_defined?(:@pointTreeNodeVector)
        @currentMousePoint = nil unless instance_variable_defined?(:@currentMousePoint)
        @fulcrumPoint = nil unless instance_variable_defined?(:@fulcrumPoint)
        @active = false
        @theta = 0.0
        @color = Color.new(::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE.to_i)
        @points = nil unless instance_variable_defined?(:@points)
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_graphics_j2me_workarea_tools_LinesGraphicItem_0(*args)
        when 1 then jnew_org_allbinary_graphics_j2me_workarea_tools_LinesGraphicItem_1(*args)
        else raise ArgumentError, "No constructor of LinesGraphicItem takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_graphics_j2me_workarea_tools_LinesGraphicItem_0()
        jfields_org_allbinary_graphics_j2me_workarea_tools_LinesGraphicItem
        @points = Points.new()
        begin
            self.init()
            @active = true
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
        end
    end
    

    def jnew_org_allbinary_graphics_j2me_workarea_tools_LinesGraphicItem_1(linesNode)
        jfields_org_allbinary_graphics_j2me_workarea_tools_LinesGraphicItem
        @points = Points.new()
        self.init()
        @active = false
        lineNodes = ::Org::Allbinary::Dom::DomHelper.getInstance().getWithoutTextNodes(linesNode.getChildNodes())
        numberOfLines = lineNodes.size()
        (0...numberOfLines).each do |index|
            lineNode = lineNodes.get(index)
            pointNodes = ::Org::Allbinary::Dom::DomHelper.getInstance().getWithoutTextNodes(lineNode.getChildNodes())
            pointOneNode = ::Org::Allbinary::Dom::DomHelper.getInstance().searchNodeList(PointsDomUtil.getInstance().POINTONE, pointNodes)
            self.addPoint(pointOneNode.getChildNodes())
            if index == numberOfLines - 1
                pointTwoNode = ::Org::Allbinary::Dom::DomHelper.getInstance().searchNodeList(PointsDomUtil.getInstance().POINTTWO, pointNodes)
                self.addPoint(pointTwoNode.getChildNodes())
            end
        end
        if numberOfLines == 0
            raise StandardError.new("Lines node does not contain a line")
        end
    end
    

    # throws Exception
    def init()
        @treeNode = DefaultMutableTreeNode.new(PointsDomUtil.getInstance().LINES + LinesGraphicItem.item)
        LinesGraphicItem.item += 1
        @points.init()
        @pointTreeNodeVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        @fulcrumPoint = ::Org::Allbinary::Graphics::PointFactory.getInstance().createXY(0, 0)
    end
    java_overload :init, 0
    

    # throws Exception
    def translate(x, y)
        ::Org::Allbinary::Graphics::J2me::StatusFactory.getInstance().setStatus("Translating: " + (@points.getPoints()).to_s)
        basicGraphicsPipeline = ::Org::Allbinary::Graphics::Pipeline::BasicGraphicsPipeline.new(@points.getPoints())
        basicGraphicsPipeline.translate(x, y)
        @points = Points.new()
        @points.addPoints(basicGraphicsPipeline.getMatrix())
    end
    java_overload :translate, 2
    

    def setRotate(theta)
        while theta > 2 * Math::PI
            theta -= 2 * Math::PI
        end
        while theta < 0.0
            theta += 2 * Math::PI
        end
        @theta = theta
    end
    java_overload :setRotate, 1
    

    def addRotate(theta)
        self.setRotate(@theta + theta)
    end
    java_overload :addRotate, 1
    

    def setAngle(angle)
        self.setRotate(((angle) * Math::PI / 180))
    end
    java_overload :setAngle, 1
    

    def addAngle(angle)
        self.setRotate(@theta + ((angle) * Math::PI / 180))
    end
    java_overload :addAngle, 1
    

    def getTreeNode()
        return @treeNode
    end
    java_overload :getTreeNode, 0
    

    def getName()
        return LinesGraphicItem::NAME
    end
    java_overload :getName, 0
    

    def self.getStaticName()
        return LinesGraphicItem::NAME
    end
    

    # throws Exception
    def addPoint_j1_1(pointNodes)
        java_monitor.synchronize do
        list = ::Org::Allbinary::Dom::DomHelper.getInstance().getWithoutTextNodes(pointNodes)
        xNode = ::Org::Allbinary::Dom::DomHelper.getInstance().searchNodeList(::Org::Allbinary::MathPackage::PositionStrings.getInstance().X, list)
        xTextNode = xNode.getFirstChild()
        xInteger = xTextNode.getNodeValue()
        yNode = ::Org::Allbinary::Dom::DomHelper.getInstance().searchNodeList(::Org::Allbinary::MathPackage::PositionStrings.getInstance().Y, list)
        yTextNode = yNode.getFirstChild()
        yInteger = yTextNode.getNodeValue()
        point = ::Org::Allbinary::Graphics::PointFactory.getInstance().createXY(xInteger.to_i, yInteger.to_i)
        self.addPoint(point)
        end
    end
    

    def addPoint_j1_2(point)
        java_monitor.synchronize do
        @points.getPoints().add(point)
        @logUtil.putF(point.to_s, self, "addPoint")
        @pointTreeNodeVector.add(DefaultMutableTreeNode.new(point.to_s))
        @treeNode.add(@pointTreeNodeVector.get(@pointTreeNodeVector.size() - 1))
        end
    end

    def addPoint(*java_overload_args)
        return addPoint_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method addPoint takes #{java_overload_args.length} arguments"
    end

    def addPoint_j1(*java_overload_args)
        return addPoint_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::NodeList))
        return addPoint_j1_2(*java_overload_args)
    end
    

    def removePoint()
        java_monitor.synchronize do
        point = nil
        if @points.getSize() > 0
            lastPoint = @points.getSize() - 1
            point = @points.getPoints().removeAt(lastPoint)
            index = @pointTreeNodeVector.size() - 1
            if index > 0
                @treeNode.remove(@pointTreeNodeVector.get(index))
                @pointTreeNodeVector.remove(index)
            end
        end
        return point
        end
    end
    java_overload :removePoint, 0
    

    def isActive()
        return @active
    end
    java_overload :isActive, 0
    

    def deactivate()
        @active = false
    end
    java_overload :deactivate, 0
    

    def activate()
        @active = true
    end
    java_overload :activate, 0
    

    # throws Exception
    def duplicatePoints(list)
        size = list.size()
        (0...size).each do |index|
            point = list.get(index)
            if point != nil
                @points.getPoints().add(::Org::Allbinary::Graphics::PointFactory.getInstance().createXY(point.getX(), point.getY()))
                @pointTreeNodeVector.add(DefaultMutableTreeNode.new(point.to_s))
                @treeNode.add(@pointTreeNodeVector.get(@pointTreeNodeVector.size() - 1))
            end
        end
    end
    java_overload :duplicatePoints, 1
    

    # throws Exception
    def duplicate()
        linesGraphicItem = LinesGraphicItem.new()
        linesGraphicItem.duplicatePoints(@points.getPoints())
        linesGraphicItem.deactivate()
        return linesGraphicItem
    end
    java_overload :duplicate, 0
    

    def getAngle()
        return ((@theta) * 180 / Math::PI)
    end
    java_overload :getAngle, 0
    

    def setFulcrumPoint(point)
        @fulcrumPoint = point
    end
    java_overload :setFulcrumPoint, 1
    

    def paint(g, canvasAngle, dimension, x, y)
        begin
            graphics = g
            graphics.setColor(getColor())
            graphics.setStroke(BasicStroke.new(x))
            if self.isActive() && @currentMousePoint != nil
                @points.getPoints().add(@currentMousePoint)
            end
            tempPointVector = PointsUtil.getInstance().doTransforms(@points.getPoints(), canvasAngle, ::Org::Allbinary::Graphics::PointFactory.getInstance().createXY(dimension.getWidth(), dimension.getHeight()))
            if self.isActive() && @currentMousePoint != nil
                @currentMousePoint = @points.getPoints().removeAt(@points.getSize() - 1)
            end
            size = tempPointVector.size()
            firstPoint = nil
            if size > 0
                firstPoint = tempPointVector.get(0)
            end
            (1...size).each do |index|
                secondPoint = tempPointVector.get(index)
                graphics.drawLine((firstPoint.getX() * x) - (x / 4), (firstPoint.getY() * y) - (y / 4), (secondPoint.getX() * x) - (x / 4), (secondPoint.getY() * y) - (y / 4))
                firstPoint = secondPoint
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "mouseMoved", e)
        end
    end
    java_overload :paint, 5
    

    # throws Exception
    def toDom(canvasDom)
        return PointsDomUtil.getInstance().toDom(canvasDom, @points.getPoints())
    end
    java_overload :toDom, 1
    

    def isValid()
        return @points.isValid()
    end
    java_overload :isValid, 0
    

    def getPointsInterface()
        return @points
    end
    java_overload :getPointsInterface, 0
    

    def setPointsInterface(points)
        @points = points
    end
    java_overload :setPointsInterface, 1
    

    def getColor()
        return @color
    end
    java_overload :getColor, 0
    

    def setColor(color)
        @color = color
    end
    java_overload :setColor, 1
    

    def mouseClicked(mouseEvent, x, y)
        begin
            mousePoint = ::Org::Allbinary::Graphics::PointFactory.getInstance().createXY(mouseEvent.getPoint().x, mouseEvent.getPoint().y)
            if (mouseEvent.getModifiers() & mouseEvent.BUTTON1_MASK) == mouseEvent.BUTTON1_MASK
                point = ::Org::Allbinary::Graphics::PointFactory.getInstance().createXY(mousePoint.getX() / x, mousePoint.getY() / y)
                ::Org::Allbinary::Graphics::J2me::StatusFactory.getInstance().setStatus("Line Point Added: " + point.to_s)
                self.addPoint(point)
            elsif (mouseEvent.getModifiers() & mouseEvent.BUTTON3_MASK) == mouseEvent.BUTTON3_MASK
                ::Org::Allbinary::Graphics::J2me::StatusFactory.getInstance().setStatus("Line Point Removed")
                self.removePoint()
            end
            @currentMousePoint = mousePoint
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "mouseMoved", e)
        end
    end
    java_overload :mouseClicked, 3
    

    def mouseEntered(mouseEvent)
    end
    java_overload :mouseEntered, 1
    

    def mouseExited(mouseEvent)
    end
    java_overload :mouseExited, 1
    

    def mousePressed(mouseEvent, xPixelsPerCell, yPixelsPerCell)
    end
    java_overload :mousePressed, 3
    

    def mouseReleased(mouseEvent, xPixelsPerCell, yPixelsPerCell)
    end
    java_overload :mouseReleased, 3
    

    def mouseDragged(mouseEvent, xPixelsPerCell, yPixelsPerCell)
    end
    java_overload :mouseDragged, 3
    

    def mouseMoved(mouseEvent, x, y)
        begin
            mousePoint = ::Org::Allbinary::Graphics::PointFactory.getInstance().createXY(mouseEvent.getPoint().x, mouseEvent.getPoint().y)
            point = ::Org::Allbinary::Graphics::PointFactory.getInstance().createXY(mousePoint.getX() / x, mousePoint.getY() / y)
            @currentMousePoint = point
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "mouseMoved", e)
        end
    end
    java_overload :mouseMoved, 3
    

    def keyPressed(keyEvent)
        begin
            keyCode = keyEvent.getKeyCode()
            if keyCode == keyEvent.VK_ESCAPE
                ::Org::Allbinary::Graphics::J2me::StatusFactory.getInstance().setStatus("Deactivated")
                self.deactivate()
            elsif keyCode == keyEvent.VK_UP
                self.translate(0, -1)
            elsif keyCode == keyEvent.VK_DOWN
                self.translate(0, 1)
            elsif keyCode == keyEvent.VK_LEFT
                self.translate(-1, 0)
            elsif keyCode == keyEvent.VK_RIGHT
                self.translate(1, 0)
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @gameInputStrings.KEY_PRESSED, e)
        end
    end
    java_overload :keyPressed, 1
    

    def keyReleased(keyEvent)
    end
    java_overload :keyReleased, 1
    

    def keyTyped(keyEvent)
    end
    java_overload :keyTyped, 1

    def self.item()
        LinesGraphicItem.java_static_fields unless @java_static_fields_started
        return defined?(@@item) ? @@item : nil
    end

    def self.item=(value)
        LinesGraphicItem.java_static_fields unless @java_static_fields_started
        @@item = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:RECT, "rect")
        const_set(:ARC, "arc")
        const_set(:STRING, "string")
        const_set(:CHAR, "char")
        const_set(:IMAGE, "image")
        @@item = 0
        const_set(:NAME, "Line Tool")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LinesGraphicItem"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:RECT, :ARC, :STRING, :CHAR, :IMAGE, :NAME].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Dom; autoload :DomHelper, "org/allbinary/dom/DomHelper" unless const_defined?(:DomHelper, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInputStrings, "org/allbinary/game/input/GameInputStrings" unless const_defined?(:GameInputStrings, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; autoload :StatusFactory, "org/allbinary/graphics/j2me/StatusFactory" unless const_defined?(:StatusFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Canvas; autoload :CanvasDom, "org/allbinary/graphics/j2me/workarea/canvas/CanvasDom" unless const_defined?(:CanvasDom, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Canvas; autoload :IntegerDimension, "org/allbinary/graphics/j2me/workarea/canvas/IntegerDimension" unless const_defined?(:IntegerDimension, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Pipeline; autoload :BasicGraphicsPipeline, "org/allbinary/graphics/pipeline/BasicGraphicsPipeline" unless const_defined?(:BasicGraphicsPipeline, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :PositionStrings, "org/allbinary/math/PositionStrings" unless const_defined?(:PositionStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
autoload :Points, "org/allbinary/graphics/j2me/workarea/tools/Points" unless const_defined?(:Points, false)
autoload :PointsDomUtil, "org/allbinary/graphics/j2me/workarea/tools/PointsDomUtil" unless const_defined?(:PointsDomUtil, false)
autoload :PointsUtil, "org/allbinary/graphics/j2me/workarea/tools/PointsUtil" unless const_defined?(:PointsUtil, false)

begin
    LinesGraphicItem.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

