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
# package org.allbinary.input.automation.module.actions.script.condition.processors.output


class ImageActionScriptOutputData
    

    def initialize()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "IMAGE_ACTION_OUTPUT_NAME")
        const_set(:SAVE, "SAVE_IMAGE_ACTION_OUTPUT_NAME")
        const_set(:DISPLAY, "DISPLAY_IMAGE_ACTION_OUTPUT_NAME")
        const_set(:TYPE, "TYPE_IMAGE_ACTION_OUTPUT_NAME")
        const_set(:TYPES, "TYPES_IMAGE_ACTION_OUTPUT_NAME")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageActionScriptOutputData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NAME, :SAVE, :DISPLAY, :TYPE, :TYPES].include?(name)
        end
        super
    end
end

begin
    ImageActionScriptOutputData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

