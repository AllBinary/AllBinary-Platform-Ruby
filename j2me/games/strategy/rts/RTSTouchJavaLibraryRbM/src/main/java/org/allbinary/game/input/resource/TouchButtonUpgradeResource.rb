# 
# AllBinary Open License Version 1 
# Copyright (c) 2007 AllBinary 
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
# package org.allbinary.game.input.resource

require "org/allbinary/input/motion/button/TouchButtonResource"

class TouchButtonUpgradeResource < TouchButtonResource
    

    def self.getInstance()
        return TouchButtonUpgradeResource.instance
    end
    

    def initialize()
        super("/touch_button_upgrade_64_by_64.png", "/touch_button_upgrade_hint_64_by_64.png")
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class TouchButtonUpgradeResource
    @@instance = TouchButtonUpgradeResource.new()
end

