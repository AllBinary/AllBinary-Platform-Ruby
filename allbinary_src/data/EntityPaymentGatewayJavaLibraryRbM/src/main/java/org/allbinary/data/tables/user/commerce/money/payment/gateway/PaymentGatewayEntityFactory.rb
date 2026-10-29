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
# package org.allbinary.data.tables.user.commerce.money.payment.gateway


class PaymentGatewayEntityFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance()
        logUtil = LogUtil.getInstance()
        begin
            return PaymentGatewayEntity.new()
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                logUtil.put(commonStrings.EXCEPTION, "PaymentGatewayEntityFactory", commonStrings.GET_INSTANCE, e)
            end
            raise e
        end
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/data/tables/user/commerce/money/payment/gateway/PaymentGatewayEntity"

