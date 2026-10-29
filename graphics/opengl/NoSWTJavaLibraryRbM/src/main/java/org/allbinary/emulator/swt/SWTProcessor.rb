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
# package org.allbinary.emulator.swt


class SWTProcessor
    attr_accessor :runnable

    def initialize_fields
        @runnable = NullRunnable.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return SWTProcessor.instance
    end
    

    def process(display)
        display.sleep()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/eclipse/swt/widgets/Display"
require "org/allbinary/thread/NullRunnable"
require "java/lang/Runnable"

class SWTProcessor
    @@instance = SWTProcessor.new()
end

