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
# package org.allbinary.business.advertisement.area


class AdvertisementAreaData
    attr_accessor :NAME, :DESCRIPTION, :CONSTRAINTS

    def initialize_fields
        @NAME = "ADVERTISEMENT_NAME"
        @DESCRIPTION = "ADVERTISEMENT_DESCRIPTION"
        @CONSTRAINTS = "ADVERTISEMENT_CONSTRAINTS"
    end
    

    def self.getInstance()
        return AdvertisementAreaData.instance
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

class AdvertisementAreaData
    @@instance = AdvertisementAreaData.new()
end

