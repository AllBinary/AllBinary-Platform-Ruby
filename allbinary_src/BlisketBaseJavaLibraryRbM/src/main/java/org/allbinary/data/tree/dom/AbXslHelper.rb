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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/data/tree/dom/XslHelper"

class AbXslHelper
    @@instance = AbXslHelper.new()
end

