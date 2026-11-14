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
        AllMotionRecognizer.java_static_fields unless @java_static_fields_started
        return defined?(@@index) ? @@index : nil
    end

    def self.index=(value)
        AllMotionRecognizer.java_static_fields unless @java_static_fields_started
        @@index = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        @@index = 0
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AllMotionRecognizer"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    AllMotionRecognizer.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

