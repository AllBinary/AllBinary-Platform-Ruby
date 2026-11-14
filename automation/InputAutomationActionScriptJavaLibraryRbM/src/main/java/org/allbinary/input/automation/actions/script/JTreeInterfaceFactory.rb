# 
# To change this license header, choose License Headers in Project Properties. 
# To change this template file, choose Tools | Templates 
# and open the template in the editor.  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.input.automation.actions.script


class JTreeInterfaceFactory
    attr_accessor :jTreeInterface

    def initialize_fields
        @jTreeInterface = nil
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return JTreeInterfaceFactory.instance
    end
    

    def set(jTreeInterface)
        @jTreeInterface = jTreeInterface
    end
    

    def getJTreeInterface()
        return @jTreeInterface
    end

    def self.instance()
        JTreeInterfaceFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        JTreeInterfaceFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = JTreeInterfaceFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "JTreeInterfaceFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :JTreeInterface, "org/allbinary/input/automation/actions/script/JTreeInterface"

begin
    JTreeInterfaceFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

