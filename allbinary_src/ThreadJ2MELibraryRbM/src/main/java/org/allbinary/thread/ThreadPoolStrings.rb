# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.thread


class ThreadPoolStrings
    attr_accessor :ADD_TASK, :START_TASK, :COMPLETE_TASK

    def initialize_fields
        @ADD_TASK = "addTask"
        @START_TASK = "Started Task: "
        @COMPLETE_TASK = "Completed Task: "
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ThreadPoolStrings.instance
    end

    def self.instance()
        ThreadPoolStrings.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ThreadPoolStrings.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ThreadPoolStrings.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ThreadPoolStrings"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    ThreadPoolStrings.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

