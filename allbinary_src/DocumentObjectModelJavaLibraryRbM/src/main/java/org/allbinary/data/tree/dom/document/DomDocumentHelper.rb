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
# package org.allbinary.data.tree.dom.document

# require "java/io/InputStream"
# require "java/io/StringBufferInputStream"
# require "javax/xml/parsers/DocumentBuilder"
# require "javax/xml/parsers/DocumentBuilderFactory"

class DomDocumentHelper
    

    def initialize()
    end
    

    def self.init()
        System.setProperty("jdk.xml.maxElementDepth", "0")
        System.setProperty("jdk.xml.xpathExprOpLimit", "0")
        System.setProperty("jdk.xml.xpathTotalOpLimit", "0")
        _LIMIT = "500000"
        System.setProperty("jdk.xml.maxGeneralEntitySizeLimit", _LIMIT)
        System.setProperty("jdk.xml.totalEntitySizeLimit", _LIMIT)
    end
    

    def self.create()
        begin
            factory = DocumentBuilderFactory.newInstance()
            builder = factory.newDocumentBuilder()
            document = builder.newDocument()
            return document
        rescue StandardError => e
            return nil
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def self.create(inputStream)
        begin
            factory = DocumentBuilderFactory.newInstance()
            builder = factory.newDocumentBuilder()
            document = builder.parse(inputStream)
            return document
        rescue StandardError => e
            raise e
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def self.create(xmlString)
        begin
            factory = DocumentBuilderFactory.newInstance()
            builder = factory.newDocumentBuilder()
            document = builder.parse(StringBufferInputStream.new(xmlString))
            return document
        rescue StandardError => e
            raise e
        end
    end
end

require "org/w3c/dom/Document"
require "java/lang/System"

