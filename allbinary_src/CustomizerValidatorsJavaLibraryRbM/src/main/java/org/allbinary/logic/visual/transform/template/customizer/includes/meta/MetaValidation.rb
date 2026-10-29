#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# III
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.visual.transform.template.customizer.includes.meta

require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/control/validate/Validation"

class MetaValidation < Validation
    include DomNodeInterface
    attr_accessor :logUtil, :label, :name, :httpEquiv, :content

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @label = nil
        @name = nil
        @httpEquiv = nil
        @content = nil
    end

    def initialize(*args)
        case args.length
        when 4 then constructor4(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor4(htmlMetaAttributeData, label, attributeValue, contentValue)
        method(:initialize).super_method.call()
        initialize_fields
        @label = label
        if htmlMetaAttributeData.equals(HtmlMetaAttributeDataFactory.getInstance().HTTP_EQUIV)
            @httpEquiv = attributeValue
        elsif htmlMetaAttributeData.equals(HtmlMetaAttributeDataFactory.getInstance().NAME)
            @name = attributeValue
        end
        @content = contentValue
    end
    

    def constructor1(document)
        method(:initialize).super_method.call()
        initialize_fields
        raise StandardError.new(CommonStrings.getInstance().NOT_IMPLEMENTED)
    end
    

    def isValid()
        begin
            valid = true
            return valid
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to validate form", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    def validationInfo()
        begin
            stringBuffer = StringMaker.new()
            return stringBuffer.to_s
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Validating Form"
        end
    end
    

    def toValidationInfoDoc()
        return nil
    end
    

    def toValidationInfoNode(document)
        return nil
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        htmlMetaAttributeDataFactory = HtmlMetaAttributeDataFactory.getInstance()
        hashMap.put(HtmlMetaData.getInstance().LABEL.to_s, @label)
        hashMap.put(htmlMetaAttributeDataFactory.NAME.to_s, @name)
        hashMap.put(htmlMetaAttributeDataFactory.HTTP_EQUIV.to_s, @httpEquiv)
        hashMap.put(htmlMetaAttributeDataFactory.CONTENT.to_s, @content)
        return hashMap
    end
    

    # throws Exception
    def toXmlNode(document)
        node = ModDomHelper.createNameValueNodes(document, HtmlMetaData.getInstance().NAME.to_s, self.toHashMap())
        return node
    end
end

require "java/util/HashMap"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/visual/dhtml/html/head/meta/HtmlMetaAttributeData"
require "org/allbinary/logic/visual/dhtml/html/head/meta/HtmlMetaAttributeDataFactory"
require "org/allbinary/logic/visual/dhtml/html/head/meta/HtmlMetaData"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

