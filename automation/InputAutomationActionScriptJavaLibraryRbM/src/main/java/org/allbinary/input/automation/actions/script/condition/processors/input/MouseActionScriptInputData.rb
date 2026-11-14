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


class MouseActionScriptInputData
    

    def initialize()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "MOUSE_ACTION_INPUT_NAME")
        const_set(:BUTTONS, "MOUSE_ACTION_INPUT_BUTTONS")
        const_set(:MOVE, "MOUSE_ACTION_INPUT_MOVE")
        const_set(:MOVE_X, "MOUSE_ACTION_INPUT_MOVE_X")
        const_set(:MOVE_Y, "MOUSE_ACTION_INPUT_MOVE_Y")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MouseActionScriptInputData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NAME, :BUTTONS, :MOVE, :MOVE_X, :MOVE_Y].include?(name)
        end
        super
    end
end

begin
    MouseActionScriptInputData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

