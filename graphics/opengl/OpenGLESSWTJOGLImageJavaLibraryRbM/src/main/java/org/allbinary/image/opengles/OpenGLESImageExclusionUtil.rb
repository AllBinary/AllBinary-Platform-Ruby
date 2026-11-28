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

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Image; module Opengles

class OpenGLESImageExclusionUtil
    attr_accessor :EXCLUSION, :list

    def jfields_org_allbinary_image_opengles_OpenGLESImageExclusionUtil
        @EXCLUSION = "font"
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_image_opengles_OpenGLESImageExclusionUtil
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
        OpenGLESImageExclusionUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        OpenGLESImageExclusionUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = OpenGLESImageExclusionUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OpenGLESImageExclusionUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

begin
    OpenGLESImageExclusionUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

