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
# package org.allbinary.business.advertisement.search.category

require "java/lang/JavaOverload"
require "org/allbinary/business/advertisement/search/category/AdvertisementCategoryInterface"

module ::Org; module Allbinary; module Business; module Advertisement; module Search; module Category

class BasicAdvertisementCategory
    include AdvertisementCategoryInterface
    attr_accessor :categoryId

    def jfields_org_allbinary_business_advertisement_search_category_BasicAdvertisementCategory
        @categoryId = nil unless instance_variable_defined?(:@categoryId)
    end
    

    def initialize(categoryId)
        jfields_org_allbinary_business_advertisement_search_category_BasicAdvertisementCategory
        @categoryId = categoryId
    end
    

    def toString()
        return @categoryId
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

end; end; end; end; end; end

