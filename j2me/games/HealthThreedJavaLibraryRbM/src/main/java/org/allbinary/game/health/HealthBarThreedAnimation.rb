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
# package org.allbinary.game.health

# require "javax/microedition/khronos/opengles/GL10"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/health/HealthBarAnimation"

class HealthBarThreedAnimation < HealthBarAnimation
    attr_accessor :rectangle, :basicColorFactory, :object3dProcessor

    def initialize_fields
        @rectangle = nil
        @basicColorFactory = BasicColorFactory.getInstance()
        @object3dProcessor = Object3dProcessorUtil.getInstance().getInstanceObject3dProcessor()
    end
    

    def initialize(layerInterface, location)
        super(layerInterface, location)
        initialize_fields
        @basicColor = @basicColorFactory.GREEN
        @colorP = @basicColor.to_i
        @rectangle = Rectangle.new(0, 0, 1, 1, @basicColor)
        @rectangle.setDoubleSidedEnabled(true)
        @rectangle.setNormalsEnabled(false)
        @rectangle.setTexturesEnabled(false)
    end
    

    def updateColor()
        colorBufferList = @rectangle.getVertices().getColor4BufferList()
        size = colorBufferList.size()
        index = size
        while (index -= 1) >= 0
            colorBufferList.set(index, @basicColor)
        end
    end
    

    def updateSize()
        number3dBufferList = @rectangle.getVertices().getPointsOnFacesNumber3dBufferList()
        width = @x2
        height = @thickness * 2
        segsH = 1
        segsW = 1
        row = 0
        col = 0
        w = (width / segsW).to_f
        h = (height / segsH).to_f
        width5 = (width).to_f / 2.0
        height5 = (height).to_f / 2.0
        index = 0
        (0..segsH).each do |row|
            (0..segsW).each do |col|
                number3dBufferList.set(((index += 1) - 1), (col).to_f * w - width5, (row).to_f * h - height5, 0.0)
            end
        end
    end
    

    def onHealthChange(newX2)
        super(newX2)
        self.updateColor()
        self.updateSize()
    end
    

    def paintThreedXYZ(graphics, x, y, z)
        openGLESGraphics = graphics
        gl = openGLESGraphics.getGl10()
        viewPosition = @allbinaryLayer.getViewPosition()
        positionNumber3d = @rectangle.getPosition()
        positionNumber3d.x = -((viewPosition.getX()).to_f)
        positionNumber3d.z = -((viewPosition.getY()).to_f)
        positionNumber3d.y = viewPosition.getZ() + @allbinaryLayer.getHeight()
        @object3dProcessor.drawObject(gl, @rectangle)
    end
end

require "min3d/core/ColorBufferList"
require "min3d/core/Number3dBufferList"
require "min3d/objectPrimitives/Rectangle"
require "min3d/vos/Number3d"
require "org/allbinary/device/OpenGLESGraphics"
require "org/allbinary/graphics/threed/min3d/renderer/Object3dProcessor"
require "org/allbinary/graphics/threed/min3d/renderer/Object3dProcessorUtil"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/view/ViewPositionBase"

