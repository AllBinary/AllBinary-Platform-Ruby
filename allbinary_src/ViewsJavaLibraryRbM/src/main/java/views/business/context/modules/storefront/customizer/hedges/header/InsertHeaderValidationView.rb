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
# package views.business.context.modules.storefront.customizer.hedges.header

require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/business/context/modules/storefront/customizer/hedges/header/TopBarView"

class InsertHeaderValidationView < TopBarView
    include ValidationComponentInterface
    attr_accessor :logUtil, :LOGOPATH

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @LOGOPATH = "logo/"
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        multipartRequestHashMap = MultipartRequestParams.new(self.getPageContext()).toHashMap()
        storeFrontInterface = StoreFrontFactory.getInstance(self.getWeblisketSession().getStoreName())
        fullPath = (URLGLOBALS.getWebappPath() + storeFrontInterface.getCurrentHostNamePath()).to_s + @LOGOPATH
        multipartRequestHashMap.put(LogoData.getInstance().IMAGEPATH, fullPath)
        @heading = HeadingValidation.new(multipartRequestHashMap)
    end
    

    # throws Exception
    def toXmlDoc()
        return nil
    end
    

    def isValid()
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("topbarValidation", self, @commonStrings.IS_VALID)
            end
            isValid = @heading.isValid()
            if isValid == true
                CustomizerUtil.getInstance().insert(self.getTransformInfoInterface(), self)
            end
            return isValid
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to validate", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    def validationInfo()
        begin
            stringBuffer = StringMaker.new()
            stringBuffer.append(@heading.validationInfo())
            return stringBuffer.to_s
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Getting Validation Info"
        end
    end
    

    def toValidationInfoDoc()
        return nil
    end
    

    def toValidationInfoNode(document)
        return nil
    end
end

require "java/util/HashMap"
require "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/communication/http/request/MultipartRequestParams"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/logic/visual/transform/template/customizer/hedges/heading/HeadingValidation"
require "org/allbinary/logic/visual/transform/template/customizer/widgets/logo/LogoData"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "views/business/context/modules/storefront/customizer/CustomizerUtil"

