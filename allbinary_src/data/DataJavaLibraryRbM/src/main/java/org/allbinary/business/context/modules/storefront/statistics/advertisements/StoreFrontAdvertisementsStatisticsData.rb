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
# package org.allbinary.business.context.modules.storefront.statistics.advertisements


class StoreFrontAdvertisementsStatisticsData
    attr_accessor :NAME

    def initialize_fields
        @NAME = "STOREFRONT_ADVERTISEMENTS_STATISTICS_NAME"
    end
    

    def self.getInstance()
        return StoreFrontAdvertisementsStatisticsData.instance
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

class StoreFrontAdvertisementsStatisticsData
    @@instance = StoreFrontAdvertisementsStatisticsData.new()
end

