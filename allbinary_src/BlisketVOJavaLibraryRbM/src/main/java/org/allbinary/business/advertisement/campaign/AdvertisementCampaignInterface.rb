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
# package org.allbinary.business.advertisement.campaign


module ::Org; module Allbinary; module Business; module Advertisement; module Campaign

module AdvertisementCampaignInterface
    

    def getName()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getComponent()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setName(name)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setComponentName(name)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def search(advertisementSearchInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Business; module Advertisement; autoload :AdvertisementsInterface, "org/allbinary/business/advertisement/AdvertisementsInterface" unless const_defined?(:AdvertisementsInterface, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Advertisement; module Search; autoload :AdvertisementSearchInterface, "org/allbinary/business/advertisement/search/AdvertisementSearchInterface" unless const_defined?(:AdvertisementSearchInterface, false); end; end; end; end; end

end; end; end; end; end

