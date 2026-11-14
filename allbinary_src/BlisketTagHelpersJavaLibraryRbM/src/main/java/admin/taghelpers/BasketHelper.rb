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
# package admin.taghelpers

# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/TagHelper"

class BasketHelper < TagHelper
    attr_accessor :logUtil, :weblisketSession, :storeFrontInterface, :propertiesHashMap, :pageContext, :MAX

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @weblisketSession = nil
        @storeFrontInterface = nil
        @propertiesHashMap = nil
        @pageContext = nil
        @MAX = 200
    end
    

    def initialize(hashMap, pageContext)
        super()
        initialize_fields
        @propertiesHashMap = hashMap
        @pageContext = pageContext
        storeName = @propertiesHashMap.get(StoreFrontData.getInstance().NAME)
        if storeName != nil
            @storeFrontInterface = StoreFrontFactory.getInstance(storeName)
        end
        @weblisketSession = WeblisketSession.new(hashMap, pageContext)
    end
    

    def isBasketEmpty()
        begin
            basket = @weblisketSession.getOrder().getBasket()
            if basket.getNumberOfItems().to_i <= 0
                return true
            else
                return false
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "isBasketEmpty()", e)
            end
            return true
        end
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData"
autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
autoload :BasketInterface, "org/allbinary/business/user/commerce/inventory/basket/BasketInterface"
autoload :WeblisketSession, "org/allbinary/logic/communication/http/request/session/WeblisketSession"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"

