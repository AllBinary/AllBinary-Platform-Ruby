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

require "java/lang/JavaOverload"
require "org/allbinary/business/advertisement/area/AdvertisementAreaInterface"

module ::Org; module Allbinary; module Business; module Advertisement; module Area

class AdvertisementArea
    include AdvertisementAreaInterface
    attr_accessor :name, :storeName, :description, :advertisementAreaConstraintsInterface, :campaign

    def jfields_org_allbinary_business_advertisement_area_AdvertisementArea
        @name = nil unless instance_variable_defined?(:@name)
        @storeName = nil unless instance_variable_defined?(:@storeName)
        @description = nil unless instance_variable_defined?(:@description)
        @advertisementAreaConstraintsInterface = nil unless instance_variable_defined?(:@advertisementAreaConstraintsInterface)
        @campaign = nil unless instance_variable_defined?(:@campaign)
    end
    

    def initialize(hashMap)
        jfields_org_allbinary_business_advertisement_area_AdvertisementArea
        @name = hashMap.get(AdvertisementAreaData.getInstance().NAME)
        @storeName = hashMap.get(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME)
        @description = hashMap.get(AdvertisementAreaData.getInstance().DESCRIPTION)
        constraintsDomString = hashMap.get(AdvertisementAreaData.getInstance().CONSTRAINTS)
        document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(constraintsDomString)
        @advertisementAreaConstraintsInterface = AdvertisementAreaConstraints.new(document)
        @campaign = hashMap.get(::Org::Allbinary::Business::Advertisement::Campaign::AdvertisementCampaignData.getInstance().NAME)
    end
    

    def getName()
        return @name
    end
    java_overload :getName, 0
    

    def getStoreName()
        return @storeName
    end
    java_overload :getStoreName, 0
    

    def getDescription()
        return @description
    end
    java_overload :getDescription, 0
    

    def getConstraints()
        return @advertisementAreaConstraintsInterface
    end
    java_overload :getConstraints, 0
    

    def getCampaign()
        return @campaign
    end
    java_overload :getCampaign, 0
    

    def setName(name)
        @name = name
    end
    java_overload :setName, 1
    

    def setStoreName(storeName)
        @storeName = storeName
    end
    java_overload :setStoreName, 1
    

    def setDescription(description)
        @description = description
    end
    java_overload :setDescription, 1
    

    def setConstraints(advertisementConstraintsInterface)
        @advertisementAreaConstraintsInterface = @advertisementAreaConstraintsInterface
    end
    java_overload :setConstraints, 1
    

    def setCampaign(campaign)
        @campaign = campaign
    end
    java_overload :setCampaign, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Advertisement; module Campaign; autoload :AdvertisementCampaignData, "org/allbinary/business/advertisement/campaign/AdvertisementCampaignData" unless const_defined?(:AdvertisementCampaignData, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
autoload :AdvertisementAreaConstraints, "org/allbinary/business/advertisement/area/AdvertisementAreaConstraints" unless const_defined?(:AdvertisementAreaConstraints, false)
autoload :AdvertisementAreaConstraintsInterface, "org/allbinary/business/advertisement/area/AdvertisementAreaConstraintsInterface" unless const_defined?(:AdvertisementAreaConstraintsInterface, false)
autoload :AdvertisementAreaData, "org/allbinary/business/advertisement/area/AdvertisementAreaData" unless const_defined?(:AdvertisementAreaData, false)

end; end; end; end; end

