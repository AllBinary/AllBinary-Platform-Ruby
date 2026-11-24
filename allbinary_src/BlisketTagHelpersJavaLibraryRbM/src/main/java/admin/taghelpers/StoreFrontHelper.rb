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

require "java/lang/JavaOverload"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/TagHelper"

module ::Admin; module Taghelpers

class StoreFrontHelper < TagHelper
    attr_accessor :storeFrontInterface, :currentLocation, :currentHomeLocation

    def jfields_admin_taghelpers_StoreFrontHelper
        @storeFrontInterface = nil unless instance_variable_defined?(:@storeFrontInterface)
        @currentLocation = nil unless instance_variable_defined?(:@currentLocation)
        @currentHomeLocation = nil unless instance_variable_defined?(:@currentHomeLocation)
    end
    

    def initialize(hashMap, pageContext)
        super()
        jfields_admin_taghelpers_StoreFrontHelper
        storeName = hashMap.get(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME)
        if storeName != nil
            @storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(storeName)
            @currentLocation = ::Org::Allbinary::Logic::StringPackage::Regex::Replace::Replace.new(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE, "%20").all(@storeFrontInterface.getCurrentHostName() + @storeFrontInterface.getCurrentHostNamePath())
            @currentHomeLocation = ::Org::Allbinary::Logic::StringPackage::Regex::Replace::Replace.new(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE, "%20").all(@storeFrontInterface.getCurrentHomeHostName() + @storeFrontInterface.getCurrentHomeHostNamePath())
        else
            stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
            @storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFront.new()
            @currentLocation = stringUtil.EMPTY_STRING
            @currentHomeLocation = stringUtil.EMPTY_STRING
        end
    end
    

    def getCurrentLocation()
        return @currentLocation
    end
    java_overload :getCurrentLocation, 0
    

    def getCurrentHomeLocation()
        return @currentHomeLocation
    end
    java_overload :getCurrentHomeLocation, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFront, "org/allbinary/business/context/modules/storefront/StoreFront" unless const_defined?(:StoreFront, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory" unless const_defined?(:StoreFrontFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; module Regex; module Replace; autoload :Replace, "org/allbinary/logic/string/regex/replace/Replace" unless const_defined?(:Replace, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end

end; end

