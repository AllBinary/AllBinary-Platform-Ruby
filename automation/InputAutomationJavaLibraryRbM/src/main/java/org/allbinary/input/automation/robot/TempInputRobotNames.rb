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
# package org.allbinary.input.automation.robot


class TempInputRobotNames
    

    def initialize()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:LOW_NAME, "Low Level")
        const_set(:SYS_NAME, "System Drivers")
        const_set(:DX_NAME, "DirectX")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TempInputRobotNames"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:LOW_NAME, :SYS_NAME, :DX_NAME].include?(name)
        end
        super
    end
end

begin
    TempInputRobotNames.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

