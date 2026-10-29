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

require "org/allbinary/business/advertisement/product/AdvertisementProductInterface"

class AdvertisementProduct
    include AdvertisementProductInterface
    attr_accessor :type, :link, :number, :constraint

    def initialize_fields
        @type = nil
        @link = nil
        @number = 0
        @constraint = nil
    end
    

    def initialize()
        initialize_fields
    end
    

    def getType()
        return @type
    end
    

    def getLink()
        return @link
    end
    

    def getNumber()
        return @number
    end
    

    def getTwoDimensionalConstraint()
        return @constraint
    end
end

require "org/allbinary/logic/control/contraints/size/TwoDimensionalConstraintInterface"

