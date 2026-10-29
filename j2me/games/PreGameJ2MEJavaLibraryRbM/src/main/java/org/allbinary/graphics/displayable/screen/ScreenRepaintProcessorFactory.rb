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

class ScreenRepaintProcessorFactory
    

    def self.getInstance()
        return ScreenRepaintProcessorFactory.instance
    end
    

    def initialize()
    end
    

    def create(displayable)
        if !J2MEUtil.isJ2ME()
            return ScreenRepaintProcessor.new(displayable)
        else
            return Processor.getInstance()
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/J2MEUtil"
require "org/allbinary/canvas/Processor"
require "org/allbinary/graphics/displayable/screen/ScreenRepaintProcessor"

class ScreenRepaintProcessorFactory
    @@instance = ScreenRepaintProcessorFactory.new()
end

