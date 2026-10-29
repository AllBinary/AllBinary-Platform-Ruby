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
# package org.allbinary.business.advertisement.search.website

require "org/allbinary/business/advertisement/search/website/AdvertisementWebsiteInterface"

class BasicAdvertisementWebsite
    include AdvertisementWebsiteInterface
    attr_accessor :websiteId

    def initialize_fields
        @websiteId = nil
    end
    

    def initialize(websiteId)
        initialize_fields
        @websiteId = websiteId
    end
    

    def toString()
        return @websiteId
    end
    alias_method :to_s, :toString
end

