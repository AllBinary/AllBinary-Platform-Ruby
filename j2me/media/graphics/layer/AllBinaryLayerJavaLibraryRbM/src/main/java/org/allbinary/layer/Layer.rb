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
# package org.allbinary.layer


module ::Org; module Allbinary; module Layer

class Layer
    attr_accessor :logUtil, :x, :y, :z, :width, :height, :visible

    def jfields_org_allbinary_layer_Layer
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @x = 0 unless instance_variable_defined?(:@x)
        @y = 0 unless instance_variable_defined?(:@y)
        @z = 3
        @width = 0 unless instance_variable_defined?(:@width)
        @height = 0 unless instance_variable_defined?(:@height)
        @visible = true
    end
    

    def initialize(width, height)
        jfields_org_allbinary_layer_Layer
        self.setLayerWidth(width)
        self.setLayerHeight(height)
    end
    

    def setPosition(x, y, z)
        @x = x
        @y = y
        @z = z
    end
    

    def moveDXY(dx, dy)
        @x += dx
        @y += dy
    end
    

    def moveDXYZ(dx, dy, dz)
        @x += dx
        @y += dy
        @z += dz
    end
    

    def getXP()
        return @x
    end
    

    def getYP()
        return @y
    end
    

    def getZP()
        return @z
    end
    

    def getWidth()
        return @width
    end
    

    def getHeight()
        return @height
    end
    

    def getDepth()
        return 0
    end
    

    def setVisible(visible)
        @visible = visible
    end
    

    def isVisible()
        return @visible
    end
    

    def paint(graphics)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        canvasStrings = ::Org::Allbinary::Graphics::Displayable::CanvasStrings.getInstance()
        @logUtil.putF(commonStrings.NOT_IMPLEMENTED, self, canvasStrings.PAINT)
    end
    

    def setLayerWidth(width)
        if width < 0
            raise ArgumentError.new()
        end
        @width = width
    end
    

    def setLayerHeight(height)
        if height < 0
            raise ArgumentError.new()
        end
        @height = height
    end
    

    def toStringAppend(stringBuffer)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:ID, ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(0))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "Layer"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:ID].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :CanvasStrings, "org/allbinary/graphics/displayable/CanvasStrings" unless const_defined?(:CanvasStrings, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    Layer.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

