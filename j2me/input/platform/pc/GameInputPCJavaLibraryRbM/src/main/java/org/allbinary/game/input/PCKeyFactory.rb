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
# package org.allbinary.game.input


class PCKeyFactory
    attr_accessor :keyEventWrapper, :UNKNOWN, :ENTER, :_A, :_B, :_C, :_D, :_E, :_F, :_G, :_H, :_I, :_J, :_K, :_L, :_M, :_N, :_O, :_P, :_Q, :_R, :_S, :_T, :_U, :_V, :_W, :_X, :_Y, :_Z, :a, :b, :c, :d, :e, :f, :g, :h, :i, :j, :k, :l, :m, :n, :o, :p, :q, :r, :s, :t, :u, :v, :w, :x, :y, :z, :ZERO, :ONE, :TWO, :THREE, :FOUR, :FIVE, :SIX, :SEVEN, :EIGHT, :NINE, :DPAD_UP, :DPAD_DOWN, :DPAD_LEFT, :DPAD_RIGHT, :DPAD_UP2, :DPAD_DOWN2, :DPAD_LEFT2, :DPAD_RIGHT2, :COMMA, :SPACE, :DEL, :STAR, :QUESTION, :PERIOD, :ESCAPE, :BACK_SPACE

    def initialize_fields
        @keyEventWrapper = ABKeyEventWrapper.getInstance()
        @UNKNOWN = PCGameKey.new(@keyEventWrapper.VK_UNDEFINED, "UNKNOWN")
        @ENTER = PCGameKey.new(5, "Enter")
        @_A = PCGameKey.new(@keyEventWrapper.VK_A, "A")
        @_B = PCGameKey.new(@keyEventWrapper.VK_B, "B")
        @_C = PCGameKey.new(@keyEventWrapper.VK_C, "C")
        @_D = PCGameKey.new(@keyEventWrapper.VK_D, "D")
        @_E = PCGameKey.new(@keyEventWrapper.VK_E, "E")
        @_F = PCGameKey.new(@keyEventWrapper.VK_F, "F")
        @_G = PCGameKey.new(@keyEventWrapper.VK_G, "G")
        @_H = PCGameKey.new(@keyEventWrapper.VK_H, "H")
        @_I = PCGameKey.new(@keyEventWrapper.VK_I, "I")
        @_J = PCGameKey.new(@keyEventWrapper.VK_J, "J")
        @_K = PCGameKey.new(@keyEventWrapper.VK_K, "K")
        @_L = PCGameKey.new(@keyEventWrapper.VK_L, "L")
        @_M = PCGameKey.new(@keyEventWrapper.VK_M, "M")
        @_N = PCGameKey.new(@keyEventWrapper.VK_N, "N")
        @_O = PCGameKey.new(@keyEventWrapper.VK_O, "O")
        @_P = PCGameKey.new(@keyEventWrapper.VK_P, "P")
        @_Q = PCGameKey.new(@keyEventWrapper.VK_Q, "Q")
        @_R = PCGameKey.new(@keyEventWrapper.VK_R, "R")
        @_S = PCGameKey.new(@keyEventWrapper.VK_S, "S")
        @_T = PCGameKey.new(@keyEventWrapper.VK_T, "T")
        @_U = PCGameKey.new(@keyEventWrapper.VK_U, "U")
        @_V = PCGameKey.new(@keyEventWrapper.VK_V, "V")
        @_W = PCGameKey.new(@keyEventWrapper.VK_W, "W")
        @_X = PCGameKey.new(@keyEventWrapper.VK_X, "X")
        @_Y = PCGameKey.new(@keyEventWrapper.VK_Y, "Y")
        @_Z = PCGameKey.new(@keyEventWrapper.VK_Z, "Z")
        @a = PCGameKey.new(97, "a")
        @b = PCGameKey.new(98, "b")
        @c = PCGameKey.new(99, "c")
        @d = PCGameKey.new(100, "d")
        @e = PCGameKey.new(101, "e")
        @f = PCGameKey.new(102, "f")
        @g = PCGameKey.new(103, "g")
        @h = PCGameKey.new(104, "h")
        @i = PCGameKey.new(105, "i")
        @j = PCGameKey.new(106, "j")
        @k = PCGameKey.new(107, "k")
        @l = PCGameKey.new(108, "l")
        @m = PCGameKey.new(109, "m")
        @n = PCGameKey.new(110, "n")
        @o = PCGameKey.new(111, "o")
        @p = PCGameKey.new(112, "p")
        @q = PCGameKey.new(113, "q")
        @r = PCGameKey.new(114, "r")
        @s = PCGameKey.new(115, "s")
        @t = PCGameKey.new(116, "t")
        @u = PCGameKey.new(117, "u")
        @v = PCGameKey.new(118, "v")
        @w = PCGameKey.new(119, "w")
        @x = PCGameKey.new(120, PositionStrings.getInstance().X)
        @y = PCGameKey.new(121, PositionStrings.getInstance().Y)
        @z = PCGameKey.new(122, "z")
        @ZERO = PCGameKey.new(@keyEventWrapper.VK_0, CommonPhoneStrings.getInstance().ZERO)
        @ONE = PCGameKey.new(@keyEventWrapper.VK_1, CommonPhoneStrings.getInstance().ONE)
        @TWO = PCGameKey.new(@keyEventWrapper.VK_2, CommonPhoneStrings.getInstance().TWO)
        @THREE = PCGameKey.new(@keyEventWrapper.VK_3, CommonPhoneStrings.getInstance().THREE)
        @FOUR = PCGameKey.new(@keyEventWrapper.VK_4, CommonPhoneStrings.getInstance().FOUR)
        @FIVE = PCGameKey.new(@keyEventWrapper.VK_5, CommonPhoneStrings.getInstance().FIVE)
        @SIX = PCGameKey.new(@keyEventWrapper.VK_6, CommonPhoneStrings.getInstance().SIX)
        @SEVEN = PCGameKey.new(@keyEventWrapper.VK_7, CommonPhoneStrings.getInstance().SEVEN)
        @EIGHT = PCGameKey.new(@keyEventWrapper.VK_8, CommonPhoneStrings.getInstance().EIGHT)
        @NINE = PCGameKey.new(@keyEventWrapper.VK_9, CommonPhoneStrings.getInstance().NINE)
        @DPAD_UP = PCGameKey.new(@keyEventWrapper.VK_UP, CommonPhoneStrings.getInstance().UP)
        @DPAD_DOWN = PCGameKey.new(@keyEventWrapper.VK_DOWN, CommonPhoneStrings.getInstance().DOWN)
        @DPAD_LEFT = PCGameKey.new(@keyEventWrapper.VK_LEFT, CommonPhoneStrings.getInstance().LEFT)
        @DPAD_RIGHT = PCGameKey.new(@keyEventWrapper.VK_RIGHT, CommonPhoneStrings.getInstance().RIGHT)
        @DPAD_UP2 = @DPAD_UP
        @DPAD_DOWN2 = @DPAD_DOWN
        @DPAD_LEFT2 = @DPAD_LEFT
        @DPAD_RIGHT2 = @DPAD_RIGHT
        @COMMA = PCGameKey.new(@keyEventWrapper.VK_COMMA, "COMMA")
        @SPACE = PCGameKey.new(@keyEventWrapper.VK_SPACE, "SPACE")
        @DEL = PCGameKey.new(@keyEventWrapper.VK_DELETE, "DEL")
        @STAR = PCGameKey.new(42, CommonPhoneStrings.getInstance().STAR)
        @QUESTION = PCGameKey.new(47, "?")
        @PERIOD = PCGameKey.new(@keyEventWrapper.VK_PERIOD, CommonSeps.getInstance().PERIOD)
        @ESCAPE = PCGameKey.new(@keyEventWrapper.VK_ESCAPE, "Esc")
        @BACK_SPACE = PCGameKey.new(@keyEventWrapper.VK_BACK_SPACE, "Backspace")
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return PCKeyFactory::SINGLETON
    end
    

    def isSubmission(input)
        if input == @ENTER
            return true
        end
        return false
    end
    

    def isDelete(input)
        if input == @DEL
            return true
        end
        return false
    end
    

    def isBackSpace(input)
        if input == @BACK_SPACE
            return true
        end
        return false
    end
    

    def isUp(input)
        if input == @DPAD_UP || input == @DPAD_UP2
            return true
        end
        return false
    end
    

    def isDown(input)
        if input == @DPAD_DOWN || input == @DPAD_DOWN2
            return true
        end
        return false
    end
    

    def isLeft(input)
        if input == @DPAD_LEFT || input == @DPAD_LEFT2
            return true
        end
        return false
    end
    

    def isRight(input)
        if input == @DPAD_RIGHT || input == @DPAD_RIGHT2
            return true
        end
        return false
    end
    

    def isEnter(input)
        if input == @ENTER
            return true
        end
        return false
    end
end

require "org/allbinary/math/PositionStrings"
require "org/allbinary/string/CommonPhoneStrings"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/game/input/PCGameKey"

class PCKeyFactory
    SINGLETON = PCKeyFactory.new()
end

