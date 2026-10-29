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


class AllMotionRecognizer
    attr_accessor :id

    def initialize_fields
        @id = nil
    end
    

    def initialize()
        initialize_fields
        @id = ((AllMotionRecognizer.index += 1) - 1)
    end
    

    # throws Exception
    def processStartMotionEvent(x, y, deviceId, modifiers)
    end
    

    # throws Exception
    def processEndMotionEvent(x, y, deviceId, modifiers)
    end
    

    # throws Exception
    def processDraggedMotionEvent(x, y, deviceId, modifiers)
    end
    

    # throws Exception
    def processMovedMotionEvent(x, y, deviceId, modifiers)
    end
    

    # throws Exception
    def processScrolledMotionEvent(x, y, deviceId, modifiers)
    end
    

    def getId()
        return @id
    end

    def self.index()
        return defined?(@@index) ? @@index : nil
    end

    def self.index=(value)
        @@index = value
    end
end

class AllMotionRecognizer
    @@index = 0
end

