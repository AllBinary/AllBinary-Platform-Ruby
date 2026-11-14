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
# package org.allbinary.data.tables.context.module.storefronts

require "org/allbinary/data/tables/BasicDataTableInterface"

module StoreFrontsEntityInterface
    include BasicDataTableInterface
    

    # throws Exception
    def getStoreFrontInterface(name)
        raise NotImplementedError
    end
    

    def getStoreFrontNames()
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

autoload :HashMap, "java/util/HashMap"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface"

