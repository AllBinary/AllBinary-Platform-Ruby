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

# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/business/context/HttpContextView"

class AddValidationStoreFrontView < HttpContextView
    include ValidationComponentInterface
    attr_accessor :logUtil, :newStoreFrontInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @newStoreFrontInterface = nil
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        @newStoreFrontInterface = StoreFront.new(self.getPageContext().getRequest())
        if @newStoreFrontInterface.getName() == nil
            @newStoreFrontInterface.setName(self.getWeblisketSession().getStoreName())
        end
    end
    

    def isValid()
        begin
            valid = true
            if @newStoreFrontInterface.isValid() == false
                valid = false
            end
            if StoreFrontFactory.getInstance(@newStoreFrontInterface.getName()) != nil
                valid = false
            end
            if AbFile.createAbFileFromAbPath(AbPath.new(self.getStoreViewsPath(), StringUtil.getInstance().EMPTY_STRING)).isFile()
                valid = false
            end
            return valid
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to validate form", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    # throws Exception
    def getStoreViewsPath()
        stringBuffer = StringMaker.new()
        stringBuffer.append(URLGLOBALS.getMainPath())
        stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH)
        stringBuffer.append(@newStoreFrontInterface.getName())
        return stringBuffer.to_s
    end
    

    def validationInfo()
        begin
            stringBuffer = StringMaker.new()
            if @newStoreFrontInterface.isValid() == false
                stringBuffer.append(@newStoreFrontInterface.validationInfo())
            end
            if StoreFrontFactory.getInstance(@newStoreFrontInterface.getName()) != nil
                stringBuffer.append("Store name already used<br/>")
            end
            if AbFile.createAbFileFromAbPath(AbPath.new(self.getStoreViewsPath(), StringUtil.getInstance().EMPTY_STRING)).isFile()
                stringBuffer.append("Store name clashes with template name<br/>")
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
    def view()
        return @views.ValidationOnlyTempUtil.getInstance().view(self)
    end
end

require "org/allbinary/business/context/modules/storefront/StoreFront"
require "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

