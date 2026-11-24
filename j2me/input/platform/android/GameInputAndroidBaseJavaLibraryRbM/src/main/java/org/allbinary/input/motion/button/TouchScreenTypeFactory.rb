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

class TouchScreenTypeFactory
    

    def self.getInstance()
        return TouchScreenTypeFactory.instance
    end
    

    def update(activity)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        touchScreenFactory = TouchScreenFactory.getInstance()
        touchScreenTypesFactory = TouchScreenTypesFactory.getInstance()
        configuration = activity.getResources().getConfiguration()
        touchScreen = configuration.touchscreen
        if touchScreen == ::Android::Content::Res::Configuration::TOUCHSCREEN_FINGER
            touchScreenFactory.setTouchScreenType(touchScreenTypesFactory.FINGER)
            if !touchScreenFactory.isTouch()
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("Not Really Exception: This indicates that a touch screen does exist but is not API8 so we will try it", self, commonStrings.PROCESS)
                touchScreenFactory.setTouch(true)
            end
        elsif touchScreen == ::Android::Content::Res::Configuration::TOUCHSCREEN_STYLUS
            touchScreenFactory.setTouchScreenType(touchScreenTypesFactory.STYLUS)
            if !touchScreenFactory.isTouch()
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("Not Really Exception: This indicates that a touch screen does exist but is not API8 so we will try it", self, commonStrings.PROCESS)
                touchScreenFactory.setTouch(true)
            end
        elsif touchScreen == ::Android::Content::Res::Configuration::TOUCHSCREEN_NOTOUCH
            touchScreenFactory.setTouchScreenType(touchScreenTypesFactory.NOTOUCH)
        elsif touchScreen == ::Android::Content::Res::Configuration::TOUCHSCREEN_UNDEFINED
            touchScreenFactory.setTouchScreenType(touchScreenTypesFactory.UNDEFINED)
        end
    end

    def self.instance()
        TouchScreenTypeFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TouchScreenTypeFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TouchScreenTypeFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TouchScreenTypeFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Android; module App; autoload :Activity, "android/app/Activity" unless const_defined?(:Activity, false); end; end
module ::Android; module Content; module Res; autoload :Configuration, "android/content/res/Configuration" unless const_defined?(:Configuration, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
autoload :TouchScreenFactory, "org/allbinary/input/motion/button/TouchScreenFactory" unless const_defined?(:TouchScreenFactory, false)
autoload :TouchScreenTypesFactory, "org/allbinary/input/motion/button/TouchScreenTypesFactory" unless const_defined?(:TouchScreenTypesFactory, false)

begin
    TouchScreenTypeFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

