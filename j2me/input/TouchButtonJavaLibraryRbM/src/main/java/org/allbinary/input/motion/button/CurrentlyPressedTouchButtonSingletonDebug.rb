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
    attr_accessor :string, :listString, :appendText, :PRESSED_AND_FIRED, :PRESSED_AND_NOT_FIRED, :ASSOCIATED_RELEASED_AND_FIRED, :RELEASED_AND_FIRED, :RELEASED_AND_FIRED_2, :RELEASED_AND_NOT_FIRED

    def initialize_fields
        @string = StringUtil.getInstance().EMPTY_STRING
        @listString = StringUtil.getInstance().EMPTY_STRING
        @appendText = StringUtil.getInstance().EMPTY_STRING
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
        @appendText = stringBuffer.to_s
        @string = StringMaker.new().append(@listString).append(@appendText).to_s
    end
    

    def append(append)
        @appendText = StringMaker.new().append(@appendText).append(append).to_s
        @string = StringMaker.new().append(@listString).append(@appendText).to_s
    end
    

    def clearLog(x, y)
        @appendText = StringMaker.new().append(GPoint.toStringStatic(x, y, 0)).append(CommonSeps.getInstance().SPACE).to_s
        @string = StringMaker.new().append(@listString).append(@appendText).to_s
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
        @string = StringMaker.new().append(@listString).append(@appendText).to_s
        return touchButtonInput
    end
    

    def remove(touchButtonInput)
        isRemoved = super(touchButtonInput)
        @listString = @list.to_s
        @string = StringMaker.new().append(@listString).append(@appendText).to_s
        return isRemoved
    end
    

    def add(touchButtonInput)
        super(touchButtonInput)
        @listString = @list.to_s
        @string = StringMaker.new().append(@listString).append(@appendText).to_s
    end
    

    def toString()
        return @string
    end
    alias_method :to_s, :toString

    def self.instanceC()
        CurrentlyPressedTouchButtonSingletonDebug.java_static_fields unless @java_static_fields_started
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        CurrentlyPressedTouchButtonSingletonDebug.java_static_fields unless @java_static_fields_started
        @@instanceC = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instanceC = CurrentlyPressedTouchButtonSingletonDebug.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CurrentlyPressedTouchButtonSingletonDebug"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :GPoint, "org/allbinary/graphics/GPoint"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"
autoload :TouchButtonInput, "org/allbinary/input/motion/button/TouchButtonInput"

begin
    CurrentlyPressedTouchButtonSingletonDebug.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

