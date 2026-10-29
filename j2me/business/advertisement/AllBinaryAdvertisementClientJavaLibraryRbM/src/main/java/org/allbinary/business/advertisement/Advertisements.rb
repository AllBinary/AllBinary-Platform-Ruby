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
# package org.allbinary.business.advertisement


class Advertisements
    attr_accessor :bannerList, :pageList, :myRandomFactory

    def initialize_fields
        @bannerList = BasicArrayListD.new()
        @pageList = BasicArrayListD.new()
        @myRandomFactory = MyRandomFactory.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def addPage(advertisementProcessorInterface)
        if !@pageList.contains(advertisementProcessorInterface)
            @pageList.add(advertisementProcessorInterface)
        end
    end
    

    def startRandomPage()
        size = @pageList.size()
        if size > 0
            random = @myRandomFactory.getAbsoluteNextInt(size)
            advertisementProcessorInterface = @pageList.objectArray[random]
            advertisementProcessorInterface.start()
        end
    end
    

    def processRandomPage()
        if LockedUtil.getInstance().isLocked()
            size = @pageList.size()
            if size > 0
                random = @myRandomFactory.getAbsoluteNextInt(size)
                advertisementProcessorInterface = @pageList.objectArray[random]
                advertisementProcessorInterface.process()
            end
        end
    end
    

    def stopAllPage()
        index = @pageList.size()
        while (index -= 1) >= 0
            advertisementProcessorInterface = @pageList.objectArray[index]
            advertisementProcessorInterface.stop()
        end
    end
    

    def addBanner(advertisementProcessorInterface)
        if !@bannerList.contains(advertisementProcessorInterface)
            @bannerList.add(advertisementProcessorInterface)
        end
    end
    

    def startAll()
        index = @bannerList.size()
        while (index -= 1) >= 0
            advertisementProcessorInterface = @bannerList.objectArray[index]
            advertisementProcessorInterface.start()
        end
    end
    

    def stopAllBanner()
        index = @bannerList.size()
        while (index -= 1) >= 0
            advertisementProcessorInterface = @bannerList.objectArray[index]
            advertisementProcessorInterface.stop()
        end
    end
    

    def getBanner(index)
        advertisementProcessorInterface = @bannerList.objectArray[index]
        return advertisementProcessorInterface
    end
    

    def stopAll()
        self.stopAllBanner()
        self.stopAllPage()
    end
end

require "org/allbinary/game/rand/MyRandomFactory"
require "org/allbinary/logic/system/security/licensing/LockedUtil"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/advertisement/AdvertisementProcessorInterface"

