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
# package org.allbinary.logic.visual.transform.template.customizer.bodies

require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/control/validate/Validation"

class GenericBodyValidation < Validation
    include DomNodeInterface
    attr_accessor :logUtil, :body

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @body = nil
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        method(:initialize).super_method.call()
        initialize_fields
        @body = StringUtil.getInstance().EMPTY_STRING
    end
    

    def constructor1(document)
        method(:initialize).super_method.call()
        initialize_fields
        nodeList = document.getElementsByTagName(BodyData.getInstance().NAME)
        (0...nodeList.getLength()).each do |index|
            aBodyNode = nodeList.item(index)
            aBodyValueNode = DomSearchHelper.getNode(DomData::VALUE, aBodyNode.getChildNodes())
            @body = DomNodeHelper.getTextNodeValue(aBodyValueNode)
        end
    end
    

    def constructor1(hashMap)
        method(:initialize).super_method.call()
        initialize_fields
        self.getFormData(hashMap)
    end
    

    # throws Exception
    def getFormData(hashMap)
        @body = hashMap.get(BodyData.getInstance().NAME)
    end
    

    def isValid()
        begin
            isValid = true
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF(@commonStrings.START, self, @commonStrings.IS_VALID)
            end
            if !StringValidationUtil.getInstance().isValidNotRequired(@body, BodyData.getInstance().MIN, AbSqlData::MAXBLOB)
                isValid = false
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("BodyValidation: " + (isValid).to_s, self, @commonStrings.IS_VALID)
            end
            return isValid
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
            begin
                stringBuffer.append("Error: Data submitted is < ")
                stringBuffer.appendint((BodyData.getInstance().MIN).to_i)
                stringBuffer.append(" or > ")
                stringBuffer.appendint((AbSqlData::MAXBLOB).to_i)
            end
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
    

    # throws Exception
    def toXmlNode(document)
        node = ModDomHelper.createNameValueNodes(document, BodyData.getInstance().NAME, @body)
        return node
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :DomData, "org/allbinary/data/tree/dom/DomData"
autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper"
autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper"
autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :AbSqlData, "org/allbinary/logic/communication/sql/AbSqlData"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :NodeList, "org/w3c/dom/NodeList"
autoload :BodyData, "org/allbinary/logic/visual/transform/template/customizer/bodies/BodyData"

