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
# package org.allbinary.emulator.swt

require "org/allbinary/emulator/swt/SWTProcessor"

class SWTRunnableProcessor < SWTProcessor
    

    def self.getInstance()
        return SWTRunnableProcessor.instanceR
    end
    

    def process(display)
    end

    def self.instanceR()
        SWTRunnableProcessor.java_static_fields unless @java_static_fields_started
        return defined?(@@instanceR) ? @@instanceR : nil
    end

    def self.instanceR=(value)
        SWTRunnableProcessor.java_static_fields unless @java_static_fields_started
        @@instanceR = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instanceR = SWTRunnableProcessor.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SWTRunnableProcessor"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Display, "org/eclipse/swt/widgets/Display"

begin
    SWTRunnableProcessor.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

