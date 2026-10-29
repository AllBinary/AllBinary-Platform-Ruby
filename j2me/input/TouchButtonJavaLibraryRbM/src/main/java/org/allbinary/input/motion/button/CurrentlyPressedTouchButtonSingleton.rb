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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/input/motion/button/TouchButtonInput"

class CurrentlyPressedTouchButtonSingleton
    @@instance = CurrentlyPressedTouchButtonSingleton.new()
end

