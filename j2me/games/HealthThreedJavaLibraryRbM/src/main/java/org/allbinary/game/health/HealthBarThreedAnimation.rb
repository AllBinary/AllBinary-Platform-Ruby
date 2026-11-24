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

require "java/lang/JavaOverload"
require "org/allbinary/game/health/HealthBarAnimation"

module ::Org; module Allbinary; module Game; module Health

class HealthBarThreedAnimation < HealthBarAnimation
    attr_accessor :rectangle, :basicColorFactory, :object3dProcessor

    def jfields_org_allbinary_game_health_HealthBarThreedAnimation
        @rectangle = nil unless instance_variable_defined?(:@rectangle)
        @basicColorFactory = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance()
        @object3dProcessor = ::Org::Allbinary::Graphics::Threed::Min3d::Renderer::Object3dProcessorUtil.getInstance().getInstanceObject3dProcessor()
    end
    

    def initialize(layerInterface, location)
        super(layerInterface, location)
        jfields_org_allbinary_game_health_HealthBarThreedAnimation
        @basicColor = @basicColorFactory.GREEN
        @colorP = @basicColor.to_i
        @rectangle = ::Min3d::ObjectPrimitives::Rectangle.new(0, 0, 1, 1, @basicColor)
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
    java_overload :updateColor, 0
    

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
    java_overload :updateSize, 0
    

    def onHealthChange(newX2)
        HealthBarThreedAnimation.superclass.java_super_method(:onHealthChange, 1).bind(self).call(newX2)
        self.updateColor()
        self.updateSize()
    end
    java_overload :onHealthChange, 1
    

    def paintThreedXYZ(graphics, x, y, z)
        openGLESGraphics = graphics
        gl = openGLESGraphics.getGl10()
        viewPosition = @allbinaryLayer.getViewPosition()
        positionNumber3d = @rectangle.getPosition()
        positionNumber3d.x = -(viewPosition.getX()).to_f
        positionNumber3d.z = -(viewPosition.getY()).to_f
        positionNumber3d.y = viewPosition.getZ() + @allbinaryLayer.getHeight()
        @object3dProcessor.drawObject(gl, @rectangle)
    end
    java_overload :paintThreedXYZ, 4
end

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Min3d; module Core; autoload :ColorBufferList, "min3d/core/ColorBufferList" unless const_defined?(:ColorBufferList, false); end; end
module ::Min3d; module Core; autoload :Number3dBufferList, "min3d/core/Number3dBufferList" unless const_defined?(:Number3dBufferList, false); end; end
module ::Min3d; module ObjectPrimitives; autoload :Rectangle, "min3d/objectPrimitives/Rectangle" unless const_defined?(:Rectangle, false); end; end
module ::Min3d; module Vos; autoload :Number3d, "min3d/vos/Number3d" unless const_defined?(:Number3d, false); end; end
module ::Org; module Allbinary; module Device; autoload :OpenGLESGraphics, "org/allbinary/device/OpenGLESGraphics" unless const_defined?(:OpenGLESGraphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Threed; module Min3d; module Renderer; autoload :Object3dProcessor, "org/allbinary/graphics/threed/min3d/renderer/Object3dProcessor" unless const_defined?(:Object3dProcessor, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Threed; module Min3d; module Renderer; autoload :Object3dProcessorUtil, "org/allbinary/graphics/threed/min3d/renderer/Object3dProcessorUtil" unless const_defined?(:Object3dProcessorUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase" unless const_defined?(:ViewPositionBase, false); end; end; end

end; end; end; end

