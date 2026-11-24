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


module ::Org; module Allbinary; module Input; module Motion; module Button

class TouchScreenFactory
    attr_accessor :logUtil, :touch, :multiTouch, :multiTouchDistinct, :touchScreenType

    def jfields_org_allbinary_input_motion_button_TouchScreenFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @touch = false unless instance_variable_defined?(:@touch)
        @multiTouch = false unless instance_variable_defined?(:@multiTouch)
        @multiTouchDistinct = false unless instance_variable_defined?(:@multiTouchDistinct)
        @touchScreenType = TouchScreenTypesFactory.getInstance().NOTOUCH
    end
    

    def initialize()
        jfields_org_allbinary_input_motion_button_TouchScreenFactory
        begin
            self.setTouch(true)
            self.setMultiTouch(false)
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, TouchScreenFactory::SINGLETON, commonStrings.GET_INSTANCE, e)
        end
    end
    

    def self.getInstance()
        return TouchScreenFactory::SINGLETON
    end
    

    def setMultiTouch(multiTouch)
        @multiTouch = multiTouch
    end
    

    def isMultiTouch()
        return @multiTouch
    end
    

    def setTouch(touch)
        @touch = touch
    end
    

    def isTouch()
        return @touch
    end
    

    def setMultiTouchDistinct(multiTouchDistinct)
        @multiTouchDistinct = multiTouchDistinct
    end
    

    def isMultiTouchDistinct()
        return @multiTouchDistinct
    end
    

    def setTouchScreenType(touchScreenType)
        @touchScreenType = touchScreenType
    end
    

    def getTouchScreenType()
        return @touchScreenType
    end
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("TouchScreen: ")
        stringBuffer.appendboolean(self.isTouch())
        stringBuffer.append(" MultiTouch: ")
        stringBuffer.appendboolean(self.isMultiTouch())
        stringBuffer.append(" Distinct MultiTouch: ")
        stringBuffer.appendboolean(self.isMultiTouchDistinct())
        stringBuffer.append(" TouchScreenType: ")
        stringBuffer.append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(self.getTouchScreenType()))
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, TouchScreenFactory.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TouchScreenFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :TouchScreenType, "org/allbinary/input/motion/button/TouchScreenType" unless const_defined?(:TouchScreenType, false)
autoload :TouchScreenTypesFactory, "org/allbinary/input/motion/button/TouchScreenTypesFactory" unless const_defined?(:TouchScreenTypesFactory, false)

begin
    TouchScreenFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

