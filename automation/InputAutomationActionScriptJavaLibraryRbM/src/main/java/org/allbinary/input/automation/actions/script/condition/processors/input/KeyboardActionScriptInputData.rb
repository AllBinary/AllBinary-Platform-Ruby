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
# package org.allbinary.input.automation.actions.script.condition.processors.input


class KeyboardActionScriptInputData
    

    def initialize()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "KEY_ACTION_INPUT_NAME")
        const_set(:KEY, "KEY_ACTION_INPUT_KEY")
        const_set(:DELAY_BETWEEN_KEYS, "KEY_ACTION_INPUT_DELAY_BETWEEN_KEYS")
        const_set(:PRESS, "KEY_ACTION_INPUT_PRESS")
        const_set(:RELEASE, "KEY_ACTION_INPUT_RELEASE")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "KeyboardActionScriptInputData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NAME, :KEY, :DELAY_BETWEEN_KEYS, :PRESS, :RELEASE].include?(name)
        end
        super
    end
end

begin
    KeyboardActionScriptInputData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

