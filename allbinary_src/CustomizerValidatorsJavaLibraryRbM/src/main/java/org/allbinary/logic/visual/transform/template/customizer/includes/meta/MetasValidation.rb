#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# II
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.visual.transform.template.customizer.includes.meta

require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/control/validate/Validation"

class MetasValidation < Validation
    include DomNodeInterface
    attr_accessor :logUtil, :storeFrontInterface, :metaValidationVector

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @storeFrontInterface = nil
        @metaValidationVector = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor1(storeName)
        method(:initialize).super_method.call()
        initialize_fields
        @storeFrontInterface = StoreFrontFactory.getInstance(storeName)
        @metaValidationVector = BasicArrayListD.new()
        contentValue = @storeFrontInterface.getName() + " E-Commerce Site"
        keywordsMetaValidation = MetaValidation.new(HtmlMetaAttributeDataFactory.getInstance().NAME, "Keywords", HtmlMetaAttributeValuesData.getInstance().KEYWORDS, contentValue)
        abstractMetaValidation = MetaValidation.new(HtmlMetaAttributeDataFactory.getInstance().NAME, "Abstract", HtmlMetaAttributeValuesData.getInstance().ABSTRACT, contentValue)
        descriptionMetaValidation = MetaValidation.new(HtmlMetaAttributeDataFactory.getInstance().NAME, "Description", HtmlMetaAttributeValuesData.getInstance().DESCRIPTION, contentValue)
        @metaValidationVector.add(keywordsMetaValidation)
        @metaValidationVector.add(abstractMetaValidation)
        @metaValidationVector.add(descriptionMetaValidation)
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
    

    # throws Exception
    def toXmlNode(document)
        node = document.createElement(HtmlMetasData.getInstance().NAME)
        metaArray = @metaValidationVector.toArrayType(Array.new(@metaValidationVector.size(), nil))
        size = metaArray.length
        (0...size).each do |i|
            metaValidation = metaArray[i]
            node.appendChild(metaValidation.toXmlNode(document))
        end
        return node
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/visual/dhtml/html/head/meta/HtmlMetaAttributeDataFactory"
require "org/allbinary/logic/visual/dhtml/html/head/meta/HtmlMetaAttributeValuesData"
require "org/allbinary/logic/visual/dhtml/html/head/meta/HtmlMetasData"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/logic/visual/transform/template/customizer/includes/meta/MetaValidation"

