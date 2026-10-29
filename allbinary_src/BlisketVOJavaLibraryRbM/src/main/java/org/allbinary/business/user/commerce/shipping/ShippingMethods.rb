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

require "org/allbinary/business/user/commerce/shipping/ShippingMethodsInterface"

class ShippingMethods
    include ShippingMethodsInterface
    attr_accessor :logUtil, :commonStrings, :shippingVector, :defaultShippingMethodInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @shippingVector = nil
        @defaultShippingMethodInterface = nil
    end
    

    def initialize(abeClientInformation, storeFrontInterface)
        initialize_fields
        @defaultShippingMethodInterface = ShippingMethodsFactory.new(abeClientInformation, storeFrontInterface).getDefaultInstance()
        @shippingVector = ShippingMethodsFactory.new(abeClientInformation, storeFrontInterface).getInstance()
    end
    

    def get()
        return @shippingVector
    end
    

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
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SHIPPINGERROR)
            @logUtil.putF(@commonStrings.EXCEPTION, self, "getShippingInterface(String name)")
        end
        raise StandardError.new(error)
    end
    

    # throws Exception
    def getDefault()
        return @defaultShippingMethodInterface
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/user/commerce/shipping/modules/ShippingInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/business/user/commerce/shipping/ShippingMethodsFactory"

