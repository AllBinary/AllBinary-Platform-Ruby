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
# package org.allbinary.input.motion.button

require "org/allbinary/input/motion/button/CurrentlyPressedTouchButtonSingleton"

class CurrentlyPressedTouchButtonSingletonDebug < CurrentlyPressedTouchButtonSingleton
    attr_accessor :string, :listString, :append, :PRESSED_AND_FIRED, :PRESSED_AND_NOT_FIRED, :ASSOCIATED_RELEASED_AND_FIRED, :RELEASED_AND_FIRED, :RELEASED_AND_FIRED_2, :RELEASED_AND_NOT_FIRED

    def initialize_fields
        @string = StringUtil.getInstance().EMPTY_STRING
        @listString = StringUtil.getInstance().EMPTY_STRING
        @append = StringUtil.getInstance().EMPTY_STRING
        @PRESSED_AND_FIRED = "pressed & fired"
        @PRESSED_AND_NOT_FIRED = "pressed in button but not fired"
        @ASSOCIATED_RELEASED_AND_FIRED = "assoc. rel & fired"
        @RELEASED_AND_FIRED = "rel & fired 1"
        @RELEASED_AND_FIRED_2 = "rel & fired 2"
        @RELEASED_AND_NOT_FIRED = "rel & not fired"
    end

    def initialize
        super()
        initialize_fields
    end
    

    def self.getInstance()
        return CurrentlyPressedTouchButtonSingletonDebug.instanceC
    end
    

    def appendTouchButtonInput(append, touchButtonInput)
        stringBuffer = StringMaker.new()
        stringBuffer.append(touchButtonInput.to_s)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(append)
        @append = stringBuffer.to_s
        @string = StringMaker.new().append(@listString).append(@append).to_s
    end
    

    def append(append)
        @append = StringMaker.new().append(@append).append(append).to_s
        @string = StringMaker.new().append(@listString).append(@append).to_s
    end
    

    def clearLog(x, y)
        @append = StringMaker.new().append(GPoint.toStringStatic(x, y, 0)).append(CommonSeps.getInstance().SPACE).to_s
        @string = StringMaker.new().append(@listString).append(@append).to_s
    end
    

    def releaseAndNotFired()
        self.append(@RELEASED_AND_NOT_FIRED)
    end
    

    def releaseAndFired(touchButtonInput)
        self.appendTouchButtonInput(@RELEASED_AND_FIRED, touchButtonInput)
    end
    

    def releaseAndFired2(touchButtonInput)
        self.appendTouchButtonInput(@RELEASED_AND_FIRED_2, touchButtonInput)
    end
    

    def releaseAndFiredAssociated(touchButtonInput)
        self.appendTouchButtonInput(@ASSOCIATED_RELEASED_AND_FIRED, touchButtonInput)
    end
    

    def pressedAndFired(touchButtonInput)
        self.appendTouchButtonInput(@PRESSED_AND_FIRED, touchButtonInput)
    end
    

    def pressedAndNotFired(touchButtonInput)
        self.appendTouchButtonInput(@PRESSED_AND_NOT_FIRED, touchButtonInput)
    end
    

    def removeAt(index)
        touchButtonInput = super(index)
        @listString = @list.to_s
        @string = StringMaker.new().append(@listString).append(@append).to_s
        return touchButtonInput
    end
    

    def remove(touchButtonInput)
        isRemoved = super(touchButtonInput)
        @listString = @list.to_s
        @string = StringMaker.new().append(@listString).append(@append).to_s
        return isRemoved
    end
    

    def add(touchButtonInput)
        super(touchButtonInput)
        @listString = @list.to_s
        @string = StringMaker.new().append(@listString).append(@append).to_s
    end
    

    def toString()
        return @string
    end
    alias_method :to_s, :toString

    def self.instanceC()
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        @@instanceC = value
    end
end

require "org/allbinary/graphics/GPoint"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/input/motion/button/TouchButtonInput"

class CurrentlyPressedTouchButtonSingletonDebug
    @@instanceC = CurrentlyPressedTouchButtonSingletonDebug.new()
end

