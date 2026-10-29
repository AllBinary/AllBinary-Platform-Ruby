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
# package org.allbinary.business.advertisement.search


class AdvertisementSearchData
    attr_accessor :TITLE, :PRICE, :RELEVANCY, :POPULARITY

    def initialize_fields
        @TITLE = "AFFILIATE_TITLE"
        @PRICE = "AFFILIATE_PRICE"
        @RELEVANCY = "AFFILIATE_RELEVANCY"
        @POPULARITY = "AFFILIATE_POPULARITY"
    end
    

    def self.getInstance()
        return AdvertisementSearchData.instance
    end
    

    def initialize()
        initialize_fields
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class AdvertisementSearchData
    @@instance = AdvertisementSearchData.new()
end

