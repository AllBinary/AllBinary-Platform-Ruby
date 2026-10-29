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

require "org/allbinary/input/motion/button/TouchButtonResource"

class TouchButtonUpResource < TouchButtonResource
    

    def self.getInstance()
        return TouchButtonUpResource.instance
    end
    

    def initialize()
        super("/touch_button_up_arrow_64_by_64.png", "/touch_button_up_arrow_hint_64_by_64.png")
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class TouchButtonUpResource
    @@instance = TouchButtonUpResource.new()
end

