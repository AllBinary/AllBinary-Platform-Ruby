# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.input

require "org/allbinary/android/ActivityFractureUtil"

class AndroidKeyFactory < ActivityFractureUtil
    attr_accessor :logUtil, :UNKNOWN, :KEYCODE_BUTTON_L1, :KEYCODE_BUTTON_R1, :KEYCODE_BUTTON_THUMBR, :KEYCODE_BUTTON_THUMBL, :KEYCODE_BUTTON_START, :KEYCODE_BUTTON_MODE, :KEYCODE_BUTTON_B, :KEYCODE_BUTTON_A, :KEYCODE_BUTTON_X, :KEYCODE_BUTTON_Y, :KEYCODE_BUTTON_L2, :KEYCODE_BUTTON_R2, :KEYCODE_BUTTON_SELECT, :KEYCODE_BUTTON_C, :KEYCODE_BUTTON_Z, :KEYCODE_BUTTON_1, :KEYCODE_BUTTON_10, :KEYCODE_BUTTON_11, :KEYCODE_BUTTON_12, :KEYCODE_BUTTON_13, :KEYCODE_BUTTON_14, :KEYCODE_BUTTON_15, :KEYCODE_BUTTON_16, :KEYCODE_BUTTON_2, :KEYCODE_BUTTON_3, :KEYCODE_BUTTON_4, :KEYCODE_BUTTON_5, :KEYCODE_BUTTON_6, :KEYCODE_BUTTON_7, :KEYCODE_BUTTON_8, :KEYCODE_BUTTON_9, :SOFT_LEFT, :SOFT_RIGHT, :HOME, :BACK, :CALL, :ENDCALL, :ZERO, :ONE, :TWO, :THREE, :FOUR, :FIVE, :SIX, :SEVEN, :EIGHT, :NINE, :STAR, :POUND, :DPAD_UP, :DPAD_DOWN, :DPAD_LEFT, :DPAD_RIGHT, :DPAD_CENTER, :VOLUME_UP, :VOLUME_DOWN, :POWER, :CAMERA, :CLEAR, :A, :B, :C, :D, :E, :F, :G, :H, :I, :J, :K, :L, :M, :N, :O, :P, :Q, :R, :S, :T, :U, :V, :W, :X, :Y, :Z, :COMMA, :PERIOD, :ALT_LEFT, :ALT_RIGHT, :SHIFT_LEFT, :SHIFT_RIGHT, :TAB, :SPACE, :SYM, :EXPLORER, :ENVELOPE, :ENTER, :DEL, :GRAVE, :MINUS, :EQUALS, :LEFT_BRACKET, :RIGHT_BRACKET, :BACKSLASH, :SEMICOLON, :APOSTROPHE, :SLASH, :AT, :NUM, :HEADSETHOOK, :FOCUS, :PLUS, :MENU, :NOTIFICATION, :SEARCH

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @UNKNOWN = AndroidGameKey.new(KeyEvent::KEYCODE_UNKNOWN, "UNKNOWN")
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
        @SOFT_LEFT = AndroidGameKey.new(KeyEvent::KEYCODE_SOFT_LEFT, "SOFT_LEFT")
        @SOFT_RIGHT = AndroidGameKey.new(KeyEvent::KEYCODE_SOFT_RIGHT, "SOFT_RIGHT")
        @HOME = AndroidGameKey.new(KeyEvent::KEYCODE_HOME, "HOME")
        @BACK = AndroidGameKey.new(KeyEvent::KEYCODE_BACK, "BACK")
        @CALL = AndroidGameKey.new(KeyEvent::KEYCODE_CALL, "CALL")
        @ENDCALL = AndroidGameKey.new(KeyEvent::KEYCODE_ENDCALL, "ENDCALL")
        @ZERO = AndroidGameKey.new(KeyEvent::KEYCODE_0, CommonPhoneStrings.getInstance().ZERO)
        @ONE = AndroidGameKey.new(KeyEvent::KEYCODE_1, CommonPhoneStrings.getInstance().ONE)
        @TWO = AndroidGameKey.new(KeyEvent::KEYCODE_2, CommonPhoneStrings.getInstance().TWO)
        @THREE = AndroidGameKey.new(KeyEvent::KEYCODE_3, CommonPhoneStrings.getInstance().THREE)
        @FOUR = AndroidGameKey.new(KeyEvent::KEYCODE_4, CommonPhoneStrings.getInstance().FOUR)
        @FIVE = AndroidGameKey.new(KeyEvent::KEYCODE_5, CommonPhoneStrings.getInstance().FIVE)
        @SIX = AndroidGameKey.new(KeyEvent::KEYCODE_6, CommonPhoneStrings.getInstance().SIX)
        @SEVEN = AndroidGameKey.new(KeyEvent::KEYCODE_7, CommonPhoneStrings.getInstance().SEVEN)
        @EIGHT = AndroidGameKey.new(KeyEvent::KEYCODE_8, CommonPhoneStrings.getInstance().EIGHT)
        @NINE = AndroidGameKey.new(KeyEvent::KEYCODE_9, CommonPhoneStrings.getInstance().NINE)
        @STAR = AndroidGameKey.new(KeyEvent::KEYCODE_STAR, CommonPhoneStrings.getInstance().STAR)
        @POUND = AndroidGameKey.new(KeyEvent::KEYCODE_POUND, CommonPhoneStrings.getInstance().POUND)
        @DPAD_UP = AndroidGameKey.new(KeyEvent::KEYCODE_DPAD_UP, "UP")
        @DPAD_DOWN = AndroidGameKey.new(KeyEvent::KEYCODE_DPAD_DOWN, "DOWN")
        @DPAD_LEFT = AndroidGameKey.new(KeyEvent::KEYCODE_DPAD_LEFT, "LEFT")
        @DPAD_RIGHT = AndroidGameKey.new(KeyEvent::KEYCODE_DPAD_RIGHT, "RIGHT")
        @DPAD_CENTER = AndroidGameKey.new(KeyEvent::KEYCODE_DPAD_CENTER, "CENTER")
        @VOLUME_UP = AndroidGameKey.new(KeyEvent::KEYCODE_VOLUME_UP, "VOLUME_UP")
        @VOLUME_DOWN = AndroidGameKey.new(KeyEvent::KEYCODE_VOLUME_DOWN, "VOLUME_DOWN")
        @POWER = AndroidGameKey.new(KeyEvent::KEYCODE_POWER, "POWER")
        @CAMERA = AndroidGameKey.new(KeyEvent::KEYCODE_CAMERA, "CAMERA")
        @CLEAR = AndroidGameKey.new(KeyEvent::KEYCODE_CLEAR, "CLEAR")
        @A = AndroidGameKey.new(KeyEvent::KEYCODE_A, "A")
        @B = AndroidGameKey.new(KeyEvent::KEYCODE_B, "B")
        @C = AndroidGameKey.new(KeyEvent::KEYCODE_C, "C")
        @D = AndroidGameKey.new(KeyEvent::KEYCODE_D, "D")
        @E = AndroidGameKey.new(KeyEvent::KEYCODE_E, "E")
        @F = AndroidGameKey.new(KeyEvent::KEYCODE_F, "F")
        @G = AndroidGameKey.new(KeyEvent::KEYCODE_G, "G")
        @H = AndroidGameKey.new(KeyEvent::KEYCODE_H, "H")
        @I = AndroidGameKey.new(KeyEvent::KEYCODE_I, "I")
        @J = AndroidGameKey.new(KeyEvent::KEYCODE_J, "J")
        @K = AndroidGameKey.new(KeyEvent::KEYCODE_K, "K")
        @L = AndroidGameKey.new(KeyEvent::KEYCODE_L, "L")
        @M = AndroidGameKey.new(KeyEvent::KEYCODE_M, "M")
        @N = AndroidGameKey.new(KeyEvent::KEYCODE_N, "N")
        @O = AndroidGameKey.new(KeyEvent::KEYCODE_O, "O")
        @P = AndroidGameKey.new(KeyEvent::KEYCODE_P, "P")
        @Q = AndroidGameKey.new(KeyEvent::KEYCODE_Q, "Q")
        @R = AndroidGameKey.new(KeyEvent::KEYCODE_R, "R")
        @S = AndroidGameKey.new(KeyEvent::KEYCODE_S, "S")
        @T = AndroidGameKey.new(KeyEvent::KEYCODE_T, "T")
        @U = AndroidGameKey.new(KeyEvent::KEYCODE_U, "U")
        @V = AndroidGameKey.new(KeyEvent::KEYCODE_V, "V")
        @W = AndroidGameKey.new(KeyEvent::KEYCODE_W, "W")
        @X = AndroidGameKey.new(KeyEvent::KEYCODE_X, "X")
        @Y = AndroidGameKey.new(KeyEvent::KEYCODE_Y, "Y")
        @Z = AndroidGameKey.new(KeyEvent::KEYCODE_Z, "Z")
        @COMMA = AndroidGameKey.new(KeyEvent::KEYCODE_COMMA, "COMMA")
        @PERIOD = AndroidGameKey.new(KeyEvent::KEYCODE_PERIOD, AbPathData.getInstance().EXTENSION_SEP)
        @ALT_LEFT = AndroidGameKey.new(KeyEvent::KEYCODE_ALT_LEFT, "ALT_LEFT")
        @ALT_RIGHT = AndroidGameKey.new(KeyEvent::KEYCODE_ALT_RIGHT, "ALT_RIGHT")
        @SHIFT_LEFT = AndroidGameKey.new(KeyEvent::KEYCODE_SHIFT_LEFT, "SHIFT_LEFT")
        @SHIFT_RIGHT = AndroidGameKey.new(KeyEvent::KEYCODE_SHIFT_RIGHT, "SHIFT_RIGHT")
        @TAB = AndroidGameKey.new(KeyEvent::KEYCODE_TAB, "TAB")
        @SPACE = AndroidGameKey.new(KeyEvent::KEYCODE_SPACE, "SPACE")
        @SYM = AndroidGameKey.new(KeyEvent::KEYCODE_SYM, "SYM")
        @EXPLORER = AndroidGameKey.new(KeyEvent::KEYCODE_EXPLORER, "EXPLORER")
        @ENVELOPE = AndroidGameKey.new(KeyEvent::KEYCODE_ENVELOPE, "ENVELOPE")
        @ENTER = AndroidGameKey.new(KeyEvent::KEYCODE_ENTER, "ENTER")
        @DEL = AndroidGameKey.new(KeyEvent::KEYCODE_DEL, "DEL")
        @GRAVE = AndroidGameKey.new(KeyEvent::KEYCODE_GRAVE, "GRAVE")
        @MINUS = AndroidGameKey.new(KeyEvent::KEYCODE_MINUS, "MINUS")
        @EQUALS = AndroidGameKey.new(KeyEvent::KEYCODE_EQUALS, "EQUALS")
        @LEFT_BRACKET = AndroidGameKey.new(KeyEvent::KEYCODE_LEFT_BRACKET, "LEFT_BRACKET")
        @RIGHT_BRACKET = AndroidGameKey.new(KeyEvent::KEYCODE_RIGHT_BRACKET, "RIGHT_BRACKET")
        @BACKSLASH = AndroidGameKey.new(KeyEvent::KEYCODE_BACKSLASH, "BACKSLASH")
        @SEMICOLON = AndroidGameKey.new(KeyEvent::KEYCODE_SEMICOLON, "SEMICOLON")
        @APOSTROPHE = AndroidGameKey.new(KeyEvent::KEYCODE_APOSTROPHE, "APOSTROPHE")
        @SLASH = AndroidGameKey.new(KeyEvent::KEYCODE_SLASH, "SLASH")
        @AT = AndroidGameKey.new(KeyEvent::KEYCODE_AT, "AT")
        @NUM = AndroidGameKey.new(KeyEvent::KEYCODE_NUM, "NUM")
        @HEADSETHOOK = AndroidGameKey.new(KeyEvent::KEYCODE_HEADSETHOOK, "HEADSETHOOK")
        @FOCUS = AndroidGameKey.new(KeyEvent::KEYCODE_FOCUS, "FOCUS")
        @PLUS = AndroidGameKey.new(KeyEvent::KEYCODE_PLUS, "PLUS")
        @MENU = AndroidGameKey.new(KeyEvent::KEYCODE_MENU, "MENU")
        @NOTIFICATION = AndroidGameKey.new(KeyEvent::KEYCODE_NOTIFICATION, "NOTIFICATION")
        @SEARCH = AndroidGameKey.new(KeyEvent::KEYCODE_SEARCH, "SEARCH")
    end

    def initialize
        super()
        initialize_fields
    end
    

    def init()
        commonStrings = CommonStrings.getInstance()
        @logUtil.putF("Start/End", self, commonStrings.INIT)
    end
    

    def isSubmission(input)
        if input == @ENTER
            return true
        elsif input == @DPAD_CENTER
            return true
        end
        return false
    end
    

    def isDelete(input)
        return false
    end
    

    def isBackSpace(input)
        if input == @DEL
            return true
        end
        return false
    end
    

    def isLeft(input)
        if input == @DPAD_LEFT
            return true
        end
        return false
    end
    

    def isRight(input)
        if input == @DPAD_RIGHT
            return true
        end
        return false
    end
    

    def isUp(input)
        if input == @DPAD_UP
            return true
        end
        return false
    end
    

    def isDown(input)
        if input == @DPAD_DOWN
            return true
        end
        return false
    end
    

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
end

require "android/view/KeyEvent"
require "org/allbinary/string/CommonPhoneStrings"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/game/input/AndroidGameKey"

