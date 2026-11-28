# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.input

require "java/lang/JavaOverload"
require "org/allbinary/game/input/AndroidKeyFactory"

module ::Org; module Allbinary; module Game; module Input

class AndroidAPI9KeyFactory < AndroidKeyFactory
    

    def self.getInstance()
        if @@instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            @@instance = AndroidAPI9KeyFactory.new()
        end
        return @@instance
    end
    

    def initialize()
        super()
        @KEYCODE_BUTTON_L1 = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_L1, "BUTTON L1")
        @KEYCODE_BUTTON_R1 = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_R1, "BUTTON R1")
        @KEYCODE_BUTTON_THUMBR = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_THUMBR, "BUTTON THUMBR")
        @KEYCODE_BUTTON_THUMBL = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_THUMBL, "BUTTON THUMBL")
        @KEYCODE_BUTTON_START = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_START, "BUTTON START")
        @KEYCODE_BUTTON_MODE = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_MODE, "BUTTON MODE")
        @KEYCODE_BUTTON_B = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_B, "BUTTON B")
        @KEYCODE_BUTTON_A = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_A, "BUTTON A")
        @KEYCODE_BUTTON_X = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_X, "BUTTON X")
        @KEYCODE_BUTTON_Y = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_Y, "BUTTON Y")
        @KEYCODE_BUTTON_L2 = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_L2, "BUTTON L2")
        @KEYCODE_BUTTON_R2 = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_R2, "BUTTON R2")
        @KEYCODE_BUTTON_SELECT = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_SELECT, "BUTTON SELECT")
        @KEYCODE_BUTTON_C = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_C, "BUTTON C")
        @KEYCODE_BUTTON_Z = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_Z, "BUTTON Z")
    end

    def self.instance()
        AndroidAPI9KeyFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AndroidAPI9KeyFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AndroidAPI9KeyFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Android; module View; autoload :KeyEvent, "android/view/KeyEvent" unless const_defined?(:KeyEvent, false); end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
autoload :AndroidGameKey, "org/allbinary/game/input/AndroidGameKey" unless const_defined?(:AndroidGameKey, false)

begin
    AndroidAPI9KeyFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

