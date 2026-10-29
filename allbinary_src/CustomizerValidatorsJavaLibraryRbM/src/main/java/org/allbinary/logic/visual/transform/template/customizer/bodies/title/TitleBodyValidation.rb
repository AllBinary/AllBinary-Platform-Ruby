#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 leIIgal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.visual.transform.template.customizer.bodies.title

require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/control/validate/Validation"

class TitleBodyValidation < Validation
    include DomNodeInterface
    attr_accessor :logUtil, :body, :titleValidation

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @body = nil
        @titleValidation = nil
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
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        end
        stringUtil = StringUtil.getInstance()
        @body = stringUtil.EMPTY_STRING
        @titleValidation = TitleNotRequiredValidation.new()
    end
    

    def constructor1(document)
        method(:initialize).super_method.call()
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF(@commonStrings.CONSTRUCTOR, self, "Constructor(document)")
        end
        nodeList = document.getElementsByTagName(BodyData.getInstance().NAME)
        (0...nodeList.getLength()).each do |index|
            aBodyNode = nodeList.item(index)
            aBodyValueNode = DomSearchHelper.getNode(DomData::VALUE, aBodyNode.getChildNodes())
            @body = DomNodeHelper.getTextNodeValue(aBodyValueNode)
            titleNode = DomSearchHelper.getNode(TitleData.getInstance().NAME, aBodyNode.getChildNodes())
            @titleValidation = TitleNotRequiredValidation.new(titleNode)
            if index > 1
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("To Many Body Nodes", self, @commonStrings.CONSTRUCTOR)
                end
            end
        end
    end
    

    def constructor1(hashMap)
        method(:initialize).super_method.call()
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF(@commonStrings.START, self, "Constructor(hashmap)")
        end
        self.getFormData(hashMap)
    end
    

    # throws Exception
    def getFormData(hashMap)
        @body = hashMap.get(BodyData.getInstance().NAME)
        @titleValidation = TitleNotRequiredValidation.new(hashMap)
    end
    

    def isValid()
        begin
            isValid = true
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("TitleBodyValidation", self, @commonStrings.IS_VALID)
            end
            if !StringValidationUtil.getInstance().isValidNotRequired(@body, BodyData.getInstance().MIN, AbSqlData::MAXBLOB)
                isValid = false
            end
            if !@titleValidation.isValid()
                isValid = false
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("TitleBodyValidation: " + (isValid).to_s, self, @commonStrings.IS_VALID)
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
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
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
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Title Body: " + @body, self, "toXmlNode(document)")
        end
        node = ModDomHelper.createNameValueNodes(document, BodyData.getInstance().NAME, @body)
        node.appendChild(@titleValidation.toXmlNode(document))
        return node
    end
end

require "java/util/HashMap"
require "org/allbinary/data/tree/dom/DomData"
require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/sql/AbSqlData"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/visual/transform/template/customizer/bodies/BodyData"
require "org/allbinary/logic/visual/transform/template/customizer/widgets/title/TitleData"
require "org/allbinary/logic/visual/transform/template/customizer/widgets/title/TitleNotRequiredValidation"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"

