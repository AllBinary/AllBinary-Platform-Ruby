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
# package org.allbinary.string


class CommonStateStrings
    attr_accessor :CONTEXT, :FINISH, :CREATE, :START, :RESTART, :RESUME, :PAUSE, :STOP, :DESTROY, :BIND, :ON_SAVE_INSTANCE_STATE, :ON_START_COMMAND

    def initialize_fields
        @CONTEXT = "Context: "
        @FINISH = "finish"
        @CREATE = "onCreate"
        @START = "onStart"
        @RESTART = "onRestart"
        @RESUME = "onResume"
        @PAUSE = "onPause"
        @STOP = "onStop"
        @DESTROY = "onDestroy"
        @BIND = "onBind"
        @ON_SAVE_INSTANCE_STATE = "onSaveInstanceState"
        @ON_START_COMMAND = "onStartCommand"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return CommonStateStrings.instance
    end

    def self.instance()
        CommonStateStrings.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        CommonStateStrings.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = CommonStateStrings.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CommonStateStrings"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    CommonStateStrings.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

