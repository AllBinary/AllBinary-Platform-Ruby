#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
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
# package org.allbinary

# require "java/io/IOException"

#like microemu-playn, so the languages without overloading can be generated. The J2ME version uses the MIDP overloads.
class MIDPUtil
    

    def self.getInstance()
        return MIDPUtil.instance
    end
    

    def createImageWH(width, height)
        return Image.createImageWH(width, height)
    end
    

    def createImageFromByteArray(imageData, imageOffset, imageLength)
        return Image.createImageFromByteArray(imageData, imageOffset, imageLength)
    end
    

    # throws IOException
    def createImageFromInputStream(inputStream)
        return Image.createImageFromInputStream(inputStream)
    end
    

    # throws IOException, MediaException
    def createPlayerFromInputStream(inputStream, type)
        return Manager.createPlayerFromInputStream(inputStream, type)
    end
    

    def appendItem(form, item)
        return form.appendItem(item)
    end

    def self.instance()
        MIDPUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        MIDPUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = MIDPUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MIDPUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :InputStream, "java/io/InputStream"
autoload :Form, "javax/microedition/lcdui/Form"
autoload :Image, "javax/microedition/lcdui/Image"
autoload :Item, "javax/microedition/lcdui/Item"
autoload :Manager, "javax/microedition/media/Manager"
autoload :MediaException, "javax/microedition/media/MediaException"
autoload :Player, "javax/microedition/media/Player"

begin
    MIDPUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

