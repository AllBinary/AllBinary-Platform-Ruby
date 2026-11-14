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

autoload :StoreFront, "org/allbinary/business/context/modules/storefront/StoreFront"
autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
autoload :FREEBLISKET_PATH_GLOBALS, "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS"
autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :AbFile, "org/allbinary/logic/io/file/AbFile"
autoload :AbPath, "org/allbinary/logic/io/path/AbPath"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"

