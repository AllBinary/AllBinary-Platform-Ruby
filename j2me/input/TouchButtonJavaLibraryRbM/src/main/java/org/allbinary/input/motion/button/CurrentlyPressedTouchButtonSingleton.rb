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


class CurrentlyPressedTouchButtonSingleton
    attr_accessor :list

    def initialize_fields
        @list = BasicArrayListD.new()
    end
    

    def self.getInstance()
        return CurrentlyPressedTouchButtonSingleton.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def size()
        return @list.size()
    end
    

    def removeAt(index)
        return @list.removeAt(index)
    end
    

    def remove(touchButtonInput)
        return @list.remove(touchButtonInput)
    end
    

    def get(index)
        return @list.objectArray[index]
    end
    

    def contains(touchButtonInput)
        return @list.contains(touchButtonInput)
    end
    

    def add(touchButtonInput)
        @list.add(touchButtonInput)
    end

    def self.instance()
        CurrentlyPressedTouchButtonSingleton.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        CurrentlyPressedTouchButtonSingleton.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = CurrentlyPressedTouchButtonSingleton.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CurrentlyPressedTouchButtonSingleton"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :TouchButtonInput, "org/allbinary/input/motion/button/TouchButtonInput"

begin
    CurrentlyPressedTouchButtonSingleton.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

