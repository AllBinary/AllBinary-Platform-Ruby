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
# package views.business.context.modules.storefront.customizer.includes.style.theme

require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/business/context/modules/storefront/customizer/includes/style/theme/ThemeCustomizerView"

class InsertThemeValidationView < ThemeCustomizerView
    include ValidationComponentInterface
    attr_accessor :logUtil, :requestHashMap

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @requestHashMap = nil
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF(@commonStrings.CONSTRUCTOR, self, "started")
        end
        @requestHashMap = NameSpaceRequestParams.new(self.getPageContext()).toHashMap()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF(@commonStrings.CONSTRUCTOR, self, "begin loading theme")
        end
    end
    

    # throws Exception
    def toXmlDoc()
        return nil
    end
    

    def isValid()
        begin
            isValid = true
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Started Validation", self, @commonStrings.IS_VALID)
            end
            themeValidation = ThemeValidation.new(self.getTransformInfoInterface(), @requestHashMap)
            if themeValidation.isValid() == false
                isValid = false
            end
            @validationInterface = themeValidation.getCssStyleValidation()
            isValid = @validationInterface.isValid()
            if isValid == true
                CustomizerUtil.getInstance().insert(self.getTransformInfoInterface(), @validationInterface)
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
    

    # throws Exception
    def view()
        begin
            return StoreCustomizerComponentUtil.getInstance().generate(@abeClientInformation, self.getTransformInfoInterface())
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :DomNodeInterface, "org/allbinary/data/tree/dom/DomNodeInterface"
autoload :NameSpaceRequestParams, "org/allbinary/logic/communication/http/request/NameSpaceRequestParams"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :ThemeValidation, "org/allbinary/logic/visual/theme/ThemeValidation"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :CustomizerUtil, "views/business/context/modules/storefront/customizer/CustomizerUtil"
autoload :StoreCustomizerComponentUtil, "views/business/context/modules/storefront/customizer/StoreCustomizerComponentUtil"

