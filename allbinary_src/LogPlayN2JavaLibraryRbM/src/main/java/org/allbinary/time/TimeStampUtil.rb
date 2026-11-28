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
# package org.allbinary.time


module ::Org; module Allbinary; module TimePackage

#ActualPlatform
class TimeStampUtil
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
    end
    

    def getAsString()
        simpleDataFormat = ::Com::Google::Gwt::I18n::Client::DateTimeFormat.getFormat("yyyy-MM-dd HH:mm:ss.SSS")
        date = ::Java::Util::Date.new()
        return simpleDataFormat.format(date)
    end

    def self.instance()
        TimeStampUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TimeStampUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TimeStampUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TimeStampUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Com; module Google; module Gwt; module I18n; module Client; autoload :DateTimeFormat, "com/google/gwt/i18n/client/DateTimeFormat" unless const_defined?(:DateTimeFormat, false); end; end; end; end; end
module ::Java; module Util; autoload :Date, "java/util/Date" unless const_defined?(:Date, false); end; end

begin
    TimeStampUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

