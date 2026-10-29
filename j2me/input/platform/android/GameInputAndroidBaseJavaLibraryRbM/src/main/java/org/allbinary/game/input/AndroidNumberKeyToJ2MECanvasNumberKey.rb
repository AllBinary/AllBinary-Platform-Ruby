# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.input

# require "javax/microedition/lcdui/Canvas"

class AndroidNumberKeyToJ2MECanvasNumberKey
    

    def self.init()
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[KeyEvent::KEYCODE_0] = Canvas::KEY_NUM0
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[KeyEvent::KEYCODE_1] = Canvas::KEY_NUM1
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[KeyEvent::KEYCODE_2] = Canvas::KEY_NUM2
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[KeyEvent::KEYCODE_3] = Canvas::KEY_NUM3
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[KeyEvent::KEYCODE_4] = Canvas::KEY_NUM4
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[KeyEvent::KEYCODE_5] = Canvas::KEY_NUM5
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[KeyEvent::KEYCODE_6] = Canvas::KEY_NUM6
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[KeyEvent::KEYCODE_7] = Canvas::KEY_NUM7
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[KeyEvent::KEYCODE_8] = Canvas::KEY_NUM8
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[KeyEvent::KEYCODE_9] = Canvas::KEY_NUM9
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
        return defined?(@@androidtoJavaMicroEditionKeyMap) ? @@androidtoJavaMicroEditionKeyMap : nil
    end

    def self.androidtoJavaMicroEditionKeyMap=(value)
        @@androidtoJavaMicroEditionKeyMap = value
    end
end

require "android/view/KeyEvent"

class AndroidNumberKeyToJ2MECanvasNumberKey
    @@androidtoJavaMicroEditionKeyMap = Array.new(17, 0)
end

