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
# package org.allbinary.business.context.modules.storefront


class StoreFrontViewFactory
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize()
        initialize_fields
    end
    

    def self.getInstance(storeName)
        logUtil = LogUtil.getInstance()
        begin
            storeFronts = StoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance()
            return StoreFrontView.new(storeFronts.getStoreFrontInterface(storeName))
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().FACTORYERROR)
                logUtil.put(commonStrings.EXCEPTION, "StoreFrontFactory", commonStrings.GET_INSTANCE, e)
            end
            return nil
        end
    end
end

autoload :StoreFrontsEntity, "org/allbinary/data/tables/context/module/storefronts/StoreFrontsEntity"
autoload :StoreFrontsEntityFactory, "org/allbinary/data/tables/context/module/storefronts/StoreFrontsEntityFactory"
autoload :DomNodeInterface, "org/allbinary/data/tree/dom/DomNodeInterface"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :StoreFrontView, "org/allbinary/business/context/modules/storefront/StoreFrontView"

