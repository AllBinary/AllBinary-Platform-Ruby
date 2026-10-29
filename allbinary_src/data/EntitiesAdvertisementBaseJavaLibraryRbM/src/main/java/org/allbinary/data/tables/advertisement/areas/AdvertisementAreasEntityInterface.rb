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
# package org.allbinary.data.tables.advertisement.areas

require "org/allbinary/data/tables/BasicDataTableInterface"

module AdvertisementAreasEntityInterface
    include BasicDataTableInterface
    

    # throws Exception
    def get(storeName)
        raise NotImplementedError
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def get(storeName, advertisementAreaName)
        raise NotImplementedError
    end
    

    def delete(value)
        raise NotImplementedError
    end
    

    def insert(values)
        raise NotImplementedError
    end
    

    def update(updatedValues)
        raise NotImplementedError
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/advertisement/area/AdvertisementAreaInterface"

