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
# package org.allbinary.logic.visual.transform.data

require "java/lang/JavaOverload"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "org/allbinary/logic/visual/transform/data/TransformDocumentInterface"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module DataPackage

class TransformHttpRequestDocument
    include TransformDocumentInterface
    attr_accessor :logUtil, :commonStrings, :baseNode, :document

    def jfields_org_allbinary_logic_visual_transform_data_TransformHttpRequestDocument
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @baseNode = nil unless instance_variable_defined?(:@baseNode)
        @document = nil unless instance_variable_defined?(:@document)
    end

    def initialize(*args)
        case args.length
        when 2 then jnew_org_allbinary_logic_visual_transform_data_TransformHttpRequestDocument_2(*args)
        when 1 then jnew_org_allbinary_logic_visual_transform_data_TransformHttpRequestDocument_1(*args)
        else raise ArgumentError, "No constructor of TransformHttpRequestDocument takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_logic_visual_transform_data_TransformHttpRequestDocument_2(pageContext, weblisketSession)
        jfields_org_allbinary_logic_visual_transform_data_TransformHttpRequestDocument
        begin
            contentType = ::Org::Allbinary::Logic::Communication::Http::AcceptableResponseGenerator.getInstance().get(pageContext.getRequest())
            @document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create()
            contentTypeNode = @document.createElement(contentType)
            languageTypeNode = @document.createElement(@@language)
            localTypeNode = @document.createElement(@@local)
            @baseNode = localTypeNode
            languageTypeNode.appendChild(localTypeNode)
            contentTypeNode.appendChild(languageTypeNode)
            @document.appendChild(contentTypeNode)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.putF(self.log(), self, @commonStrings.CONSTRUCTOR)
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
            end
            raise e
        end
    end
    

    def jnew_org_allbinary_logic_visual_transform_data_TransformHttpRequestDocument_1(searchRequest)
        jfields_org_allbinary_logic_visual_transform_data_TransformHttpRequestDocument
        begin
            contentType = searchRequest.getContentType()
            @document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create()
            contentTypeNode = @document.createElement(contentType)
            languageTypeNode = @document.createElement(@@language)
            localTypeNode = @document.createElement(@@local)
            @baseNode = localTypeNode
            languageTypeNode.appendChild(localTypeNode)
            contentTypeNode.appendChild(languageTypeNode)
            @document.appendChild(contentTypeNode)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
            end
            raise e
        end
    end
    

    def getBaseNode()
        return @baseNode
    end
    java_overload :getBaseNode, 0
    

    def getDoc()
        return @document
    end
    java_overload :getDoc, 0
    

    # throws Exception
    def log()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        if @baseNode != nil
            stringBuffer.append("BaseNode: ")
            stringBuffer.append(@baseNode.getNodeName())
        else
            stringBuffer.append("Log-Error: BaseNode is Null")
        end
        stringBuffer.append("\nDocument: ")
        stringBuffer.append(::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(@document))
        return stringBuffer.to_s
    end
    java_overload :log, 0

    def self.language()
        TransformHttpRequestDocument.java_static_fields unless @java_static_fields_started
        return defined?(@@language) ? @@language : nil
    end

    def self.language=(value)
        TransformHttpRequestDocument.java_static_fields unless @java_static_fields_started
        @@language = value
    end

    def self.local()
        TransformHttpRequestDocument.java_static_fields unless @java_static_fields_started
        return defined?(@@local) ? @@local : nil
    end

    def self.local=(value)
        TransformHttpRequestDocument.java_static_fields unless @java_static_fields_started
        @@local = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        @@language = "en"
        @@local = "US"
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TransformHttpRequestDocument"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper" unless const_defined?(:XmlDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; autoload :AcceptableResponseGenerator, "org/allbinary/logic/communication/http/AcceptableResponseGenerator" unless const_defined?(:AcceptableResponseGenerator, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSession, "org/allbinary/logic/communication/http/request/session/WeblisketSession" unless const_defined?(:WeblisketSession, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Search; autoload :SearchRequest, "org/allbinary/logic/control/search/SearchRequest" unless const_defined?(:SearchRequest, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

begin
    TransformHttpRequestDocument.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

