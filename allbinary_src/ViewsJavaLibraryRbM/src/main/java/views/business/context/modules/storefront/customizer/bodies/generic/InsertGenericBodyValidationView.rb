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
# package views.business.context.modules.storefront.customizer.bodies.generic

require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/business/context/modules/storefront/customizer/bodies/generic/GenericBodyCustomizerView"

class InsertGenericBodyValidationView < GenericBodyCustomizerView
    include ValidationComponentInterface
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        requestHashMap = RequestParams.new(self.getPageContext()).toHashMap()
        @body = GenericBodyValidation.new(requestHashMap)
    end
    

    # throws Exception
    def toXmlDoc()
        return nil
    end
    

    def isValid()
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Started Validation", self, @commonStrings.IS_VALID)
            end
            isValid = @body.isValid()
            if isValid == true
                CustomizerUtil.getInstance().insert(self.getTransformInfoInterface(), @body)
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
            stringBuffer.append(@body.validationInfo())
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
autoload :RequestParams, "org/allbinary/logic/communication/http/request/RequestParams"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :GenericBodyValidation, "org/allbinary/logic/visual/transform/template/customizer/bodies/GenericBodyValidation"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :CustomizerUtil, "views/business/context/modules/storefront/customizer/CustomizerUtil"
autoload :StoreCustomizerComponentUtil, "views/business/context/modules/storefront/customizer/StoreCustomizerComponentUtil"

