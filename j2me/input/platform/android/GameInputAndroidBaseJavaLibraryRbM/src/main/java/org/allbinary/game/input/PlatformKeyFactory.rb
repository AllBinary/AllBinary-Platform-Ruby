# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.input


class PlatformKeyFactory
    attr_accessor :androidKeyFactory

    def initialize_fields
        @androidKeyFactory = ActivityFractureControllerUtilFactory.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        if PlatformKeyFactory.instance == NullUtil.getInstance().NULL_OBJECT
            PlatformKeyFactory.instance = PlatformKeyFactory.new()
        end
        return PlatformKeyFactory.instance
    end
    

    def getString(keyCode)
        return AndroidGameKey.getString(keyCode)
    end
    

    def isSubmission(input)
        return @androidKeyFactory.isSubmission(input)
    end
    

    def isDelete(input)
        return @androidKeyFactory.isDelete(input)
    end
    

    def isBackSpace(input)
        return @androidKeyFactory.isBackSpace(input)
    end
    

    def isLeft(input)
        return @androidKeyFactory.isLeft(input)
    end
    

    def isRight(input)
        return @androidKeyFactory.isRight(input)
    end
    

    def isUp(input)
        return @androidKeyFactory.isUp(input)
    end
    

    def isDown(input)
        return @androidKeyFactory.isDown(input)
    end
    

    def isEnter(input)
        return @androidKeyFactory.isEnter(input)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/game/input/ActivityFractureControllerUtilFactory"
require "org/allbinary/game/input/AndroidGameKey"
require "org/allbinary/game/input/AndroidKeyFactory"

class PlatformKeyFactory
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

