# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.game.layer

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/LinePathAnimation"

module ::Org; module Allbinary; module Game; module Layer

class LinePathRelativeAnimation < LinePathAnimation
    

    def self.getInstance()
        return @@instanceC
    end
    

    def paint(graphics, point, nextPoint, tiledLayer)
        graphics.drawLine(nextPoint.getX() - tiledLayer.getXP(), nextPoint.getY() - tiledLayer.getYP(), point.getX() - tiledLayer.getXP(), point.getY() - tiledLayer.getYP())
    end
    java_overload :paint, 4

    def self.instanceC()
        LinePathRelativeAnimation.java_static_fields unless @java_static_fields_started
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        LinePathRelativeAnimation.java_static_fields unless @java_static_fields_started
        @@instanceC = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instanceC = LinePathRelativeAnimation.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LinePathRelativeAnimation"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :Layer, "org/allbinary/layer/Layer" unless const_defined?(:Layer, false); end; end; end

begin
    LinePathRelativeAnimation.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

