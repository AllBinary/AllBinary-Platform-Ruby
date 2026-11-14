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
# package org.allbinary.business.user.commerce.money.payment

# require "javax/servlet/ServletRequest"

class PaymentFactory
    

    def initialize()
    end
    

    def self.getInstance(request)
        logUtil = LogUtil.getInstance()
        begin
            return Payment.new(request)
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().FACTORYERROR)
                logUtil.put(commonStrings.EXCEPTION, "PaymentFactory", commonStrings.GET_INSTANCE, e)
            end
            return nil
        end
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :Payment, "org/allbinary/business/user/commerce/money/payment/Payment"
autoload :PaymentInterface, "org/allbinary/business/user/commerce/money/payment/PaymentInterface"

