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


class Shader
    attr_accessor :shaderName, :shaderStringList, :shaderAsString, :shaderHandle

    def initialize_fields
        @shaderName = nil
        @shaderStringList = nil
        @shaderAsString = nil
        @shaderHandle = 0
    end

    def initialize
        initialize_fields
    end
end

require "org/allbinary/util/BasicArrayList"

