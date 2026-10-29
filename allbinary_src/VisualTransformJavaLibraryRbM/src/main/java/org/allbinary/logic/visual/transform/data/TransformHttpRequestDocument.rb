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
        return defined?(@@language) ? @@language : nil
    end

    def self.language=(value)
        @@language = value
    end

    def self.local()
        return defined?(@@local) ? @@local : nil
    end

    def self.local=(value)
        @@local = value
    end
end

require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
require "org/allbinary/logic/communication/http/AcceptableResponseGenerator"
require "org/allbinary/logic/communication/http/request/session/WeblisketSession"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/search/SearchRequest"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

class TransformHttpRequestDocument
    @@language = "en"
    @@local = "US"
end

