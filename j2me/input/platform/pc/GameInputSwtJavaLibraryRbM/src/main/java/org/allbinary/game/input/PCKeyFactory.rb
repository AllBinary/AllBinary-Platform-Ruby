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
    attr_accessor :UNKNOWN, :ENTER, :_A, :_B, :_C, :_D, :_E, :_F, :_G, :_H, :_I, :_J, :_K, :_L, :_M, :_N, :_O, :_P, :_Q, :_R, :_S, :_T, :_U, :_V, :_W, :_X, :_Y, :_Z, :a, :b, :c, :d, :e, :f, :g, :h, :i, :j, :k, :l, :m, :n, :o, :p, :q, :r, :s, :t, :u, :v, :w, :x, :y, :z, :ZERO, :ONE, :TWO, :THREE, :FOUR, :FIVE, :SIX, :SEVEN, :EIGHT, :NINE, :DPAD_UP, :DPAD_DOWN, :DPAD_LEFT, :DPAD_RIGHT, :DPAD_UP2, :DPAD_DOWN2, :DPAD_LEFT2, :DPAD_RIGHT2, :COMMA, :SPACE, :DEL, :STAR, :QUESTION, :PERIOD, :ESCAPE, :BACK_SPACE

    def initialize_fields
        @UNKNOWN = PCGameKey.new(254, "UNKNOWN")
        @ENTER = PCGameKey.new(13, "Enter")
        @_A = PCGameKey.new(65, "A")
        @_B = PCGameKey.new(66, "B")
        @_C = PCGameKey.new(67, "C")
        @_D = PCGameKey.new(68, "D")
        @_E = PCGameKey.new(69, "E")
        @_F = PCGameKey.new(70, "F")
        @_G = PCGameKey.new(71, "G")
        @_H = PCGameKey.new(72, "H")
        @_I = PCGameKey.new(73, "I")
        @_J = PCGameKey.new(74, "J")
        @_K = PCGameKey.new(75, "K")
        @_L = PCGameKey.new(76, "L")
        @_M = PCGameKey.new(77, "M")
        @_N = PCGameKey.new(78, "N")
        @_O = PCGameKey.new(79, "O")
        @_P = PCGameKey.new(80, "P")
        @_Q = PCGameKey.new(81, "Q")
        @_R = PCGameKey.new(82, "R")
        @_S = PCGameKey.new(83, "S")
        @_T = PCGameKey.new(84, "T")
        @_U = PCGameKey.new(85, "U")
        @_V = PCGameKey.new(86, "V")
        @_W = PCGameKey.new(87, "W")
        @_X = PCGameKey.new(88, "X")
        @_Y = PCGameKey.new(89, "Y")
        @_Z = PCGameKey.new(90, "Z")
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
        @ZERO = PCGameKey.new(48, CommonPhoneStrings.getInstance().ZERO)
        @ONE = PCGameKey.new(49, CommonPhoneStrings.getInstance().ONE)
        @TWO = PCGameKey.new(50, CommonPhoneStrings.getInstance().TWO)
        @THREE = PCGameKey.new(51, CommonPhoneStrings.getInstance().THREE)
        @FOUR = PCGameKey.new(52, CommonPhoneStrings.getInstance().FOUR)
        @FIVE = PCGameKey.new(53, CommonPhoneStrings.getInstance().FIVE)
        @SIX = PCGameKey.new(54, CommonPhoneStrings.getInstance().SIX)
        @SEVEN = PCGameKey.new(55, CommonPhoneStrings.getInstance().SEVEN)
        @EIGHT = PCGameKey.new(56, CommonPhoneStrings.getInstance().EIGHT)
        @NINE = PCGameKey.new(57, CommonPhoneStrings.getInstance().NINE)
        @DPAD_UP = PCGameKey.new(38, CommonPhoneStrings.getInstance().UP)
        @DPAD_DOWN = PCGameKey.new(40, CommonPhoneStrings.getInstance().DOWN)
        @DPAD_LEFT = PCGameKey.new(37, CommonPhoneStrings.getInstance().LEFT)
        @DPAD_RIGHT = PCGameKey.new(39, CommonPhoneStrings.getInstance().RIGHT)
        @DPAD_UP2 = @DPAD_UP
        @DPAD_DOWN2 = @DPAD_DOWN
        @DPAD_LEFT2 = @DPAD_LEFT
        @DPAD_RIGHT2 = @DPAD_RIGHT
        @COMMA = PCGameKey.new(44, "COMMA")
        @SPACE = PCGameKey.new(32, "SPACE")
        @DEL = PCGameKey.new(46, "DEL")
        @STAR = PCGameKey.new(42, CommonPhoneStrings.getInstance().STAR)
        @QUESTION = PCGameKey.new(47, "?")
        @PERIOD = PCGameKey.new(46, CommonSeps.getInstance().PERIOD)
        @ESCAPE = PCGameKey.new(27, "Esc")
        @BACK_SPACE = PCGameKey.new(8, "Backspace")
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

