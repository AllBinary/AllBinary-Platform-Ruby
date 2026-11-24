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
# package org.allbinary.android.api16

require "java/lang/JavaOverload"
require "org/allbinary/android/api5/ActivityFractureUtilAPI5"

module ::Org; module Allbinary; module Android; module Api16

class ActivityFractureUtilAPI16 < ::Org::Allbinary::Android::Api5::ActivityFractureUtilAPI5
    

    def self.getInstance()
        return ActivityFractureUtilAPI16.instance16
    end
    

    def setFullScreen(activity)
        decorView = activity.getWindow().getDecorView()
        visibility = ::Android::View::View::SYSTEM_UI_FLAG_HIDE_NAVIGATION | ::Android::View::View::SYSTEM_UI_FLAG_FULLSCREEN
        decorView.setSystemUiVisibility(visibility)
    end
    java_overload :setFullScreen, 1

    def self.instance16()
        ActivityFractureUtilAPI16.java_static_fields unless @java_static_fields_started
        return defined?(@@instance16) ? @@instance16 : nil
    end

    def self.instance16=(value)
        ActivityFractureUtilAPI16.java_static_fields unless @java_static_fields_started
        @@instance16 = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance16 = ActivityFractureUtilAPI16.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ActivityFractureUtilAPI16"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Android; module App; autoload :Activity, "android/app/Activity" unless const_defined?(:Activity, false); end; end
module ::Android; module View; autoload :View, "android/view/View" unless const_defined?(:View, false); end; end

begin
    ActivityFractureUtilAPI16.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

