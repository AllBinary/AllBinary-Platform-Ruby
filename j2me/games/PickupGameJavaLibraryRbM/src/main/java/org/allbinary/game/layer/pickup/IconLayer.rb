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
# package org.allbinary.game.layer.pickup

require "org/allbinary/layer/AllBinaryLayer"

class IconLayer < AllBinaryLayer
    attr_accessor :animationInterface

    def initialize_fields
        @animationInterface = nil
    end
    

    def initialize(animationInterface, width, height)
        super(StringUtil.getInstance().EMPTY_STRING, Rectangle.new(PointFactory.getInstance().ZERO_ZERO, width, height), ViewPosition.getInstanceD())
        initialize_fields
        @animationInterface = animationInterface
    end
    

    def paint(graphics)
        @animationInterface.paintXY(graphics, @x, @y)
    end
    

    def paintThreed(graphics)
        @animationInterface.paintThreedXYZ(graphics, @x, @y, @z)
    end
    

    def getAnimationInterface()
        return @animationInterface
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_ICON_LAYER, IconLayer.new(NullAnimationFactory.getFactoryInstance().getInstance(0), 0, 0))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "IconLayer"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_ICON_LAYER].include?(name)
        end
        super
    end
end

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :Animation, "org/allbinary/animation/Animation"
autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory"
autoload :PointFactory, "org/allbinary/graphics/PointFactory"
autoload :Rectangle, "org/allbinary/graphics/Rectangle"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :ViewPosition, "org/allbinary/view/ViewPosition"

begin
    IconLayer.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

