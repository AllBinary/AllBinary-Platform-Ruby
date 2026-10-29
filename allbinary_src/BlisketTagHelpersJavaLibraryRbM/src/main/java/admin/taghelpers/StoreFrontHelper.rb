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
# package admin.taghelpers

# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/TagHelper"

class StoreFrontHelper < TagHelper
    attr_accessor :storeFrontInterface, :currentLocation, :currentHomeLocation

    def initialize_fields
        @storeFrontInterface = nil
        @currentLocation = nil
        @currentHomeLocation = nil
    end
    

    def initialize(hashMap, pageContext)
        super()
        initialize_fields
        storeName = hashMap.get(StoreFrontData.getInstance().NAME)
        if storeName != nil
            @storeFrontInterface = StoreFrontFactory.getInstance(storeName)
            @currentLocation = Replace.new(CommonSeps.getInstance().SPACE, "%20").all(@storeFrontInterface.getCurrentHostName() + @storeFrontInterface.getCurrentHostNamePath())
            @currentHomeLocation = Replace.new(CommonSeps.getInstance().SPACE, "%20").all(@storeFrontInterface.getCurrentHomeHostName() + @storeFrontInterface.getCurrentHomeHostNamePath())
        else
            stringUtil = StringUtil.getInstance()
            @storeFrontInterface = StoreFront.new()
            @currentLocation = stringUtil.EMPTY_STRING
            @currentHomeLocation = stringUtil.EMPTY_STRING
        end
    end
    

    def getCurrentLocation()
        return @currentLocation
    end
    

    def getCurrentHomeLocation()
        return @currentHomeLocation
    end
end

require "java/util/HashMap"
require "org/allbinary/business/context/modules/storefront/StoreFront"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/regex/replace/Replace"
require "org/allbinary/string/CommonSeps"

