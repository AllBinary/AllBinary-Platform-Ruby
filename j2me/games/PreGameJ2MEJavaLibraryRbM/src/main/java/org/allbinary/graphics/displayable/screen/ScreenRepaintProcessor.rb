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
# package org.allbinary.graphics.displayable.screen

require "java/lang/JavaOverload"
require "org/allbinary/canvas/Processor"

module ::Org; module Allbinary; module Graphics; module Displayable; module Screen

class ScreenRepaintProcessor < ::Org::Allbinary::Canvas::Processor
    attr_accessor :displayable

    def jfields_org_allbinary_graphics_displayable_screen_ScreenRepaintProcessor
        @displayable = nil unless instance_variable_defined?(:@displayable)
    end
    

    def initialize(displayable)
        super()
        jfields_org_allbinary_graphics_displayable_screen_ScreenRepaintProcessor
        @displayable = displayable
    end
    

    # throws Exception
    def process()
        ScreenRepaintUtil.repaint(@displayable)
    end
    java_overload :process, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Displayable, "javax/microedition/lcdui/Displayable" unless const_defined?(:Displayable, false); end; end; end
autoload :ScreenRepaintUtil, "org/allbinary/graphics/displayable/screen/ScreenRepaintUtil" unless const_defined?(:ScreenRepaintUtil, false)

end; end; end; end; end

