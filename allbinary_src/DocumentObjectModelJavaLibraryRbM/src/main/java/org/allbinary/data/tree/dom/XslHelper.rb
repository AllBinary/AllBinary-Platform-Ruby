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
# package org.allbinary.data.tree.dom

# require "java/io/File"
# require "java/io/StringBufferInputStream"
# require "javax/xml/transform/Templates"
# require "javax/xml/transform/Transformer"
# require "javax/xml/transform/TransformerFactory"
# require "javax/xml/transform/URIResolver"
# require "javax/xml/transform/stream/StreamResult"
# require "javax/xml/transform/stream/StreamSource"

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom

#import org.allbinary.data.tree.dom.document.DomDocumentHelper;
class XslHelper
    

    def self.getInstance()
        return XslHelper.instance
    end
    

    def initialize()
    end
    

    # throws Exception
    def translate_j3_1(xsltStreamSource, xmlStreamSource, streamResult)
        begin
            transformerFactory = TransformerFactory.newInstance()
            transformer = transformerFactory.newTransformer(xsltStreamSource)
            transformer.transform(xmlStreamSource, streamResult)
            return streamResult.getOutputStream()
        rescue StandardError => e
            raise e
        end
    end
    

    # throws Exception
    def translate_j4(resolver, xsltStreamSource, xmlStreamSource, streamResult)
        begin
            tFactory = TransformerFactory.newInstance()
            tFactory.setURIResolver(resolver)
            transformer = tFactory.newTransformer(xsltStreamSource)
            transformer.transform(xmlStreamSource, streamResult)
            return streamResult.getOutputStream()
        rescue StandardError => e
            raise e
        end
    end
    

    # throws Exception
    def translateTemplate(templates, xmlStreamSource)
        begin
            outputStream = ::Java::Io::ByteArrayOutputStream.new()
            streamResult = StreamResult.new(outputStream)
            templates.newTransformer().transform(xmlStreamSource, streamResult)
            return streamResult.getOutputStream().to_s
        rescue StandardError => e
            raise e
        end
    end
    

    # throws Exception
    def translate_j2_1(xsltStreamSource, xmlDocument)
        begin
            outputStream = ::Java::Io::ByteArrayOutputStream.new()
            return self.translate(xsltStreamSource, StreamSource.new(StringBufferInputStream.new(::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(xmlDocument))), StreamResult.new(outputStream)).to_s
        rescue StandardError => e
            raise e
        end
    end
    

    # throws Exception
    def translate_j2_2(xsltStreamSource, xmlStreamSource)
        begin
            outputStream = ::Java::Io::ByteArrayOutputStream.new()
            return self.translate(xsltStreamSource, xmlStreamSource, StreamResult.new(outputStream)).to_s
        rescue StandardError => e
            raise e
        end
    end
    

    # throws Exception
    def translate_j3_2(resolver, xsltStreamSource, xmlStreamSource)
        begin
            outputStream = ::Java::Io::ByteArrayOutputStream.new()
            return self.translate(resolver, xsltStreamSource, xmlStreamSource, StreamResult.new(outputStream)).to_s
        rescue StandardError => e
            raise e
        end
    end

    def translate(*java_overload_args)
        return translate_j3(*java_overload_args) if java_overload_args.length == 3
        return translate_j4(*java_overload_args) if java_overload_args.length == 4
        return translate_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method translate takes #{java_overload_args.length} arguments"
    end

    def translate_j3(*java_overload_args)
        return translate_j3_1(*java_overload_args) if true && !(java_overload_args[0].is_a?(::Numeric) || java_overload_args[0] == true || java_overload_args[0] == false || java_overload_args[0].is_a?(::Array)) && !(java_overload_args[1].is_a?(::Numeric) || java_overload_args[1] == true || java_overload_args[1] == false || java_overload_args[1].is_a?(::Array)) && !(java_overload_args[2].is_a?(::Numeric) || java_overload_args[2] == true || java_overload_args[2] == false || java_overload_args[2].is_a?(::Array))
        return translate_j3_2(*java_overload_args)
    end

    def translate_j2(*java_overload_args)
        return translate_j2_1(*java_overload_args) if true && !(java_overload_args[0].is_a?(::Numeric) || java_overload_args[0] == true || java_overload_args[0] == false || java_overload_args[0].is_a?(::Array)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Org::W3c::Dom::Document))
        return translate_j2_2(*java_overload_args)
    end
    

    # throws Exception
    def export(outputFile, xsltFilePath, xmlDocument)
        begin
            outputFile.createNewFile()
            self.translate(StreamSource.new(xsltFilePath), StreamSource.new(StringBufferInputStream.new(::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(xmlDocument))), StreamResult.new(outputFile))
        rescue StandardError => e
            raise e
        end
    end

    def self.instance()
        XslHelper.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        XslHelper.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = XslHelper.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "XslHelper"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Io; autoload :ByteArrayOutputStream, "java/io/ByteArrayOutputStream" unless const_defined?(:ByteArrayOutputStream, false); end; end
module ::Java; module Io; autoload :OutputStream, "java/io/OutputStream" unless const_defined?(:OutputStream, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper" unless const_defined?(:XmlDocumentHelper, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end

begin
    XslHelper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

