#
# AllBinary Open License Version 1
# Copyright (c) 2009 AllBinary
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
# package org.allbinary.android.input.motion

require "org/allbinary/android/input/motion/MotionEventProcessor"

class NoMotionEventProcessor < MotionEventProcessor
    

    def self.getInstance()
        return NoMotionEventProcessor::SINGLETON
    end
end

class NoMotionEventProcessor
    SINGLETON = MotionEventProcessor.new()
end

