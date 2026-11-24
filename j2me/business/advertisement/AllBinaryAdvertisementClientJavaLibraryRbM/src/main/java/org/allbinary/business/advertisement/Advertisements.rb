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


module ::Org; module Allbinary; module Business; module Advertisement

class Advertisements
    attr_accessor :bannerList, :pageList, :myRandomFactory

    def jfields_org_allbinary_business_advertisement_Advertisements
        @bannerList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @pageList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @myRandomFactory = ::Org::Allbinary::Game::Rand::MyRandomFactory.getInstance()
    end

    def initialize
        jfields_org_allbinary_business_advertisement_Advertisements
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
        if ::Org::Allbinary::Logic::System::Security::Licensing::LockedUtil.getInstance().isLocked()
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

module ::Org; module Allbinary; module Game; module Rand; autoload :MyRandomFactory, "org/allbinary/game/rand/MyRandomFactory" unless const_defined?(:MyRandomFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LockedUtil, "org/allbinary/logic/system/security/licensing/LockedUtil" unless const_defined?(:LockedUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :AdvertisementProcessorInterface, "org/allbinary/business/advertisement/AdvertisementProcessorInterface" unless const_defined?(:AdvertisementProcessorInterface, false)

end; end; end; end

