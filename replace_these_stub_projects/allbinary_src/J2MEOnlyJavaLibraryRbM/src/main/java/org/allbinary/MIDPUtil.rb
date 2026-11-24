#
# AllBinary Open License Version 1
# Copyright (c) 2026 AllBinary
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

module ::Org; module Allbinary

#like microemu-playn, so the languages without overloading can be generated. J2ME uses the MIDP overloads.
class MIDPUtil
    

    def self.getInstance()
        return MIDPUtil.instance
    end
    

    def createImageWH(width, height)
        return ::Javax::Microedition::Lcdui::Image.createImage(width, height)
    end
    

    def createImageFromByteArray(imageData, imageOffset, imageLength)
        return ::Javax::Microedition::Lcdui::Image.createImage(imageData, imageOffset, imageLength)
    end
    

    # throws IOException
    def createImageFromInputStream(inputStream)
        return ::Javax::Microedition::Lcdui::Image.createImage(inputStream)
    end
    

    # throws IOException, MediaException
    def createPlayerFromInputStream(inputStream, type)
        return ::Javax::Microedition::Media::Manager.createPlayer(inputStream, type)
    end
    

    def appendItem(form, item)
        return form.append(item)
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

module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Javax; module Microedition; module Lcdui; autoload :Form, "javax/microedition/lcdui/Form" unless const_defined?(:Form, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Item, "javax/microedition/lcdui/Item" unless const_defined?(:Item, false); end; end; end
module ::Javax; module Microedition; module Media; autoload :Manager, "javax/microedition/media/Manager" unless const_defined?(:Manager, false); end; end; end
module ::Javax; module Microedition; module Media; autoload :MediaException, "javax/microedition/media/MediaException" unless const_defined?(:MediaException, false); end; end; end
module ::Javax; module Microedition; module Media; autoload :Player, "javax/microedition/media/Player" unless const_defined?(:Player, false); end; end; end

begin
    MIDPUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end

