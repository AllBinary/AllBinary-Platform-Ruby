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
# package org.allbinary.animation.transition.shake


class ShakeEventFactory
    attr_accessor :MICRO, :SMALL, :MEDIUM, :LARGE

    def initialize_fields
        @MICRO = ShakeEvent.new()
        @SMALL = ShakeEvent.new()
        @MEDIUM = ShakeEvent.new()
        @LARGE = ShakeEvent.new()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ShakeEventFactory.instance
    end
    

    def init()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/animation/transition/shake/ShakeEvent"

class ShakeEventFactory
    @@instance = ShakeEventFactory.new()
end

