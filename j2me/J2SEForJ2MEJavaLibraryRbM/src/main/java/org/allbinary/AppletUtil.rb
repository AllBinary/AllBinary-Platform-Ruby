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
# package org.allbinary


#import org.allbinary.logic.communication.log.PreLogUtil;
class AppletUtil
    

    def initialize()
    end
    

    def self.setApplet()
        AppletUtil.applet = true
    end
    

    def self.isAppletLoader(anyType)
        return AppletUtil.applet
    end

    def self.applet()
        AppletUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@applet) ? @@applet : nil
    end

    def self.applet=(value)
        AppletUtil.java_static_fields unless @java_static_fields_started
        @@applet = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        @@applet = false
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AppletUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    AppletUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

