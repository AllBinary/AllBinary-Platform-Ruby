# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.input

require "java/lang/JavaOverload"
require "org/allbinary/android/ActivityFractureUtil"

module ::Org; module Allbinary; module Game; module Input

class AndroidKeyFactory < ::Org::Allbinary::Android::ActivityFractureUtil
    attr_accessor :logUtil, :UNKNOWN, :KEYCODE_BUTTON_L1, :KEYCODE_BUTTON_R1, :KEYCODE_BUTTON_THUMBR, :KEYCODE_BUTTON_THUMBL, :KEYCODE_BUTTON_START, :KEYCODE_BUTTON_MODE, :KEYCODE_BUTTON_B, :KEYCODE_BUTTON_A, :KEYCODE_BUTTON_X, :KEYCODE_BUTTON_Y, :KEYCODE_BUTTON_L2, :KEYCODE_BUTTON_R2, :KEYCODE_BUTTON_SELECT, :KEYCODE_BUTTON_C, :KEYCODE_BUTTON_Z, :KEYCODE_BUTTON_1, :KEYCODE_BUTTON_10, :KEYCODE_BUTTON_11, :KEYCODE_BUTTON_12, :KEYCODE_BUTTON_13, :KEYCODE_BUTTON_14, :KEYCODE_BUTTON_15, :KEYCODE_BUTTON_16, :KEYCODE_BUTTON_2, :KEYCODE_BUTTON_3, :KEYCODE_BUTTON_4, :KEYCODE_BUTTON_5, :KEYCODE_BUTTON_6, :KEYCODE_BUTTON_7, :KEYCODE_BUTTON_8, :KEYCODE_BUTTON_9, :SOFT_LEFT, :SOFT_RIGHT, :HOME, :BACK, :CALL, :ENDCALL, :ZERO, :ONE, :TWO, :THREE, :FOUR, :FIVE, :SIX, :SEVEN, :EIGHT, :NINE, :STAR, :POUND, :DPAD_UP, :DPAD_DOWN, :DPAD_LEFT, :DPAD_RIGHT, :DPAD_CENTER, :VOLUME_UP, :VOLUME_DOWN, :POWER, :CAMERA, :CLEAR, :A, :B, :C, :D, :E, :F, :G, :H, :I, :J, :K, :L, :M, :N, :O, :P, :Q, :R, :S, :T, :U, :V, :W, :X, :Y, :Z, :COMMA, :PERIOD, :ALT_LEFT, :ALT_RIGHT, :SHIFT_LEFT, :SHIFT_RIGHT, :TAB, :SPACE, :SYM, :EXPLORER, :ENVELOPE, :ENTER, :DEL, :GRAVE, :MINUS, :EQUALS, :LEFT_BRACKET, :RIGHT_BRACKET, :BACKSLASH, :SEMICOLON, :APOSTROPHE, :SLASH, :AT, :NUM, :HEADSETHOOK, :FOCUS, :PLUS, :MENU, :NOTIFICATION, :SEARCH

    def jfields_org_allbinary_game_input_AndroidKeyFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @UNKNOWN = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_UNKNOWN, "UNKNOWN")
        @KEYCODE_BUTTON_L1 = @UNKNOWN
        @KEYCODE_BUTTON_R1 = @UNKNOWN
        @KEYCODE_BUTTON_THUMBR = @UNKNOWN
        @KEYCODE_BUTTON_THUMBL = @UNKNOWN
        @KEYCODE_BUTTON_START = @UNKNOWN
        @KEYCODE_BUTTON_MODE = @UNKNOWN
        @KEYCODE_BUTTON_B = @UNKNOWN
        @KEYCODE_BUTTON_A = @UNKNOWN
        @KEYCODE_BUTTON_X = @UNKNOWN
        @KEYCODE_BUTTON_Y = @UNKNOWN
        @KEYCODE_BUTTON_L2 = @UNKNOWN
        @KEYCODE_BUTTON_R2 = @UNKNOWN
        @KEYCODE_BUTTON_SELECT = @UNKNOWN
        @KEYCODE_BUTTON_C = @UNKNOWN
        @KEYCODE_BUTTON_Z = @UNKNOWN
        @KEYCODE_BUTTON_1 = @UNKNOWN
        @KEYCODE_BUTTON_10 = @UNKNOWN
        @KEYCODE_BUTTON_11 = @UNKNOWN
        @KEYCODE_BUTTON_12 = @UNKNOWN
        @KEYCODE_BUTTON_13 = @UNKNOWN
        @KEYCODE_BUTTON_14 = @UNKNOWN
        @KEYCODE_BUTTON_15 = @UNKNOWN
        @KEYCODE_BUTTON_16 = @UNKNOWN
        @KEYCODE_BUTTON_2 = @UNKNOWN
        @KEYCODE_BUTTON_3 = @UNKNOWN
        @KEYCODE_BUTTON_4 = @UNKNOWN
        @KEYCODE_BUTTON_5 = @UNKNOWN
        @KEYCODE_BUTTON_6 = @UNKNOWN
        @KEYCODE_BUTTON_7 = @UNKNOWN
        @KEYCODE_BUTTON_8 = @UNKNOWN
        @KEYCODE_BUTTON_9 = @UNKNOWN
        @SOFT_LEFT = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_SOFT_LEFT, "SOFT_LEFT")
        @SOFT_RIGHT = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_SOFT_RIGHT, "SOFT_RIGHT")
        @HOME = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_HOME, "HOME")
        @BACK = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BACK, "BACK")
        @CALL = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_CALL, "CALL")
        @ENDCALL = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_ENDCALL, "ENDCALL")
        @ZERO = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_0, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().ZERO)
        @ONE = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_1, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().ONE)
        @TWO = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_2, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().TWO)
        @THREE = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_3, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().THREE)
        @FOUR = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_4, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().FOUR)
        @FIVE = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_5, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().FIVE)
        @SIX = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_6, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().SIX)
        @SEVEN = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_7, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().SEVEN)
        @EIGHT = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_8, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().EIGHT)
        @NINE = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_9, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().NINE)
        @STAR = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_STAR, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().STAR)
        @POUND = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_POUND, ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().POUND)
        @DPAD_UP = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_DPAD_UP, "UP")
        @DPAD_DOWN = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_DPAD_DOWN, "DOWN")
        @DPAD_LEFT = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_DPAD_LEFT, "LEFT")
        @DPAD_RIGHT = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_DPAD_RIGHT, "RIGHT")
        @DPAD_CENTER = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_DPAD_CENTER, "CENTER")
        @VOLUME_UP = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_VOLUME_UP, "VOLUME_UP")
        @VOLUME_DOWN = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_VOLUME_DOWN, "VOLUME_DOWN")
        @POWER = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_POWER, "POWER")
        @CAMERA = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_CAMERA, "CAMERA")
        @CLEAR = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_CLEAR, "CLEAR")
        @A = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_A, "A")
        @B = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_B, "B")
        @C = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_C, "C")
        @D = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_D, "D")
        @E = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_E, "E")
        @F = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_F, "F")
        @G = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_G, "G")
        @H = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_H, "H")
        @I = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_I, "I")
        @J = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_J, "J")
        @K = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_K, "K")
        @L = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_L, "L")
        @M = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_M, "M")
        @N = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_N, "N")
        @O = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_O, "O")
        @P = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_P, "P")
        @Q = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_Q, "Q")
        @R = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_R, "R")
        @S = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_S, "S")
        @T = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_T, "T")
        @U = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_U, "U")
        @V = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_V, "V")
        @W = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_W, "W")
        @X = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_X, "X")
        @Y = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_Y, "Y")
        @Z = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_Z, "Z")
        @COMMA = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_COMMA, "COMMA")
        @PERIOD = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_PERIOD, ::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().EXTENSION_SEP)
        @ALT_LEFT = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_ALT_LEFT, "ALT_LEFT")
        @ALT_RIGHT = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_ALT_RIGHT, "ALT_RIGHT")
        @SHIFT_LEFT = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_SHIFT_LEFT, "SHIFT_LEFT")
        @SHIFT_RIGHT = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_SHIFT_RIGHT, "SHIFT_RIGHT")
        @TAB = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_TAB, "TAB")
        @SPACE = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_SPACE, "SPACE")
        @SYM = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_SYM, "SYM")
        @EXPLORER = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_EXPLORER, "EXPLORER")
        @ENVELOPE = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_ENVELOPE, "ENVELOPE")
        @ENTER = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_ENTER, "ENTER")
        @DEL = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_DEL, "DEL")
        @GRAVE = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_GRAVE, "GRAVE")
        @MINUS = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_MINUS, "MINUS")
        @EQUALS = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_EQUALS, "EQUALS")
        @LEFT_BRACKET = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_LEFT_BRACKET, "LEFT_BRACKET")
        @RIGHT_BRACKET = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_RIGHT_BRACKET, "RIGHT_BRACKET")
        @BACKSLASH = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_BACKSLASH, "BACKSLASH")
        @SEMICOLON = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_SEMICOLON, "SEMICOLON")
        @APOSTROPHE = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_APOSTROPHE, "APOSTROPHE")
        @SLASH = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_SLASH, "SLASH")
        @AT = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_AT, "AT")
        @NUM = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_NUM, "NUM")
        @HEADSETHOOK = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_HEADSETHOOK, "HEADSETHOOK")
        @FOCUS = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_FOCUS, "FOCUS")
        @PLUS = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_PLUS, "PLUS")
        @MENU = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_MENU, "MENU")
        @NOTIFICATION = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_NOTIFICATION, "NOTIFICATION")
        @SEARCH = AndroidGameKey.new(::Android::View::KeyEvent::KEYCODE_SEARCH, "SEARCH")
    end

    def initialize
        super()
        jfields_org_allbinary_game_input_AndroidKeyFactory
    end
    

    def init()
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @logUtil.putF("Start/End", self, commonStrings.INIT)
    end
    java_overload :init, 0
    

    def isSubmission(input)
        if input == @ENTER
            return true
        elsif input == @DPAD_CENTER
            return true
        end
        return false
    end
    java_overload :isSubmission, 1
    

    def isDelete(input)
        return false
    end
    java_overload :isDelete, 1
    

    def isBackSpace(input)
        if input == @DEL
            return true
        end
        return false
    end
    java_overload :isBackSpace, 1
    

    def isLeft(input)
        if input == @DPAD_LEFT
            return true
        end
        return false
    end
    java_overload :isLeft, 1
    

    def isRight(input)
        if input == @DPAD_RIGHT
            return true
        end
        return false
    end
    java_overload :isRight, 1
    

    def isUp(input)
        if input == @DPAD_UP
            return true
        end
        return false
    end
    java_overload :isUp, 1
    

    def isDown(input)
        if input == @DPAD_DOWN
            return true
        end
        return false
    end
    java_overload :isDown, 1
    

    def isEnter(input)
        if input == @DPAD_CENTER
            return true
        elsif input == @ENTER
            return true
        elsif input == @CALL
            return true
        end
        return false
    end
    java_overload :isEnter, 1
end

module ::Android; module View; autoload :KeyEvent, "android/view/KeyEvent" unless const_defined?(:KeyEvent, false); end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
autoload :AndroidGameKey, "org/allbinary/game/input/AndroidGameKey" unless const_defined?(:AndroidGameKey, false)
autoload :Input, "org/allbinary/game/input/Input" unless const_defined?(:Input, false)

end; end; end; end

