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
# package org.allbinary.data.tree.dom

# require "java/io/ByteArrayOutputStream"
# require "javax/xml/transform/stream/StreamResult"
# require "javax/xml/transform/stream/StreamSource"

class AbXslHelper
    

    def self.getInstance()
        return AbXslHelper.instance
    end
    

    # throws Exception
    def translate(xslFile, xmlFile)
        return self.translate(xslFile.getAbsolutePath(), xmlFile.getAbsolutePath())
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def translate(xslPath, xmlPath)
        return self.translate(xslPath.getPath(), xmlPath.getPath())
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def translate(xsltFilePath, xmlFilePath)
        begin
            outputStream = ByteArrayOutputStream.new()
            return XslHelper.getInstance().translate(StreamSource.new(xsltFilePath), StreamSource.new(xmlFilePath), StreamResult.new(outputStream)).to_s
        rescue StandardError => e
            raise e
        end
    end

    def self.instance()
        AbXslHelper.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AbXslHelper.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AbXslHelper.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AbXslHelper"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :AbFile, "org/allbinary/logic/io/file/AbFile"
autoload :AbPath, "org/allbinary/logic/io/path/AbPath"
autoload :XslHelper, "org/allbinary/data/tree/dom/XslHelper"

begin
    AbXslHelper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

