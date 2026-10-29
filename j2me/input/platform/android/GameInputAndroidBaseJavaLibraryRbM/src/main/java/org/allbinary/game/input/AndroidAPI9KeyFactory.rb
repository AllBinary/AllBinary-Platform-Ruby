# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.input

require "org/allbinary/game/input/AndroidKeyFactory"

class AndroidAPI9KeyFactory < AndroidKeyFactory
    

    def self.getInstance()
        if AndroidAPI9KeyFactory.instance == NullUtil.getInstance().NULL_OBJECT
            AndroidAPI9KeyFactory.instance = AndroidAPI9KeyFactory.new()
        end
        return AndroidAPI9KeyFactory.instance
    end
    

    def initialize()
        super()
        @KEYCODE_BUTTON_L1 = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_L1, "BUTTON L1")
        @KEYCODE_BUTTON_R1 = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_R1, "BUTTON R1")
        @KEYCODE_BUTTON_THUMBR = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_THUMBR, "BUTTON THUMBR")
        @KEYCODE_BUTTON_THUMBL = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_THUMBL, "BUTTON THUMBL")
        @KEYCODE_BUTTON_START = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_START, "BUTTON START")
        @KEYCODE_BUTTON_MODE = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_MODE, "BUTTON MODE")
        @KEYCODE_BUTTON_B = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_B, "BUTTON B")
        @KEYCODE_BUTTON_A = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_A, "BUTTON A")
        @KEYCODE_BUTTON_X = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_X, "BUTTON X")
        @KEYCODE_BUTTON_Y = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_Y, "BUTTON Y")
        @KEYCODE_BUTTON_L2 = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_L2, "BUTTON L2")
        @KEYCODE_BUTTON_R2 = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_R2, "BUTTON R2")
        @KEYCODE_BUTTON_SELECT = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_SELECT, "BUTTON SELECT")
        @KEYCODE_BUTTON_C = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_C, "BUTTON C")
        @KEYCODE_BUTTON_Z = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_Z, "BUTTON Z")
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "android/view/KeyEvent"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/game/input/AndroidGameKey"

class AndroidAPI9KeyFactory
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

