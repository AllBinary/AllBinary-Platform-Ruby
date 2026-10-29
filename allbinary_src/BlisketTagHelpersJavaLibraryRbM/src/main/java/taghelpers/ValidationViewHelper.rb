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
# package taghelpers

# require "javax/servlet/jsp/PageContext"
require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "taghelpers/ViewHelper"

class ValidationViewHelper < ViewHelper
    include ValidationComponentInterface
    attr_accessor :logUtil, :viewInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @viewInterface = nil
    end
    

    def initialize(hashMap, pageContext)
        super(hashMap, pageContext)
        initialize_fields
        @viewInterface = self.getViewObject()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPER)
            @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    def isValid()
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPER)
                @logUtil.putF("Started", self, @commonStrings.IS_VALID)
            end
            return @viewInterface.isValid()
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    def validationInfo()
        begin
            return @viewInterface.validationInfo()
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "validationInfo()", e)
            end
            return "Unknown Validation Error"
        end
    end
    

    def toValidationInfoDoc()
        begin
            return @viewInterface.toValidationInfoDoc()
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "toValidationInfoDoc()", e)
            end
            return nil
        end
    end
    

    def toValidationInfoNode(document)
        begin
            return @viewInterface.toValidationInfoNode(document)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "toValidationInfoNode()", e)
            end
            return nil
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

