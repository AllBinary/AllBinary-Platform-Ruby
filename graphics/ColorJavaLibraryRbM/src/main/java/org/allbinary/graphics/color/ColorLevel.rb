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
# package org.allbinary.graphics.color


class ColorLevel
    

    def initialize()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:COLOR_MASK, 0x00FFFFFF)
        const_set(:MIN, 0x44)
        const_set(:AVG, 0x77)
        const_set(:LIGHT, 0xAA)
        const_set(:HIGH, 0xEE)
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ColorLevel"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:COLOR_MASK, :MIN, :AVG, :LIGHT, :HIGH].include?(name)
        end
        super
    end
end

begin
    ColorLevel.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

