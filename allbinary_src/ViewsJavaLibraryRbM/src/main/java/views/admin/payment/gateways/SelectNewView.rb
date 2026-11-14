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
# package views.admin.payment.gateways

require "views/admin/payment/gateway/PaymentGatewayViewAbstract"

class SelectNewView < PaymentGatewayViewAbstract
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
    end
    

    # throws Exception
    def view()
        begin
            paymentGatewayEntityInterface = PaymentGatewayEntityFactory.getInstance()
            existingGateways = paymentGatewayEntityInterface.findPaymentTypeVectorByStore(self.getPaymentGatewayPrimaryKey().getStoreName())
            allGatewaysLessExisting = BasicPaymentTypeUtil.getInstance().difference(existingGateways)
            return PaymentGatewaysView.new(self.getTransformInfoInterface(), allGatewaysLessExisting).view()
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view", e)
            end
            raise e
        end
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :BasicPaymentTypeUtil, "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentTypeUtil"
autoload :PaymentGatewayEntityFactory, "org/allbinary/data/tables/user/commerce/money/payment/gateway/PaymentGatewayEntityFactory"
autoload :PaymentGatewayEntityInterface, "org/allbinary/data/tables/user/commerce/money/payment/gateway/PaymentGatewayEntityInterface"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :PaymentGatewaysView, "views/admin/payment/gateways/PaymentGatewaysView"

