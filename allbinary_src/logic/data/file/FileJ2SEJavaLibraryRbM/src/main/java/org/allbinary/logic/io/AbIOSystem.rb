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
# package org.allbinary.logic.io


class AbIOSystem
    attr_accessor :type

    def initialize_fields
        @type = "java.io"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return AbIOSystem.instance
    end
    

    def getType()
        return @type
    end
    

    def isType(type)
        if (@type <=> type) == 0
            return true
        else
            return false
        end
    end

    def self.instance()
        AbIOSystem.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AbIOSystem.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AbIOSystem.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AbIOSystem"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    AbIOSystem.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

