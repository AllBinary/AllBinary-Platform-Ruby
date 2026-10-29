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
# package org.allbinary.graphics.opengles.shader


class ShaderStrings
    attr_accessor :NO_PROGRAM_HANDLE, :UNIFORM_BLOCK_HANDLE, :UNIFORM_HANDLE, :UNIFORM_ATTRIBUTE_HANDLE

    def initialize_fields
        @NO_PROGRAM_HANDLE = "No program handle"
        @UNIFORM_BLOCK_HANDLE = "Uniform Block Handle: "
        @UNIFORM_HANDLE = "Uniform Handle: "
        @UNIFORM_ATTRIBUTE_HANDLE = "Uniform Attribute Handle: "
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ShaderStrings.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class ShaderStrings
    @@instance = ShaderStrings.new()
end

