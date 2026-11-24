# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.input


module ::Org; module Allbinary; module Game; module Input

class AndroidNumberKeyToJ2MECanvasNumberKey
    

    def self.init()
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[::Android::View::KeyEvent::KEYCODE_0] = ::Javax::Microedition::Lcdui::Canvas::KEY_NUM0
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[::Android::View::KeyEvent::KEYCODE_1] = ::Javax::Microedition::Lcdui::Canvas::KEY_NUM1
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[::Android::View::KeyEvent::KEYCODE_2] = ::Javax::Microedition::Lcdui::Canvas::KEY_NUM2
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[::Android::View::KeyEvent::KEYCODE_3] = ::Javax::Microedition::Lcdui::Canvas::KEY_NUM3
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[::Android::View::KeyEvent::KEYCODE_4] = ::Javax::Microedition::Lcdui::Canvas::KEY_NUM4
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[::Android::View::KeyEvent::KEYCODE_5] = ::Javax::Microedition::Lcdui::Canvas::KEY_NUM5
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[::Android::View::KeyEvent::KEYCODE_6] = ::Javax::Microedition::Lcdui::Canvas::KEY_NUM6
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[::Android::View::KeyEvent::KEYCODE_7] = ::Javax::Microedition::Lcdui::Canvas::KEY_NUM7
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[::Android::View::KeyEvent::KEYCODE_8] = ::Javax::Microedition::Lcdui::Canvas::KEY_NUM8
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[::Android::View::KeyEvent::KEYCODE_9] = ::Javax::Microedition::Lcdui::Canvas::KEY_NUM9
    end
    

    def initialize()
    end
    

    def self.getKey(key)
        if key < AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap.length
            value = AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[key]
            if value != 0
                return value
            end
        end
        return key
    end

    def self.androidtoJavaMicroEditionKeyMap()
        AndroidNumberKeyToJ2MECanvasNumberKey.java_static_fields unless @java_static_fields_started
        return defined?(@@androidtoJavaMicroEditionKeyMap) ? @@androidtoJavaMicroEditionKeyMap : nil
    end

    def self.androidtoJavaMicroEditionKeyMap=(value)
        AndroidNumberKeyToJ2MECanvasNumberKey.java_static_fields unless @java_static_fields_started
        @@androidtoJavaMicroEditionKeyMap = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@androidtoJavaMicroEditionKeyMap = (Array.new(17, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AndroidNumberKeyToJ2MECanvasNumberKey"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Android; module View; autoload :KeyEvent, "android/view/KeyEvent" unless const_defined?(:KeyEvent, false); end; end

begin
    AndroidNumberKeyToJ2MECanvasNumberKey.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

