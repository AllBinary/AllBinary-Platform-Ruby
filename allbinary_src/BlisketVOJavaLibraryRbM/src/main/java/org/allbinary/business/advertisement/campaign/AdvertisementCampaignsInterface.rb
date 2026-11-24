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

module AdvertisementCampaignsInterface
    

    def add(advertisementInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def get(index)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def size()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isEnabled()
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Business; module Advertisement; autoload :AdvertisementInterface, "org/allbinary/business/advertisement/AdvertisementInterface" unless const_defined?(:AdvertisementInterface, false); end; end; end; end

end; end; end; end; end

