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

require "java/lang/Object"
# require "java/io/StringReader"
# require "java/io/StringWriter"
# require "javax/xml/parsers/DocumentBuilderFactory"
# require "javax/xml/transform/OutputKeys"
# require "javax/xml/transform/Transformer"
# require "javax/xml/transform/TransformerConfigurationException"
# require "javax/xml/transform/TransformerFactory"
# require "javax/xml/transform/dom/DOMSource"
# require "javax/xml/transform/stream/StreamResult"

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document

class XmlDocumentHelper
    attr_accessor :logUtil, :INDENT_NUMBER, :indent, :ignoreDeclaration

    def jfields_org_allbinary_data_tree_dom_document_XmlDocumentHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @INDENT_NUMBER = "indent-number"
        @indent = 0 unless instance_variable_defined?(:@indent)
        @ignoreDeclaration = false unless instance_variable_defined?(:@ignoreDeclaration)
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_data_tree_dom_document_XmlDocumentHelper
        self.init(4, true)
    end
    

    def init(indent, ignoreDeclaration)
        java_monitor.synchronize do
        @indent = indent
        @ignoreDeclaration = ignoreDeclaration
        end
    end
    

    # throws TransformerConfigurationException
    def createTransformer_j2(indent, ignoreDeclaration)
        booleanFactory = ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance()
        transformerFactory = TransformerFactory.newInstance()
        transformerFactory.setAttribute(@INDENT_NUMBER, indent)
        transformer = transformerFactory.newTransformer()
        transformer.setOutputProperty(OutputKeys::ENCODING, ::Org::Allbinary::Logic::Java::Characters::CharacterSetData.getInstance().UTF_8)
        transformer.setOutputProperty(OutputKeys::OMIT_XML_DECLARATION, (ignoreDeclaration ? booleanFactory.YES : booleanFactory.NO))
        transformer.setOutputProperty(OutputKeys::INDENT, booleanFactory.YES)
        return transformer
    end
    

    # throws TransformerConfigurationException
    def createTransformer_j0()
        currentIndent = 0
        currentIgnoreDeclaration = false
        (self).java_monitor.synchronize do
            currentIndent = @indent
            currentIgnoreDeclaration = @ignoreDeclaration
        end
        return self.createTransformer(currentIndent, currentIgnoreDeclaration)
    end

    def createTransformer(*java_overload_args)
        return createTransformer_j2(*java_overload_args) if java_overload_args.length == 2
        return createTransformer_j0(*java_overload_args) if java_overload_args.length == 0
        raise ArgumentError, "No method createTransformer takes #{java_overload_args.length} arguments"
    end
    

    # throws Exception
    def format(xmlString)
        return self.formatWithTransformer(xmlString, self.createTransformer())
    end
    

    # throws Exception
    def formatWithTransformer(xmlString, transformer)
        src = ::Org::Xml::Sax::InputSource.new(StringReader.new(xmlString))
        document = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(src)
        out = StringWriter.new()
        transformer.transform(DOMSource.new(document), StreamResult.new(out))
        return out.to_s
    end
    

    # throws Exception
    def self.toString(document)
        begin
            domSource = DOMSource.new(document)
            byteArrayOutputStream = ::Java::Io::ByteArrayOutputStream.new()
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

module ::Java; module Io; autoload :ByteArrayOutputStream, "java/io/ByteArrayOutputStream" unless const_defined?(:ByteArrayOutputStream, false); end; end
module ::Java; module Io; autoload :Writer, "java/io/Writer" unless const_defined?(:Writer, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Characters; autoload :CharacterSetData, "org/allbinary/logic/java/characters/CharacterSetData" unless const_defined?(:CharacterSetData, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module Xml; module Sax; autoload :InputSource, "org/xml/sax/InputSource" unless const_defined?(:InputSource, false); end; end; end

begin
    XmlDocumentHelper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

