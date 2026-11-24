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


module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools

class PointsDomUtil
    attr_accessor :LINES, :POINTONE, :POINTTWO, :ROTATEDPOINTONE, :ROTATEDPOINTTWO, :LINE

    def jfields_org_allbinary_graphics_j2me_workarea_tools_PointsDomUtil
        @LINES = "lines"
        @POINTONE = "pointOne"
        @POINTTWO = "pointTwo"
        @ROTATEDPOINTONE = "rotatedPointOne"
        @ROTATEDPOINTTWO = "rotatedPointTwo"
        @LINE = "line"
    end

    def initialize
        jfields_org_allbinary_graphics_j2me_workarea_tools_PointsDomUtil
    end
    

    def self.getInstance()
        return PointsDomUtil.instance
    end
    

    # throws Exception
    def toDom(canvasDom, pointVector)
        tempPointVector = PointsUtil.getInstance().doTransforms(pointVector, canvasDom.getAngle(), ::Org::Allbinary::Graphics::PointFactory.getInstance().createXY(canvasDom.getDimension().getWidth(), canvasDom.getDimension().getHeight()))
        document = ::Org::Allbinary::Graphics::J2me::Workarea::WorkAreaJPanel.getDocument()
        linesNode = document.createElement(@LINES)
        size2 = tempPointVector.size()
        size = pointVector.size()
        firstPoint = nil
        rotatedFirstPoint = nil
        index = 0
        if index < size && index < size2
            rotatedFirstPoint = tempPointVector.get(index)
            firstPoint = pointVector.get(index)
            index += 1
        end
        while index < size && index < size2
            lineNode = document.createElement(@LINE)
            rotatedSecondPoint = tempPointVector.get(index)
            secondPoint = pointVector.get(index)
            pointOneNode = self.getPointNode(firstPoint, @POINTONE)
            pointTwoNode = self.getPointNode(secondPoint, @POINTTWO)
            rotatedPointOneNode = self.getPointNode(rotatedFirstPoint, @ROTATEDPOINTONE)
            rotatedPointTwoNode = self.getPointNode(rotatedSecondPoint, @ROTATEDPOINTTWO)
            lineNode.appendChild(pointOneNode)
            lineNode.appendChild(pointTwoNode)
            lineNode.appendChild(rotatedPointOneNode)
            lineNode.appendChild(rotatedPointTwoNode)
            firstPoint = secondPoint
            rotatedFirstPoint = rotatedSecondPoint
            linesNode.appendChild(lineNode)
            index += 1
        end
        return linesNode
    end
    

    def getPointNode(point, pointName)
        document = ::Org::Allbinary::Graphics::J2me::Workarea::WorkAreaJPanel.getDocument()
        pointNode = document.createElement(pointName)
        xNode = document.createElement(::Org::Allbinary::MathPackage::PositionStrings.getInstance().X)
        xTextNode = document.createTextNode((point.getX()).to_s)
        xNode.appendChild(xTextNode)
        yNode = document.createElement(::Org::Allbinary::MathPackage::PositionStrings.getInstance().Y)
        yTextNode = document.createTextNode((point.getY()).to_s)
        yNode.appendChild(yTextNode)
        pointNode.appendChild(xNode)
        pointNode.appendChild(yNode)
        return pointNode
    end

    def self.instance()
        PointsDomUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PointsDomUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PointsDomUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PointsDomUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; autoload :WorkAreaJPanel, "org/allbinary/graphics/j2me/workarea/WorkAreaJPanel" unless const_defined?(:WorkAreaJPanel, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Canvas; autoload :CanvasDom, "org/allbinary/graphics/j2me/workarea/canvas/CanvasDom" unless const_defined?(:CanvasDom, false); end; end; end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :PositionStrings, "org/allbinary/math/PositionStrings" unless const_defined?(:PositionStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
autoload :PointsUtil, "org/allbinary/graphics/j2me/workarea/tools/PointsUtil" unless const_defined?(:PointsUtil, false)

begin
    PointsDomUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

