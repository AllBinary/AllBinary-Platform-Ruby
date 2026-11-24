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


module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order

#Retrieves a single order for a user
class OrderHistoryFactory
    attr_accessor :logUtil

    def jfields_org_allbinary_business_user_commerce_inventory_order_OrderHistoryFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_business_user_commerce_inventory_order_OrderHistoryFactory
    end
    

    def self.getInstance(id)
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        begin
            orderHistoryEntityInterface = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Order::OrderHistoryEntity.new()
            return orderHistoryEntityInterface.getOrder(id)
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().FACTORYERROR)
                logUtil.put(commonStrings.EXCEPTION, "OrderHistoryFactory", commonStrings.GET_INSTANCE, e)
            end
            return nil
        end
    end
end

module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryEntity, "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntity" unless const_defined?(:OrderHistoryEntity, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :OrderHistory, "org/allbinary/business/user/commerce/inventory/order/OrderHistory" unless const_defined?(:OrderHistory, false)

end; end; end; end; end; end; end

