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

require "java/lang/JavaOverload"
require "org/allbinary/business/user/commerce/shipping/modules/ShippingInterface"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Shipping; module Modules

class NoShippingModule
    include ShippingInterface
    attr_accessor :commonStrings, :name, :description

    def jfields_org_allbinary_business_user_commerce_shipping_modules_NoShippingModule
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @name = "No Shipping"
        @description = "This shipping method is for items that are not shipped."
    end
    

    def initialize()
        jfields_org_allbinary_business_user_commerce_shipping_modules_NoShippingModule
    end
    

    def getCost(order)
        return ::Org::Allbinary::Business::User::Commerce::Money::Money.new()
    end
    java_overload :getCost, 1
    

    def getDescription()
        return @description
    end
    java_overload :getDescription, 0
    

    def getName()
        return @name
    end
    java_overload :getName, 0
end

module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderInterface, "org/allbinary/business/user/commerce/inventory/order/OrderInterface" unless const_defined?(:OrderInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; autoload :Money, "org/allbinary/business/user/commerce/money/Money" unless const_defined?(:Money, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end; end; end; end

