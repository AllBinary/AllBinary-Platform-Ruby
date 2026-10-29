# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.input

require "org/allbinary/game/input/AndroidAPI9KeyFactory"

class AndroidAPI12KeyFactory < AndroidAPI9KeyFactory
    

    def self.getAPI12Instance()
        if AndroidAPI12KeyFactory.instance12 == NullUtil.getInstance().NULL_OBJECT
            AndroidAPI12KeyFactory.instance12 = AndroidAPI12KeyFactory.new()
        end
        return AndroidAPI12KeyFactory.instance12
    end
    

    def initialize()
        super()
        @KEYCODE_BUTTON_1 = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_1, "BUTTON 1")
        @KEYCODE_BUTTON_10 = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_10, "BUTTON 10")
        @KEYCODE_BUTTON_11 = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_11, "BUTTON 11")
        @KEYCODE_BUTTON_12 = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_12, "BUTTON 12")
        @KEYCODE_BUTTON_13 = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_13, "BUTTON 13")
        @KEYCODE_BUTTON_14 = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_14, "BUTTON 14")
        @KEYCODE_BUTTON_15 = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_15, "BUTTON 15")
        @KEYCODE_BUTTON_16 = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_16, "BUTTON 16")
        @KEYCODE_BUTTON_2 = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_2, "BUTTON 2")
        @KEYCODE_BUTTON_3 = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_3, "BUTTON 3")
        @KEYCODE_BUTTON_4 = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_4, "BUTTON 4")
        @KEYCODE_BUTTON_5 = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_5, "BUTTON 5")
        @KEYCODE_BUTTON_6 = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_6, "BUTTON 6")
        @KEYCODE_BUTTON_7 = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_7, "BUTTON 7")
        @KEYCODE_BUTTON_8 = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_8, "BUTTON 8")
        @KEYCODE_BUTTON_9 = AndroidGameKey.new(KeyEvent::KEYCODE_BUTTON_9, "BUTTON 9")
    end

    def self.instance12()
        return defined?(@@instance12) ? @@instance12 : nil
    end

    def self.instance12=(value)
        @@instance12 = value
    end
end

require "android/view/KeyEvent"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/game/input/AndroidGameKey"

class AndroidAPI12KeyFactory
    @@instance12 = NullUtil.getInstance().NULL_OBJECT
end

