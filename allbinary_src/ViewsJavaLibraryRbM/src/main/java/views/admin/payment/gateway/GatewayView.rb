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
# package views.admin.payment.gateway

# require "javax/servlet/http/HttpServletRequest"
require "views/admin/payment/gateway/PaymentGatewayViewAbstract"

class GatewayView < PaymentGatewayViewAbstract
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
    end
    

    def getFormData(request)
        super(request)
        if StringValidationUtil.getInstance().isEmpty(self.getPaymentGatewayPrimaryKey().getName())
            self.getPaymentGatewayPrimaryKey().setName(self.getWeblisketSession().getPaymentMethod())
        end
    end
    

    # throws Exception
    def view()
        begin
            paymentGatewayInterface = PaymentGatewayEntityFactory.getInstance().getPaymentGatewayInterface(self.getPaymentGatewayPrimaryKey().getStoreName(), BasicPaymentTypeUtil.getInstance().get(self.getPaymentGatewayPrimaryKey().getName()))
            return PaymentGatewayComponent.new(self.getTransformInfoInterface(), paymentGatewayInterface).view()
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "edit()", e)
            end
            raise e
        end
    end
end

autoload :PaymentGatewayInterface, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterface"
autoload :BasicPaymentTypeUtil, "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentTypeUtil"
autoload :PaymentGatewayEntityFactory, "org/allbinary/data/tables/user/commerce/money/payment/gateway/PaymentGatewayEntityFactory"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :PaymentGatewayComponent, "views/admin/payment/gateway/PaymentGatewayComponent"

