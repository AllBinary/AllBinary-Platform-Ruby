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
# package org.allbinary.android.api30

require "java/lang/JavaOverload"
require "org/allbinary/android/api5/ActivityFractureUtilAPI5"

module ::Org; module Allbinary; module Android; module Api30

class ActivityFractureUtilAPI30 < ::Org::Allbinary::Android::Api5::ActivityFractureUtilAPI5
    

    def self.getInstance()
        return ActivityFractureUtilAPI30.instance30
    end
    

    def setFullScreen(activity)
        window = activity.getWindow()
        windowInsetsController = ::Androidx::Core::View::WindowCompat.getInsetsController(window, window.getDecorView())
        windowInsetsController.hide(::Androidx::Core::View::WindowInsetsCompat::Type.systemBars())
        windowInsetsController.setSystemBarsBehavior(::Androidx::Core::View::WindowInsetsControllerCompat::BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE)
    end
    java_overload :setFullScreen, 1

    def self.instance30()
        ActivityFractureUtilAPI30.java_static_fields unless @java_static_fields_started
        return defined?(@@instance30) ? @@instance30 : nil
    end

    def self.instance30=(value)
        ActivityFractureUtilAPI30.java_static_fields unless @java_static_fields_started
        @@instance30 = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance30 = ActivityFractureUtilAPI30.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ActivityFractureUtilAPI30"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Android; module App; autoload :Activity, "android/app/Activity" unless const_defined?(:Activity, false); end; end
module ::Android; module View; autoload :Window, "android/view/Window" unless const_defined?(:Window, false); end; end
module ::Androidx; module Core; module View; autoload :WindowCompat, "androidx/core/view/WindowCompat" unless const_defined?(:WindowCompat, false); end; end; end
module ::Androidx; module Core; module View; autoload :WindowInsetsCompat, "androidx/core/view/WindowInsetsCompat" unless const_defined?(:WindowInsetsCompat, false); end; end; end
module ::Androidx; module Core; module View; autoload :WindowInsetsControllerCompat, "androidx/core/view/WindowInsetsControllerCompat" unless const_defined?(:WindowInsetsControllerCompat, false); end; end; end

begin
    ActivityFractureUtilAPI30.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

