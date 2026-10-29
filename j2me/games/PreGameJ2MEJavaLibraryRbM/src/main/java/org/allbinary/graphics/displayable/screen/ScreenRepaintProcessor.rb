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

# require "javax/microedition/lcdui/Displayable"
require "org/allbinary/canvas/Processor"

class ScreenRepaintProcessor < Processor
    attr_accessor :displayable

    def initialize_fields
        @displayable = nil
    end
    

    def initialize(displayable)
        super()
        initialize_fields
        @displayable = displayable
    end
    

    # throws Exception
    def process()
        ScreenRepaintUtil.repaint(@displayable)
    end
end

require "org/allbinary/graphics/displayable/screen/ScreenRepaintUtil"

