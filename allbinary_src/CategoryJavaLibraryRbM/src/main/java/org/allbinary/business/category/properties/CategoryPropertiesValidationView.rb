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
# package org.allbinary.business.category.properties

require "org/allbinary/logic/control/validate/ValidationInterface"
require "org/allbinary/business/category/properties/CategoryPropertiesView"

class CategoryPropertiesValidationView < CategoryPropertiesView
    include ValidationInterface
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize(categoryPropertiesInterface)
        super(categoryPropertiesInterface)
        initialize_fields
    end
    

    # throws Exception
    def isValid()
        return @categoryPropertiesInterface.isValid()
    end
    

    # throws Exception
    def validationInfo()
        begin
            stringBuffer = StringMaker.new()
            stringBuffer.append(@categoryPropertiesInterface.validationInfo())
            return stringBuffer.to_s
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to generate validation info error", self, "validationInfo()", e)
            end
            return "Error Validating Data"
        end
    end
    

    # throws Exception
    def toValidationInfoDoc()
        return nil
    end
    

    # throws Exception
    def toValidationInfoNode(document)
        return nil
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/business/category/properties/CategoryPropertiesInterface"

