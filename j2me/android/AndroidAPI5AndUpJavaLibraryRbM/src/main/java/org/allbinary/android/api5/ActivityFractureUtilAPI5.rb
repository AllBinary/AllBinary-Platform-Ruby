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
# package org.allbinary.android.api5

require "java/lang/JavaOverload"
require "org/allbinary/android/api1/ActivityFractureUtilAPI1"

module ::Org; module Allbinary; module Android; module Api5

class ActivityFractureUtilAPI5 < ::Org::Allbinary::Android::Api1::ActivityFractureUtilAPI1
    attr_accessor :FEATURE_TOUCHSCREEN_MULTITOUCH, :FEATURE_TOUCHSCREEN, :FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT

    def jfields_org_allbinary_android_api5_ActivityFractureUtilAPI5
        @FEATURE_TOUCHSCREEN_MULTITOUCH = "android.hardware.touchscreen.multitouch"
        @FEATURE_TOUCHSCREEN = "android.hardware.touchscreen"
        @FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT = "android.hardware.touchscreen.multitouch.distinct"
    end

    def initialize
        super()
        jfields_org_allbinary_android_api5_ActivityFractureUtilAPI5
    end
    

    def self.getInstance()
        return ActivityFractureUtilAPI5.instance5
    end
    

    def process(activity)
        touchScreenFactory = ::Org::Allbinary::Input::Motion::Button::TouchScreenFactory.getInstance()
        touchScreenTypeFactory = ::Org::Allbinary::Input::Motion::Button::TouchScreenTypeFactory.getInstance()
        touchScreenFactory.setTouch(self.isTouch(activity))
        touchScreenFactory.setMultiTouch(self.isMultiTouch(activity))
        touchScreenFactory.setMultiTouchDistinct(self.isMultiTouchDistinct(activity))
        touchScreenTypeFactory.update(activity)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(touchScreenFactory.to_s, self, commonStrings.PROCESS)
    end
    java_overload :process, 1
    

    def isTouch(activity)
        return self.isFeature(activity, @FEATURE_TOUCHSCREEN)
    end
    java_overload :isTouch, 1
    

    def isMultiTouch(activity)
        return self.isFeature(activity, @FEATURE_TOUCHSCREEN_MULTITOUCH)
    end
    java_overload :isMultiTouch, 1
    

    def isMultiTouchDistinct(activity)
        return self.isFeature(activity, @FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT)
    end
    java_overload :isMultiTouchDistinct, 1
    

    def isFeature(activity, property)
        return activity.getPackageManager().hasSystemFeature(property)
    end
    java_overload :isFeature, 2

    def self.instance5()
        ActivityFractureUtilAPI5.java_static_fields unless @java_static_fields_started
        return defined?(@@instance5) ? @@instance5 : nil
    end

    def self.instance5=(value)
        ActivityFractureUtilAPI5.java_static_fields unless @java_static_fields_started
        @@instance5 = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance5 = ActivityFractureUtilAPI5.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ActivityFractureUtilAPI5"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Android; module App; autoload :Activity, "android/app/Activity" unless const_defined?(:Activity, false); end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :TouchScreenTypeFactory, "org/allbinary/input/motion/button/TouchScreenTypeFactory" unless const_defined?(:TouchScreenTypeFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :TouchScreenFactory, "org/allbinary/input/motion/button/TouchScreenFactory" unless const_defined?(:TouchScreenFactory, false); end; end; end; end; end

begin
    ActivityFractureUtilAPI5.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

