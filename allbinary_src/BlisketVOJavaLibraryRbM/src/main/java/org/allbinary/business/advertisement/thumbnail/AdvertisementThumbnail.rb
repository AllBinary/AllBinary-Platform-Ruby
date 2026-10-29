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

require "org/allbinary/business/advertisement/thumbnail/AdvertisementThumbnailInterface"

class AdvertisementThumbnail
    include AdvertisementThumbnailInterface
    attr_accessor :imageFileName, :imageUrl, :constraint

    def initialize_fields
        @imageFileName = nil
        @imageUrl = nil
        @constraint = nil
    end
    

    def initialize()
        initialize_fields
    end
    

    def getFileName()
        return @imageFileName
    end
    

    def getUrl()
        return @imageUrl
    end
    

    def getTwoDimensionalConstraint()
        return @constraint
    end
end

require "org/allbinary/logic/control/contraints/size/TwoDimensionalConstraintInterface"

