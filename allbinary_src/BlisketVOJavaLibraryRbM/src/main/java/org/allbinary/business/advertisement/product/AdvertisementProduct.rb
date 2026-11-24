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
# package org.allbinary.business.advertisement.product

require "java/lang/JavaOverload"
require "org/allbinary/business/advertisement/product/AdvertisementProductInterface"

module ::Org; module Allbinary; module Business; module Advertisement; module Product

class AdvertisementProduct
    include AdvertisementProductInterface
    attr_accessor :type, :link, :number, :constraint

    def jfields_org_allbinary_business_advertisement_product_AdvertisementProduct
        @type = nil unless instance_variable_defined?(:@type)
        @link = nil unless instance_variable_defined?(:@link)
        @number = 0 unless instance_variable_defined?(:@number)
        @constraint = nil unless instance_variable_defined?(:@constraint)
    end
    

    def initialize()
        jfields_org_allbinary_business_advertisement_product_AdvertisementProduct
    end
    

    def getType()
        return @type
    end
    java_overload :getType, 0
    

    def getLink()
        return @link
    end
    java_overload :getLink, 0
    

    def getNumber()
        return @number
    end
    java_overload :getNumber, 0
    

    def getTwoDimensionalConstraint()
        return @constraint
    end
    java_overload :getTwoDimensionalConstraint, 0
end

module ::Org; module Allbinary; module Logic; module ControlPackage; module Contraints; module Size; autoload :TwoDimensionalConstraintInterface, "org/allbinary/logic/control/contraints/size/TwoDimensionalConstraintInterface" unless const_defined?(:TwoDimensionalConstraintInterface, false); end; end; end; end; end; end

end; end; end; end; end

