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

require "org/allbinary/business/context/modules/storefront/statistics/advertisements/StoreFrontAdvertisementsStatisticsInterface"

class StoreFrontAdvertisementsStatistics
    include StoreFrontAdvertisementsStatisticsInterface
    

    def initialize(storeFrontInterface)
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        return hashMap
    end
    

    def toVector()
        return nil
    end
    

    def getKey()
        return nil
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
autoload :StdUtil, "org/allbinary/logic/StdUtil"

