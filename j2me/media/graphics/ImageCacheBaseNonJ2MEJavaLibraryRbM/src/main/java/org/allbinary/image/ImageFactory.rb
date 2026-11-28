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
# package org.allbinary.image


module ::Org; module Allbinary; module Image

#ImageCacheBaseAndroidJavaLibrary
class ImageFactory
    

    def self.getInstance()
        return @@instance
    end
    

    # throws Exception
    def createImageUrl(url)
        return ::Javax::Microedition::Lcdui::Image.createImage(url)
    end
    

    # throws Exception
    def createImage(caller, width, height)
        return ::Javax::Microedition::Lcdui::Image.createImageWH(width, height)
    end
    

    # throws Exception
    def createImageFromInputStream_j2(key, inputStream)
        image = ::Javax::Microedition::Lcdui::Image.createImageFromInputStream(inputStream)
        return image
    end
    

    # throws Exception
    def createImageFromInputStream_j1(inputStream)
        return ::Javax::Microedition::Lcdui::Image.createImageFromInputStream(inputStream)
    end

    def createImageFromInputStream(*java_overload_args)
        return createImageFromInputStream_j2(*java_overload_args) if java_overload_args.length == 2
        return createImageFromInputStream_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method createImageFromInputStream takes #{java_overload_args.length} arguments"
    end

    def self.instance()
        ImageFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ImageFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ImageFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end

begin
    ImageFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

