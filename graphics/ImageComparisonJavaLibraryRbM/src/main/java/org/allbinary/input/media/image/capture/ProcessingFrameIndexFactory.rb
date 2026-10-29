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
# package org.allbinary.input.media.image.capture

require "java/lang/Object"

class ProcessingFrameIndexFactory
    

    def initialize()
    end
    

    def self.next_()
        java_monitor.synchronize do
        return ((ProcessingFrameIndexFactory.currentFrame += 1) - 1)
        end
    end

    def self.currentFrame()
        return defined?(@@currentFrame) ? @@currentFrame : nil
    end

    def self.currentFrame=(value)
        @@currentFrame = value
    end
end

class ProcessingFrameIndexFactory
    @@currentFrame = 0
end

