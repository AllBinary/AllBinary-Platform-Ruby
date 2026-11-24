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

# require "java/io/StringBufferInputStream"
# require "javax/xml/parsers/DocumentBuilder"
# require "javax/xml/parsers/DocumentBuilderFactory"

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document

class DomDocumentHelper
    

    def initialize()
    end
    

    def self.init()
        commonPhoneStrings = ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance()
        ::Java::Lang::System.setProperty("jdk.xml.maxElementDepth", commonPhoneStrings.ZERO)
        ::Java::Lang::System.setProperty("jdk.xml.xpathExprOpLimit", commonPhoneStrings.ZERO)
        ::Java::Lang::System.setProperty("jdk.xml.xpathTotalOpLimit", commonPhoneStrings.ZERO)
        _LIMIT = "500000"
        ::Java::Lang::System.setProperty("jdk.xml.maxGeneralEntitySizeLimit", _LIMIT)
        ::Java::Lang::System.setProperty("jdk.xml.totalEntitySizeLimit", _LIMIT)
    end
    

    def self.create_j0()
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
    def self.create_j1_1(inputStream)
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
    def self.create_j1_2(xmlString)
        begin
            factory = DocumentBuilderFactory.newInstance()
            builder = factory.newDocumentBuilder()
            document = builder.parse(StringBufferInputStream.new(xmlString))
            return document
        rescue StandardError => e
            raise e
        end
    end

    def self.create(*java_overload_args)
        return create_j0(*java_overload_args) if java_overload_args.length == 0
        return create_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method create takes #{java_overload_args.length} arguments"
    end

    def self.create_j1(*java_overload_args)
        return create_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Java::Io::InputStream))
        return create_j1_2(*java_overload_args)
    end
end

module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
require "java/lang/System"

end; end; end; end; end; end

