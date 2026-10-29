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
# package org.allbinary.input.motion


class CompleteMotionGestureInputToGameMotionGestureInput
    attr_accessor :commonStrings

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return CompleteMotionGestureInputToGameMotionGestureInput.instance
    end
    

    def init()
        PreLogUtil.put("No Touch Button = No Compound Motion Gestures", self, @commonStrings.INIT)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/string/CommonStrings"

class CompleteMotionGestureInputToGameMotionGestureInput
    @@instance = CompleteMotionGestureInputToGameMotionGestureInput.new()
end

