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
# package org.allbinary.input.motion.button

require "java/lang/JavaOverload"
require "org/allbinary/graphics/paint/Paintable"

module ::Org; module Allbinary; module Input; module Motion; module Button

class TouchButtonsPaintable < ::Org::Allbinary::Graphics::Paint::Paintable
    attr_accessor :foregroundBasicColor, :foregroundColor, :basicSetColorUtil, :touchButtonFactory

    def jfields_org_allbinary_input_motion_button_TouchButtonsPaintable
        @foregroundBasicColor = nil unless instance_variable_defined?(:@foregroundBasicColor)
        @foregroundColor = nil unless instance_variable_defined?(:@foregroundColor)
        @basicSetColorUtil = ::Org::Allbinary::Graphics::Color::BasicColorSetUtil.getInstance()
        @touchButtonFactory = TouchButtonFactory.getInstance()
    end
    

    def initialize(basicColor)
        super()
        jfields_org_allbinary_input_motion_button_TouchButtonsPaintable
        @foregroundBasicColor = basicColor
        @foregroundColor = basicColor.to_i
    end
    

    def paint(graphics)
        list = @touchButtonFactory.getList()
        @basicSetColorUtil.setBasicColorP3(graphics, @foregroundBasicColor, @foregroundColor)
        touchButton = nil
        index = list.size()
        while (index -= 1) >= 0
            touchButton = list.objectArray[index]
            touchButton.paint(graphics)
        end
        index = list.size()
        while (index -= 1) >= 0
            touchButton = list.objectArray[index]
            touchButton.paintHint(graphics)
        end
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorSetUtil, "org/allbinary/graphics/color/BasicColorSetUtil" unless const_defined?(:BasicColorSetUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :TouchButton, "org/allbinary/input/motion/button/TouchButton" unless const_defined?(:TouchButton, false)
autoload :TouchButtonFactory, "org/allbinary/input/motion/button/TouchButtonFactory" unless const_defined?(:TouchButtonFactory, false)

end; end; end; end; end

