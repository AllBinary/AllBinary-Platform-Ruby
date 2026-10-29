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
# package org.allbinary.graphics.color

require "java/lang/Object"
require "org/allbinary/logic/util/event/handler/BasicEventHandler"

class ColorChangeEventHandler < BasicEventHandler
    

    def initialize()
        super()
    end
    

    def self.getInstance()
        java_monitor.synchronize do
        return ColorChangeEventHandler.eventHandler
        end
    end

    def self.eventHandler()
        return defined?(@@eventHandler) ? @@eventHandler : nil
    end

    def self.eventHandler=(value)
        @@eventHandler = value
    end
end

class ColorChangeEventHandler
    @@eventHandler = ColorChangeEventHandler.new()
end

