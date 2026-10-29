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

# require "java/io/ByteArrayOutputStream"
# require "java/io/File"
# require "java/io/OutputStream"
# require "java/io/StringBufferInputStream"
# require "javax/xml/transform/Transformer"
# require "javax/xml/transform/TransformerFactory"
# require "javax/xml/transform/URIResolver"
# require "javax/xml/transform/stream/StreamResult"
# require "javax/xml/transform/stream/StreamSource"

#import org.allbinary.data.tree.dom.document.DomDocumentHelper;
class XslHelper
    

    def self.getInstance()
        return XslHelper.instance
    end
    

    def initialize()
    end
    

    # throws Exception
    def translate(xsltStreamSource, xmlStreamSource, streamResult)
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
    # Java overloaded method: Ruby keeps the last definition
    def translate(resolver, xsltStreamSource, xmlStreamSource, streamResult)
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
    # Java overloaded method: Ruby keeps the last definition
    def translate(xsltStreamSource, xmlDocument)
        begin
            outputStream = ByteArrayOutputStream.new()
            return self.translate(xsltStreamSource, StreamSource.new(StringBufferInputStream.new(XmlDocumentHelper.toString(xmlDocument))), StreamResult.new(outputStream)).to_s
        rescue StandardError => e
            raise e
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def translate(xsltStreamSource, xmlStreamSource)
        begin
            outputStream = ByteArrayOutputStream.new()
            return self.translate(xsltStreamSource, xmlStreamSource, StreamResult.new(outputStream)).to_s
        rescue StandardError => e
            raise e
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def translate(resolver, xsltStreamSource, xmlStreamSource)
        begin
            outputStream = ByteArrayOutputStream.new()
            return self.translate(resolver, xsltStreamSource, xmlStreamSource, StreamResult.new(outputStream)).to_s
        rescue StandardError => e
            raise e
        end
    end
    

    # throws Exception
    def export(outputFile, xsltFilePath, xmlDocument)
        begin
            outputFile.createNewFile()
            self.translate(StreamSource.new(xsltFilePath), StreamSource.new(StringBufferInputStream.new(XmlDocumentHelper.toString(xmlDocument))), StreamResult.new(outputFile))
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

require "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
require "org/w3c/dom/Document"

class XslHelper
    @@instance = XslHelper.new()
end

