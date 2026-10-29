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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class CommonStateStrings
    @@instance = CommonStateStrings.new()
end

