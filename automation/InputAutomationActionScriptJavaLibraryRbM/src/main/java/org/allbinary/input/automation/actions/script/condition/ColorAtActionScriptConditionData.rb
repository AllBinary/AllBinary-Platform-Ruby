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
# package org.allbinary.input.automation.actions.script.condition


class ColorAtActionScriptConditionData
    

    def initialize()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "COLOR_AT_ACTION_CONDITION_NAME")
        const_set(:LOCATION_X, "COLOR_AT_ACTION_CONDITION_LOCATION_X")
        const_set(:LOCATION_Y, "COLOR_AT_ACTION_CONDITION_LOCATION_Y")
        const_set(:MIN_RED, "COLOR_AT_ACTION_CONDITION_MIN_RED")
        const_set(:MAX_RED, "COLOR_AT_ACTION_CONDITION_MAX_RED")
        const_set(:MIN_GREEN, "COLOR_AT_ACTION_CONDITION_MIN_GREEN")
        const_set(:MAX_GREEN, "COLOR_AT_ACTION_CONDITION_MAX_GREEN")
        const_set(:MIN_BLUE, "COLOR_AT_ACTION_CONDITION_MIN_BLUE")
        const_set(:MAX_BLUE, "COLOR_AT_ACTION_CONDITION_MAX_BLUE")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ColorAtActionScriptConditionData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NAME, :LOCATION_X, :LOCATION_Y, :MIN_RED, :MAX_RED, :MIN_GREEN, :MAX_GREEN, :MIN_BLUE, :MAX_BLUE].include?(name)
        end
        super
    end
end

begin
    ColorAtActionScriptConditionData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

