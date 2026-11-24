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
# package org.allbinary.animation.image

require "java/lang/JavaOverload"
require "org/allbinary/animation/image/ModifierBaseProcessor"

module ::Org; module Allbinary; module Animation; module Image

class AlphaProcessor < ModifierBaseProcessor
    

    def self.getInstance()
        return AlphaProcessor.instanceC
    end
    

    def updateAlpha(imageModifierUtil, originalImage, imageToShow, index, alpha)
        imageModifierUtil.setAlpha(originalImage, imageToShow, index, alpha)
    end
    java_overload :updateAlpha, 5

    def self.instanceC()
        AlphaProcessor.java_static_fields unless @java_static_fields_started
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        AlphaProcessor.java_static_fields unless @java_static_fields_started
        @@instanceC = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instanceC = AlphaProcessor.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AlphaProcessor"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageModifierUtil, "org/allbinary/media/image/ImageModifierUtil" unless const_defined?(:ImageModifierUtil, false); end; end; end; end

begin
    AlphaProcessor.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

