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
# package org.allbinary.logic.communication.http


class AcceptableResponseFactory
    attr_accessor :HTML, :WML, :VXML

    def initialize_fields
        @HTML = AcceptableResponse.new("text/html", "html", 0)
        @WML = AcceptableResponse.new("text/wml", "wml", 1)
        @VXML = AcceptableResponse.new("text/vxml", "vxml", 2)
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return AcceptableResponseFactory.instance
    end

    def self.instance()
        AcceptableResponseFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AcceptableResponseFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AcceptableResponseFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AcceptableResponseFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :AcceptableResponse, "org/allbinary/logic/communication/http/AcceptableResponse"

begin
    AcceptableResponseFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

