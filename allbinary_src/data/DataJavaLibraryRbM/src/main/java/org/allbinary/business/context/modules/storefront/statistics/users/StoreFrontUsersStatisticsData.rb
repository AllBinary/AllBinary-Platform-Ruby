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
# package org.allbinary.business.context.modules.storefront.statistics.users


class StoreFrontUsersStatisticsData
    attr_accessor :NAME, :NUMBEROFUSERS

    def initialize_fields
        @NAME = "STOREFRONT_USERS_STATISTICS_NAME"
        @NUMBEROFUSERS = "STOREFRONT_USERS_STATISTICS_NUMBER_OF_USERS"
    end
    

    def initialize()
        initialize_fields
    end
    

    def self.getInstance()
        return StoreFrontUsersStatisticsData.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class StoreFrontUsersStatisticsData
    @@instance = StoreFrontUsersStatisticsData.new()
end

