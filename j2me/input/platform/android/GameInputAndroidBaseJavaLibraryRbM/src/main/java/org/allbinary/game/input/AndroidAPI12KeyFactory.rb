# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.input

require "java/lang/JavaOverload"
require "org/allbinary/game/input/AndroidAPI9KeyFactory"

module ::Org; module Allbinary; module Game; module Input

class AndroidAPI12KeyFactory < AndroidAPI9KeyFactory
    

    def self.getAPI12Instance()
        if @@instance12 == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            @@instance12 = AndroidAPI12KeyFactory.new()
        end
        return @@instance12
    end
    

    def initialize()
        super()
        @KEYCODE_BUTTON_1 = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_1, "BUTTON 1")
        @KEYCODE_BUTTON_10 = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_10, "BUTTON 10")
        @KEYCODE_BUTTON_11 = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_11, "BUTTON 11")
        @KEYCODE_BUTTON_12 = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_12, "BUTTON 12")
        @KEYCODE_BUTTON_13 = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_13, "BUTTON 13")
        @KEYCODE_BUTTON_14 = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_14, "BUTTON 14")
        @KEYCODE_BUTTON_15 = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_15, "BUTTON 15")
        @KEYCODE_BUTTON_16 = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_16, "BUTTON 16")
        @KEYCODE_BUTTON_2 = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_2, "BUTTON 2")
        @KEYCODE_BUTTON_3 = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_3, "BUTTON 3")
        @KEYCODE_BUTTON_4 = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_4, "BUTTON 4")
        @KEYCODE_BUTTON_5 = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_5, "BUTTON 5")
        @KEYCODE_BUTTON_6 = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_6, "BUTTON 6")
        @KEYCODE_BUTTON_7 = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_7, "BUTTON 7")
        @KEYCODE_BUTTON_8 = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_8, "BUTTON 8")
        @KEYCODE_BUTTON_9 = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BUTTON_9, "BUTTON 9")
    end

    def self.instance12()
        AndroidAPI12KeyFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance12) ? @@instance12 : nil
    end

    def self.instance12=(value)
        AndroidAPI12KeyFactory.java_static_fields unless @java_static_fields_started
        @@instance12 = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance12 = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AndroidAPI12KeyFactory"
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
    AndroidAPI12KeyFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

