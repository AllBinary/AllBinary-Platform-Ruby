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
# package org.allbinary.image.opengles

# require "javax/microedition/lcdui/Image"

class OpenGLESImageExclusionUtil
    attr_accessor :EXCLUSION, :list

    def initialize_fields
        @EXCLUSION = "font"
        @list = BasicArrayListD.new()
    end
    

    def self.getInstance()
        return OpenGLESImageExclusionUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def isCustomScaling(image)
        imageName = image.getName()
        isNormalScaling = @list.size() == 0 || imageName.start_with?(@EXCLUSION)
        if isNormalScaling
            return false
        else
            size = @list.size()
            name = nil
            (0...size).each do |index|
                name = @list.get(index)
                if imageName.start_with?(name)
                    isNormalScaling = true
                end
            end
        end
        if isNormalScaling
            return false
        else
            return true
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

class OpenGLESImageExclusionUtil
    @@instance = OpenGLESImageExclusionUtil.new()
end

