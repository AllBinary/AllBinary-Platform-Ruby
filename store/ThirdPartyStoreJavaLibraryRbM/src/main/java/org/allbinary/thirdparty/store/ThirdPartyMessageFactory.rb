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
# package org.allbinary.thirdparty.store


class ThirdPartyMessageFactory
    attr_accessor :AUTHORIZED, :NOT_AUTHORIZED, :LINKAGE_ERROR

    def initialize_fields
        @AUTHORIZED = "Authorized"
        @NOT_AUTHORIZED = "Not Authorized"
        @LINKAGE_ERROR = "Linkage Error"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ThirdPartyMessageFactory.instance
    end

    def self.instance()
        ThirdPartyMessageFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ThirdPartyMessageFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ThirdPartyMessageFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ThirdPartyMessageFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    ThirdPartyMessageFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

