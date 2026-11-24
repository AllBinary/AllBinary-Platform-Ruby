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
# package org.allbinary.business.advertisement.thumbnail

require "java/lang/JavaOverload"
require "org/allbinary/business/advertisement/thumbnail/AdvertisementThumbnailInterface"

module ::Org; module Allbinary; module Business; module Advertisement; module Thumbnail

class AdvertisementThumbnail
    include AdvertisementThumbnailInterface
    attr_accessor :imageFileName, :imageUrl, :constraint

    def jfields_org_allbinary_business_advertisement_thumbnail_AdvertisementThumbnail
        @imageFileName = nil unless instance_variable_defined?(:@imageFileName)
        @imageUrl = nil unless instance_variable_defined?(:@imageUrl)
        @constraint = nil unless instance_variable_defined?(:@constraint)
    end
    

    def initialize()
        jfields_org_allbinary_business_advertisement_thumbnail_AdvertisementThumbnail
    end
    

    def getFileName()
        return @imageFileName
    end
    java_overload :getFileName, 0
    

    def getUrl()
        return @imageUrl
    end
    java_overload :getUrl, 0
    

    def getTwoDimensionalConstraint()
        return @constraint
    end
    java_overload :getTwoDimensionalConstraint, 0
end

module ::Org; module Allbinary; module Logic; module ControlPackage; module Contraints; module Size; autoload :TwoDimensionalConstraintInterface, "org/allbinary/logic/control/contraints/size/TwoDimensionalConstraintInterface" unless const_defined?(:TwoDimensionalConstraintInterface, false); end; end; end; end; end; end

end; end; end; end; end

