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
# package views.admin.storefront

require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/admin/storefront/StoreFrontComponent"

class EditValidationStoreFrontView < StoreFrontComponent
    include ValidationComponentInterface
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
    end
    

    def isValid()
        begin
            valid = true
            if @newStoreFrontInterface.isNameValid() == false
                valid = false
            end
            if StoreFrontFactory.getInstance(@newStoreFrontInterface.getName()) == nil
                valid = false
            end
            @newStoreFrontInterface = StoreFrontFactory.getInstance(@newStoreFrontInterface.getName())
            return valid
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to validate form", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    def validationInfo()
        begin
            stringBuffer = StringMaker.new()
            if @newStoreFrontInterface.isNameValid() == false
                stringBuffer.append(@newStoreFrontInterface.nameValidationInfo())
            end
            if StoreFrontFactory.getInstance(@newStoreFrontInterface.getName()) == nil
                stringBuffer.append((@newStoreFrontInterface).to_s + " does not exist.<br>")
            end
            return "Unkown Error"
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
end

require "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

