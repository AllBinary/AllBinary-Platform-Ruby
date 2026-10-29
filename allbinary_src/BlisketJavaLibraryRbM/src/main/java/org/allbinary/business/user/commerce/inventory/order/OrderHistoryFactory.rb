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
# package org.allbinary.business.user.commerce.inventory.order


#Retrieves a single order for a user
class OrderHistoryFactory
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize()
        initialize_fields
    end
    

    def self.getInstance(id)
        logUtil = LogUtil.getInstance()
        begin
            orderHistoryEntityInterface = OrderHistoryEntity.new()
            return orderHistoryEntityInterface.getOrder(id)
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().FACTORYERROR)
                logUtil.put(commonStrings.EXCEPTION, "OrderHistoryFactory", commonStrings.GET_INSTANCE, e)
            end
            return nil
        end
    end
end

require "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntity"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/business/user/commerce/inventory/order/OrderHistory"

