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
# package org.allbinary.data.tree.dom.document

# require "java/io/ByteArrayOutputStream"
# require "java/io/StringReader"
# require "java/io/StringWriter"
# require "java/io/Writer"
# require "javax/xml/parsers/DocumentBuilderFactory"
# require "javax/xml/transform/OutputKeys"
# require "javax/xml/transform/Transformer"
# require "javax/xml/transform/TransformerFactory"
# require "javax/xml/transform/dom/DOMSource"
# require "javax/xml/transform/stream/StreamResult"

class XmlDocumentHelper
    attr_accessor :logUtil, :INDENT_NUMBER, :transformer

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @INDENT_NUMBER = "indent-number"
        @transformer = nil
    end
    

    def self.getInstance()
        return XmlDocumentHelper.instance
    end
    

    def initialize()
        initialize_fields
        self.init(4, true)
    end
    

    def init(indent, ignoreDeclaration)
        begin
            booleanFactory = BooleanFactory.getInstance()
            transformerFactory = TransformerFactory.newInstance()
            transformerFactory.setAttribute(@INDENT_NUMBER, indent)
            @transformer = transformerFactory.newTransformer()
            @transformer.setOutputProperty(OutputKeys::ENCODING, CharacterSetData.getInstance().UTF_8)
            @transformer.setOutputProperty(OutputKeys::OMIT_XML_DECLARATION, (ignoreDeclaration ? booleanFactory.YES : booleanFactory.NO))
            @transformer.setOutputProperty(OutputKeys::INDENT, booleanFactory.YES)
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.INIT, e)
        end
    end
    

    # throws Exception
    def format(xmlString)
        src = InputSource.new(StringReader.new(xmlString))
        document = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(src)
        out = StringWriter.new()
        @transformer.transform(DOMSource.new(document), StreamResult.new(out))
        return out.to_s
    end
    

    # throws Exception
    def self.toString(document)
        begin
            domSource = DOMSource.new(document)
            byteArrayOutputStream = ByteArrayOutputStream.new()
            streamResult = StreamResult.new(byteArrayOutputStream)
            copyTransformerFactory = TransformerFactory.newInstance()
            copyTransformer = copyTransformerFactory.newTransformer()
            copyTransformer.transform(domSource, streamResult)
            return byteArrayOutputStream.to_s
        rescue StandardError => e
            raise e
        end
    end

    def self.instance()
        XmlDocumentHelper.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        XmlDocumentHelper.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = XmlDocumentHelper.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "XmlDocumentHelper"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory"
autoload :CharacterSetData, "org/allbinary/logic/java/characters/CharacterSetData"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :Document, "org/w3c/dom/Document"
autoload :InputSource, "org/xml/sax/InputSource"

begin
    XmlDocumentHelper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

