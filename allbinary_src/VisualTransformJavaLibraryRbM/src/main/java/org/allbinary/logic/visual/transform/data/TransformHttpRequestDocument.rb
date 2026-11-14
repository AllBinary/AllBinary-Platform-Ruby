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

# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "org/allbinary/logic/visual/transform/data/TransformDocumentInterface"

class TransformHttpRequestDocument
    include TransformDocumentInterface
    attr_accessor :logUtil, :commonStrings, :baseNode, :document

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @baseNode = nil
        @document = nil
    end

    def initialize(*args)
        case args.length
        when 2 then constructor2(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor2(pageContext, weblisketSession)
        initialize_fields
        begin
            contentType = AcceptableResponseGenerator.getInstance().get(pageContext.getRequest())
            @document = DomDocumentHelper.create()
            contentTypeNode = @document.createElement(contentType)
            languageTypeNode = @document.createElement(@@language)
            localTypeNode = @document.createElement(@@local)
            @baseNode = localTypeNode
            languageTypeNode.appendChild(localTypeNode)
            contentTypeNode.appendChild(languageTypeNode)
            @document.appendChild(contentTypeNode)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.putF(self.log(), self, @commonStrings.CONSTRUCTOR)
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
            end
            raise e
        end
    end
    

    def constructor1(searchRequest)
        initialize_fields
        begin
            contentType = searchRequest.getContentType()
            @document = DomDocumentHelper.create()
            contentTypeNode = @document.createElement(contentType)
            languageTypeNode = @document.createElement(@@language)
            localTypeNode = @document.createElement(@@local)
            @baseNode = localTypeNode
            languageTypeNode.appendChild(localTypeNode)
            contentTypeNode.appendChild(languageTypeNode)
            @document.appendChild(contentTypeNode)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
            end
            raise e
        end
    end
    

    def getBaseNode()
        return @baseNode
    end
    

    def getDoc()
        return @document
    end
    

    # throws Exception
    def log()
        stringBuffer = StringMaker.new()
        if @baseNode != nil
            stringBuffer.append("BaseNode: ")
            stringBuffer.append(@baseNode.getNodeName())
        else
            stringBuffer.append("Log-Error: BaseNode is Null")
        end
        stringBuffer.append("\nDocument: ")
        stringBuffer.append(XmlDocumentHelper.toString(@document))
        return stringBuffer.to_s
    end

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

autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper"
autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
autoload :AcceptableResponseGenerator, "org/allbinary/logic/communication/http/AcceptableResponseGenerator"
autoload :WeblisketSession, "org/allbinary/logic/communication/http/request/session/WeblisketSession"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :SearchRequest, "org/allbinary/logic/control/search/SearchRequest"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"

begin
    TransformHttpRequestDocument.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

