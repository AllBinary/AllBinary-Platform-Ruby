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


class BasicColorSetUtil
    

    def self.getInstance()
        return BasicColorSetUtil.instance
    end
    

    def initialize()
    end
    

    def setBasicColorP(graphics, basicColor)
        graphics.setColor(basicColor.to_i)
    end
    

    def setBasicColorP3(graphics, basicColor, value)
        graphics.setColor(value)
    end

    def self.instance()
        BasicColorSetUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BasicColorSetUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = BasicColorSetUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicColorSetUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"

begin
    BasicColorSetUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

