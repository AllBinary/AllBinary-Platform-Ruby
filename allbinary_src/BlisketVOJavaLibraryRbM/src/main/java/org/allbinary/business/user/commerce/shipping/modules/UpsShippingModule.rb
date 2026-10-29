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
# package org.allbinary.business.user.commerce.shipping.modules

require "org/allbinary/business/user/commerce/shipping/modules/ShippingInterface"

class UpsShippingModule
    include ShippingInterface
    attr_accessor :name, :description

    def initialize_fields
        @name = "UPS"
        @description = "Brown Mail"
    end
    

    def initialize()
        initialize_fields
    end
    

    def getCost(order)
        return Money.new()
    end
    

    def getDescription()
        return @description
    end
    

    def getName()
        return @name
    end
end

require "org/allbinary/business/user/commerce/inventory/order/OrderInterface"
require "org/allbinary/business/user/commerce/money/Money"

