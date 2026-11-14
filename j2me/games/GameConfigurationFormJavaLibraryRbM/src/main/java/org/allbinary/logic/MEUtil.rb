# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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
# package org.allbinary.logic


#Handle the differences in the public platform vs the raw JS build
class MEUtil
    

    def self.getInstance()
        return MEUtil.instance
    end
    

    def appendItem(form, item)
        MIDPUtil.getInstance().appendItem(form, item)
    end

    def self.instance()
        MEUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        MEUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = MEUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MEUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Item, "javax/microedition/lcdui/Item"
autoload :MIDPUtil, "org/allbinary/MIDPUtil"
autoload :CommandForm, "org/allbinary/graphics/displayable/screen/CommandForm"

begin
    MEUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

