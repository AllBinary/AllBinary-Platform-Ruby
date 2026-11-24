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
# package org.allbinary.business.user.commerce.shipping

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/business/user/commerce/shipping/ShippingMethodsInterface"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Shipping

class ShippingMethods
    include ShippingMethodsInterface
    attr_accessor :logUtil, :commonStrings, :shippingVector, :defaultShippingMethodInterface

    def jfields_org_allbinary_business_user_commerce_shipping_ShippingMethods
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @shippingVector = nil unless instance_variable_defined?(:@shippingVector)
        @defaultShippingMethodInterface = nil unless instance_variable_defined?(:@defaultShippingMethodInterface)
    end
    

    def initialize(abeClientInformation, storeFrontInterface)
        jfields_org_allbinary_business_user_commerce_shipping_ShippingMethods
        @defaultShippingMethodInterface = ShippingMethodsFactory.new(abeClientInformation, storeFrontInterface).getDefaultInstance()
        @shippingVector = ShippingMethodsFactory.new(abeClientInformation, storeFrontInterface).getInstance()
    end
    

    def get()
        return @shippingVector
    end
    java_overload :get, 0
    

    # throws Exception
    def getShippingInterface(name)
        shipping = nil
        size = @shippingVector.size()
        (0...size).each do |index|
            shipping = @shippingVector.get(index)
            if (name <=> shipping.getName()) == 0
                return shipping
            end
        end
        error = "Error Finding Shipping: " + name
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SHIPPINGERROR)
            @logUtil.putF(@commonStrings.EXCEPTION, self, "getShippingInterface(String name)")
        end
        raise StandardError.new(error)
    end
    java_overload :getShippingInterface, 1
    

    # throws Exception
    def getDefault()
        return @defaultShippingMethodInterface
    end
    java_overload :getDefault, 0
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Shipping; module Modules; autoload :ShippingInterface, "org/allbinary/business/user/commerce/shipping/modules/ShippingInterface" unless const_defined?(:ShippingInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :ShippingMethodsFactory, "org/allbinary/business/user/commerce/shipping/ShippingMethodsFactory" unless const_defined?(:ShippingMethodsFactory, false)

end; end; end; end; end; end

