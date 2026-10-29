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
# package org.allbinary.graphics

require "java/lang/Object"

class ResizableListenerHandler
    

    def self.getInstance()
        return ResizableListenerHandler.instance
    end
    

    def setListener(resizableListenerInterface)
    end
    

    def fire(isFullScreen)
    end
    

    # throws Exception
    def fireEvent(value)
        java_monitor.synchronize do
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/ResizableListenerInterface"

class ResizableListenerHandler
    @@instance = ResizableListenerHandler.new()
end

