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
# package org.allbinary.logic.visual.transform.info

# require "javax/servlet/jsp/PageContext"

class TransformInfoHttpFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance(propertiesHashMap, pageContext)
        logUtil = LogUtil.getInstance()
        begin
            weblisketSession = WeblisketSession.new(propertiesHashMap, pageContext)
            if !StringValidationUtil.getInstance().isEmpty(weblisketSession.getStoreName())
                storeFrontInterface = StoreFrontFactory.getInstance(weblisketSession.getStoreName())
                if storeFrontInterface != nil
                    return TransformInfoHttpStore.new(storeFrontInterface, propertiesHashMap, pageContext)
                else
                    raise StandardError.new("No StoreFront with: " + (weblisketSession.getStoreName()).to_s)
                end
            else
                return TransformInfoHttpContext.new(propertiesHashMap, pageContext)
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                commonStrings = CommonStrings.getInstance()
                logUtil.put(commonStrings.EXCEPTION, "TransformInfoFactory", commonStrings.GET_INSTANCE, e)
            end
            raise e
        end
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
autoload :WeblisketSession, "org/allbinary/logic/communication/http/request/session/WeblisketSession"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :TransformInfoHttpContext, "org/allbinary/logic/visual/transform/info/TransformInfoHttpContext"
autoload :TransformInfoHttpStore, "org/allbinary/logic/visual/transform/info/TransformInfoHttpStore"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"

