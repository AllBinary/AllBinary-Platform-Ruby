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
# package org.allbinary.graphics.j2me.workarea.canvas

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Canvas

class CanvasDom
    attr_accessor :graphicsStrings, :graphicItemHashMap, :angle, :dimension, :grid

    def jfields_org_allbinary_graphics_j2me_workarea_canvas_CanvasDom
        @graphicsStrings = ::Org::Allbinary::Graphics::GraphicsStrings.getInstance()
        @graphicItemHashMap = nil unless instance_variable_defined?(:@graphicItemHashMap)
        @angle = nil unless instance_variable_defined?(:@angle)
        @dimension = nil unless instance_variable_defined?(:@dimension)
        @grid = nil unless instance_variable_defined?(:@grid)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_graphics_j2me_workarea_canvas_CanvasDom_1(*args)
        else raise ArgumentError, "No constructor of CanvasDom takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_graphics_j2me_workarea_canvas_CanvasDom_1(*java_overload_args)
        return jnew_org_allbinary_graphics_j2me_workarea_canvas_CanvasDom_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Node))
        return jnew_org_allbinary_graphics_j2me_workarea_canvas_CanvasDom_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_graphics_j2me_workarea_canvas_CanvasDom_1_1(canvasNode)
        jfields_org_allbinary_graphics_j2me_workarea_canvas_CanvasDom
        @grid = Grid.new()
        @grid.grid = ::Org::Allbinary::Graphics::PointFactory.getInstance().createXY(0, 0)
        @dimension = IntegerDimension.new(0, 0)
        name = canvasNode.getNodeName()
        if (name <=> CanvasDom::FRAME) == 0
            @graphicItemHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            angleNode = ::Org::Allbinary::Dom::DomHelper.getInstance().searchNodeList(ROTATE, canvasNode.getChildNodes())
            angleTextNode = angleNode.getFirstChild()
            angle = angleTextNode.getNodeValue().to_f
            self.setAngle(angle)
            sizeNode = ::Org::Allbinary::Dom::DomHelper.getInstance().searchNodeList(SIZE, canvasNode.getChildNodes())
            xNode = ::Org::Allbinary::Dom::DomHelper.getInstance().searchNodeList(X, sizeNode.getChildNodes())
            xTextNode = xNode.getFirstChild()
            x = xTextNode.getNodeValue().to_i
            yNode = ::Org::Allbinary::Dom::DomHelper.getInstance().searchNodeList(Y, sizeNode.getChildNodes())
            yTextNode = yNode.getFirstChild()
            y = yTextNode.getNodeValue().to_i
            self.setWorkArea(x, y)
            zoomNode = ::Org::Allbinary::Dom::DomHelper.getInstance().searchNodeList(ZOOM, canvasNode.getChildNodes())
            zoomTextNode = zoomNode.getFirstChild()
            @grid.setZoom(zoomTextNode.getNodeValue().to_i)
            gridNode = ::Org::Allbinary::Dom::DomHelper.getInstance().searchNodeList(GRID, canvasNode.getChildNodes())
            gridSizeNode = ::Org::Allbinary::Dom::DomHelper.getInstance().searchNodeList(SIZE, gridNode.getChildNodes())
            gridXNode = ::Org::Allbinary::Dom::DomHelper.getInstance().searchNodeList(X, gridSizeNode.getChildNodes())
            gridXTextNode = gridXNode.getFirstChild()
            gridX = gridXTextNode.getNodeValue().to_i
            gridYNode = ::Org::Allbinary::Dom::DomHelper.getInstance().searchNodeList(Y, gridSizeNode.getChildNodes())
            gridYTextNode = gridYNode.getFirstChild()
            gridY = gridYTextNode.getNodeValue().to_i
            self.setGrid(gridX, gridY)
            enableNode = ::Org::Allbinary::Dom::DomHelper.getInstance().searchNodeList(ENABLED, gridNode.getChildNodes())
            enableTextNode = enableNode.getFirstChild()
            @grid.showGrid(enableTextNode.getNodeValue())
            possibleNode = ::Org::Allbinary::Dom::DomHelper.getInstance().searchNodeList(POSSIBLE, gridNode.getChildNodes())
            possibleTextNode = possibleNode.getFirstChild()
            @grid.isGridPossible = possibleTextNode.getNodeValue()
            graphicItemNodeList = ::Org::Allbinary::Dom::DomHelper.getInstance().getChildrenWithoutTextNodes(GRAPHICITEMS, canvasNode.getChildNodes())
            if graphicItemNodeList != nil
                @graphicItemHashMap = ::Org::Allbinary::Graphics::J2me::Workarea::Tools::GraphicItemFactory.getInstance().getInstance(graphicItemNodeList)
            end
        else
            raise StandardError.new("Frame Element Not Found but Found: " + name)
        end
    end
    

    def jnew_org_allbinary_graphics_j2me_workarea_canvas_CanvasDom_1_2(canvasJPanel)
        jfields_org_allbinary_graphics_j2me_workarea_canvas_CanvasDom
        @angle = canvasJPanel.getAngle()
        @graphicItemHashMap = canvasJPanel.getGraphicItemHashMap()
        @dimension = canvasJPanel.getCanvasDimension()
        @grid = Grid.new(canvasJPanel.getGrid())
        @angle = canvasJPanel.getAngle()
    end
    

    def getAngle()
        return @angle
    end
    

    def getGraphicItemHashMap()
        return @graphicItemHashMap
    end
    

    def setAngle(angle)
        @angle = angle
    end
    

    # throws Exception
    def setWorkArea(x, y)
        self.setDimension(IntegerDimension.new(x, y))
    end
    

    # throws Exception
    def setGrid(gridX, gridY)
        @grid.grid = ::Org::Allbinary::Graphics::PointFactory.getInstance().createXY(gridX, gridY)
    end
    

    def getPointNode(point, pointName)
        document = ::Org::Allbinary::Graphics::J2me::Workarea::WorkAreaJPanel.getDocument()
        pointNode = document.createElement(pointName)
        xNode = document.createElement(X)
        xTextNode = document.createTextNode((point.getX()).to_s)
        xNode.appendChild(xTextNode)
        yNode = document.createElement(Y)
        yTextNode = document.createTextNode((point.getY()).to_s)
        yNode.appendChild(yTextNode)
        pointNode.appendChild(xNode)
        pointNode.appendChild(yNode)
        return pointNode
    end
    

    # throws Exception
    def toDom()
        document = ::Org::Allbinary::Graphics::J2me::Workarea::WorkAreaJPanel.getDocument()
        frameNode = document.createElement(FRAME)
        angleNode = document.createElement(ROTATE)
        angleTextNode = document.createTextNode(self.getAngle().to_s)
        angleNode.appendChild(angleTextNode)
        sizeNode = self.getPointNode(::Org::Allbinary::Graphics::PointFactory.getInstance().createXY(self.getDimension().getWidth(), self.getDimension().getHeight()), SIZE)
        zoomNode = document.createElement(ZOOM)
        zoomTextNode = document.createTextNode(self.getGrid().getZoom().to_s)
        zoomNode.appendChild(zoomTextNode)
        gridNode = document.createElement(GRID)
        gridSizeNode = self.getPointNode(self.getGrid().grid, SIZE)
        gridNode.appendChild(gridSizeNode)
        enableNode = document.createElement(ENABLED)
        enableTextNode = document.createTextNode(self.getGrid().isGridOn().to_s)
        enableNode.appendChild(enableTextNode)
        gridNode.appendChild(enableNode)
        possibleNode = document.createElement(POSSIBLE)
        possibleTextNode = document.createTextNode(self.getGrid().isGridPossible().to_s)
        possibleNode.appendChild(possibleTextNode)
        gridNode.appendChild(possibleNode)
        realSizeNode = document.createElement(REAL_SIZE)
        vectorCenterGenerator = ::Org::Allbinary::Animation::Vector::VectorCenterGenerator.new()
        vectorCenterGenerator.calculate(self.getGraphicItemHashMap())
        widthNode = document.createElement(@graphicsStrings.WIDTH)
        widthTextNode = document.createTextNode((vectorCenterGenerator.getWidth()).to_s)
        widthNode.appendChild(widthTextNode)
        realSizeNode.appendChild(widthNode)
        heightNode = document.createElement(@graphicsStrings.HEIGHT)
        heightTextNode = document.createTextNode((vectorCenterGenerator.getHeight()).to_s)
        heightNode.appendChild(heightTextNode)
        realSizeNode.appendChild(heightNode)
        frameNode.appendChild(angleNode)
        frameNode.appendChild(sizeNode)
        frameNode.appendChild(zoomNode)
        frameNode.appendChild(gridNode)
        frameNode.appendChild(realSizeNode)
        graphicItemNode = document.createElement(GRAPHICITEMS)
        graphicItemArray = self.getGraphicItemHashMap().keySet().toArray()
        size = graphicItemArray.length
        (0...size).each do |index|
            item = @graphicItemHashMap.get(graphicItemArray[index])
            if item.getName() == ::Org::Allbinary::Graphics::J2me::Workarea::Tools::LinesGraphicItem.getStaticName()
                if item.isValid()
                    graphicItemNode.appendChild(item.toDom(self))
                end
            end
        end
        frameNode.appendChild(graphicItemNode)
        return frameNode
    end
    

    def getDimension()
        return @dimension
    end
    

    def setDimension(dimension)
        @dimension = dimension
    end
    

    def getGrid()
        return @grid
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:FRAME, "frame")
        const_set(:ROTATE, "rotate")
        const_set(:SIZE, "size")
        const_set(:X, "X")
        const_set(:Y, "Y")
        const_set(:ZOOM, "zoom")
        const_set(:GRID, "grid")
        const_set(:ENABLED, "enabled")
        const_set(:POSSIBLE, "possible")
        const_set(:GRAPHICITEMS, "graphicItems")
        const_set(:REAL_SIZE, "realSize")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CanvasDom"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:FRAME, :ROTATE, :SIZE, :X, :Y, :ZOOM, :GRID, :ENABLED, :POSSIBLE, :GRAPHICITEMS, :REAL_SIZE].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Animation; module Vector; autoload :VectorCenterGenerator, "org/allbinary/animation/vector/VectorCenterGenerator" unless const_defined?(:VectorCenterGenerator, false); end; end; end; end
module ::Org; module Allbinary; module Dom; autoload :DomHelper, "org/allbinary/dom/DomHelper" unless const_defined?(:DomHelper, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GraphicsStrings, "org/allbinary/graphics/GraphicsStrings" unless const_defined?(:GraphicsStrings, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; autoload :WorkAreaJPanel, "org/allbinary/graphics/j2me/workarea/WorkAreaJPanel" unless const_defined?(:WorkAreaJPanel, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools; autoload :GraphicItemFactory, "org/allbinary/graphics/j2me/workarea/tools/GraphicItemFactory" unless const_defined?(:GraphicItemFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools; autoload :GraphicItemInterface, "org/allbinary/graphics/j2me/workarea/tools/GraphicItemInterface" unless const_defined?(:GraphicItemInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools; autoload :LinesGraphicItem, "org/allbinary/graphics/j2me/workarea/tools/LinesGraphicItem" unless const_defined?(:LinesGraphicItem, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
autoload :CanvasJPanel, "org/allbinary/graphics/j2me/workarea/canvas/CanvasJPanel" unless const_defined?(:CanvasJPanel, false)
autoload :Grid, "org/allbinary/graphics/j2me/workarea/canvas/Grid" unless const_defined?(:Grid, false)
autoload :IntegerDimension, "org/allbinary/graphics/j2me/workarea/canvas/IntegerDimension" unless const_defined?(:IntegerDimension, false)

begin
    CanvasDom.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

