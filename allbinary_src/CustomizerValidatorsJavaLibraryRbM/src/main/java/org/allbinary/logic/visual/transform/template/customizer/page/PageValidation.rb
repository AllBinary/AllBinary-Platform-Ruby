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
# package org.allbinary.logic.visual.transform.template.customizer.page

require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/control/validate/Validation"

class PageValidation < Validation
    include DomNodeInterface
    attr_accessor :logUtil, :title

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @title = nil
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
    end
    

    def constructor1(document)
        method(:initialize).super_method.call()
        initialize_fields
        node = DomSearchHelper.getNode(TitleData.getInstance().NAME, document.getElementsByTagName(PageData.getInstance().NAME))
        @title = TitleValidation.new(node)
    end
    

    def constructor1(hashMap)
        method(:initialize).super_method.call()
        initialize_fields
        self.getFormData(hashMap)
    end
    

    def getFormData(hashMap)
        @title = TitleValidation.new(hashMap)
    end
    

    def isValid()
        begin
            valid = true
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("PageValidation", self, @commonStrings.IS_VALID)
            end
            if !@title.isValid()
                valid = false
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("PageValidation: " + (valid).to_s, self, @commonStrings.IS_VALID)
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
            stringBuffer = StringMaker.new()
            if !@title.isValid()
                stringBuffer.append(@title.validationInfo())
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
        node = document.createElement(PageData.getInstance().NAME)
        node.appendChild(@title.toXmlNode(document))
        return node
    end
end

require "java/util/HashMap"
require "org/allbinary/business/page/PageData"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/visual/transform/template/customizer/widgets/title/TitleData"
require "org/allbinary/logic/visual/transform/template/customizer/widgets/title/TitleValidation"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

