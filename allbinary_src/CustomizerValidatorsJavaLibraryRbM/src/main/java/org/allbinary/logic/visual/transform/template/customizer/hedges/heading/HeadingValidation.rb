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
# package org.allbinary.logic.visual.transform.template.customizer.hedges.heading

require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/control/validate/Validation"

class HeadingValidation < Validation
    include DomNodeInterface
    attr_accessor :logUtil, :title, :logo

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @title = nil
        @logo = nil
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
        @title = TitleValidation.new()
        @logo = LogoValidation.new()
    end
    

    def constructor1(document)
        method(:initialize).super_method.call()
        initialize_fields
        headingNodeList = document.getElementsByTagName(HeadingData::NAME)
        titleNode = DomSearchHelper.getNode(TitleData.getInstance().NAME, headingNodeList.item(0).getChildNodes())
        logoNode = DomSearchHelper.getNode(LogoData.getInstance().NAME, headingNodeList.item(0).getChildNodes())
        @title = TitleValidation.new(titleNode)
        @logo = LogoValidation.new(logoNode)
    end
    

    def constructor1(hashMap)
        method(:initialize).super_method.call()
        initialize_fields
        self.getFormData(hashMap)
    end
    

    # throws Exception
    def getFormData(hashMap)
        @title = TitleValidation.new(hashMap)
        @logo = LogoValidation.new(hashMap)
    end
    

    def isValid()
        begin
            valid = true
            titleValid = true
            logoValid = true
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF(@commonStrings.START, self, @commonStrings.IS_VALID)
            end
            if !@title.isValid()
                titleValid = false
            end
            if !@logo.isValid()
                logoValid = false
            else
                @logo.processLogoFile()
            end
            if !titleValid && !logoValid
                valid = false
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("HeadingValidation: " + (valid).to_s, self, @commonStrings.IS_VALID)
            end
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
            valid = true
            titleValid = true
            logoValid = true
            stringBuffer = StringMaker.new()
            if !@title.isValid()
                titleValid = false
            end
            if !@logo.isValid()
                logoValid = false
            end
            if !titleValid && !logoValid
                valid = false
            end
            if !valid
                stringBuffer.append("Include a title and/or logo for the header.")
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
        node = document.createElement(HeadingData::NAME)
        node.appendChild(@logo.toXmlNode(document))
        node.appendChild(@title.toXmlNode(document))
        return node
    end
end

require "java/util/HashMap"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/visual/transform/template/customizer/widgets/logo/LogoData"
require "org/allbinary/logic/visual/transform/template/customizer/widgets/logo/LogoValidation"
require "org/allbinary/logic/visual/transform/template/customizer/widgets/title/TitleData"
require "org/allbinary/logic/visual/transform/template/customizer/widgets/title/TitleValidation"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"
require "org/allbinary/logic/visual/transform/template/customizer/hedges/heading/HeadingData"

