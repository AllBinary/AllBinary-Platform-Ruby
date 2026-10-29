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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/input/automation/actions/script/JTreeInterface"

class JTreeInterfaceFactory
    @@instance = JTreeInterfaceFactory.new()
end

