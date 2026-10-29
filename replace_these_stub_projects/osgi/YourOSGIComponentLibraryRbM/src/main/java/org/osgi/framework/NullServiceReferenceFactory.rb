# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.osgi.framework


class NullServiceReferenceFactory
    attr_accessor :NULL_SERVICE_REFERENCE

    def initialize_fields
        @NULL_SERVICE_REFERENCE = NullServiceReference.new()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return NullServiceReferenceFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/osgi/framework/NullServiceReference"

class NullServiceReferenceFactory
    @@instance = NullServiceReferenceFactory.new()
end

