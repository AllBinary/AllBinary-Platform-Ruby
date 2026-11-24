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

require "java/lang/JavaOverload"
require "org/allbinary/input/motion/button/CurrentlyPressedTouchButtonSingleton"

module ::Org; module Allbinary; module Input; module Motion; module Button

class CurrentlyPressedTouchButtonSingletonDebug < CurrentlyPressedTouchButtonSingleton
    attr_accessor :string, :listString, :appendText, :PRESSED_AND_FIRED, :PRESSED_AND_NOT_FIRED, :ASSOCIATED_RELEASED_AND_FIRED, :RELEASED_AND_FIRED, :RELEASED_AND_FIRED_2, :RELEASED_AND_NOT_FIRED

    def jfields_org_allbinary_input_motion_button_CurrentlyPressedTouchButtonSingletonDebug
        @string = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @listString = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @appendText = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @PRESSED_AND_FIRED = "pressed & fired"
        @PRESSED_AND_NOT_FIRED = "pressed in button but not fired"
        @ASSOCIATED_RELEASED_AND_FIRED = "assoc. rel & fired"
        @RELEASED_AND_FIRED = "rel & fired 1"
        @RELEASED_AND_FIRED_2 = "rel & fired 2"
        @RELEASED_AND_NOT_FIRED = "rel & not fired"
    end

    def initialize
        super()
        jfields_org_allbinary_input_motion_button_CurrentlyPressedTouchButtonSingletonDebug
    end
    

    def self.getInstance()
        return CurrentlyPressedTouchButtonSingletonDebug.instanceC
    end
    

    def appendTouchButtonInput(append, touchButtonInput)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(touchButtonInput.to_s)
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
        stringBuffer.append(append)
        @appendText = stringBuffer.to_s
        @string = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@listString).append(@appendText).to_s
    end
    java_overload :appendTouchButtonInput, 2
    

    def append(append)
        @appendText = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@appendText).append(append).to_s
        @string = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@listString).append(@appendText).to_s
    end
    java_overload :append, 1
    

    def clearLog(x, y)
        @appendText = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::Graphics::GPoint.toStringStatic(x, y, 0)).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE).to_s
        @string = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@listString).append(@appendText).to_s
    end
    java_overload :clearLog, 2
    

    def releaseAndNotFired()
        self.append(@RELEASED_AND_NOT_FIRED)
    end
    java_overload :releaseAndNotFired, 0
    

    def releaseAndFired(touchButtonInput)
        self.appendTouchButtonInput(@RELEASED_AND_FIRED, touchButtonInput)
    end
    java_overload :releaseAndFired, 1
    

    def releaseAndFired2(touchButtonInput)
        self.appendTouchButtonInput(@RELEASED_AND_FIRED_2, touchButtonInput)
    end
    java_overload :releaseAndFired2, 1
    

    def releaseAndFiredAssociated(touchButtonInput)
        self.appendTouchButtonInput(@ASSOCIATED_RELEASED_AND_FIRED, touchButtonInput)
    end
    java_overload :releaseAndFiredAssociated, 1
    

    def pressedAndFired(touchButtonInput)
        self.appendTouchButtonInput(@PRESSED_AND_FIRED, touchButtonInput)
    end
    java_overload :pressedAndFired, 1
    

    def pressedAndNotFired(touchButtonInput)
        self.appendTouchButtonInput(@PRESSED_AND_NOT_FIRED, touchButtonInput)
    end
    java_overload :pressedAndNotFired, 1
    

    def removeAt(index)
        touchButtonInput = CurrentlyPressedTouchButtonSingletonDebug.superclass.java_super_method(:removeAt, 1).bind(self).call(index)
        @listString = @list.to_s
        @string = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@listString).append(@appendText).to_s
        return touchButtonInput
    end
    java_overload :removeAt, 1
    

    def remove(touchButtonInput)
        isRemoved = CurrentlyPressedTouchButtonSingletonDebug.superclass.java_super_method(:remove, 1).bind(self).call(touchButtonInput)
        @listString = @list.to_s
        @string = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@listString).append(@appendText).to_s
        return isRemoved
    end
    java_overload :remove, 1
    

    def add(touchButtonInput)
        CurrentlyPressedTouchButtonSingletonDebug.superclass.java_super_method(:add, 1).bind(self).call(touchButtonInput)
        @listString = @list.to_s
        @string = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@listString).append(@appendText).to_s
    end
    java_overload :add, 1
    

    def toString()
        return @string
    end
    java_overload :toString, 0
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

module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
autoload :TouchButtonInput, "org/allbinary/input/motion/button/TouchButtonInput" unless const_defined?(:TouchButtonInput, false)

begin
    CurrentlyPressedTouchButtonSingletonDebug.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

