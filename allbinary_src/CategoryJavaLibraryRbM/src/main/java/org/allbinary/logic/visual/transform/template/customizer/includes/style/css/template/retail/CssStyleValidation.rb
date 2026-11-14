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
# package org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail

require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/control/validate/Validation"

class CssStyleValidation < Validation
    include DomNodeInterface
    attr_accessor :logUtil, :cssStyleElementVector

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @cssStyleElementVector = nil
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
        @cssStyleElementVector = BasicArrayListD.new()
    end
    

    def constructor1(document)
        method(:initialize).super_method.call()
        initialize_fields
        @cssStyleElementVector = StylesValidationFactory.getInstance().getInstance(document)
    end
    

    def constructor1(hashMap)
        method(:initialize).super_method.call()
        initialize_fields
        @cssStyleElementVector = StylesValidationFactory.getInstance(hashMap)
    end
    

    def isValid()
        begin
            isValid = true
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF(@commonStrings.START, self, @commonStrings.IS_VALID)
            end
            size = @cssStyleElementVector.size()
            (0...size).each do |i|
                styleValidationInterface = @cssStyleElementVector.get(i)
                if !styleValidationInterface.isValid()
                    isValid = false
                end
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("End: " + (isValid).to_s, self, @commonStrings.IS_VALID)
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
        node = document.createElement(StylesData.getInstance().NAME)
        styleNode = document.createElement(StyleData.getInstance().NAME)
        node.appendChild(styleNode)
        size = @cssStyleElementVector.size()
        (0...size).each do |i|
            styleDomNodeInterface = @cssStyleElementVector.get(i)
            styleNode.appendChild(styleDomNodeInterface.toXmlNode(document))
        end
        return node
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :ValidationInterface, "org/allbinary/logic/control/validate/ValidationInterface"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StyleData, "org/allbinary/logic/visual/dhtml/style/StyleData"
autoload :StylesData, "org/allbinary/logic/visual/dhtml/style/StylesData"
autoload :StylesValidationFactory, "org/allbinary/logic/visual/dhtml/style/StylesValidationFactory"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"

