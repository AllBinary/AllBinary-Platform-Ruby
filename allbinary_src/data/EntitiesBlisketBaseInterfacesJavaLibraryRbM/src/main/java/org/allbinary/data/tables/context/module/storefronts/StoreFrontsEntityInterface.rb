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

require "java/lang/JavaOverload"
require "org/allbinary/data/tables/BasicDataTableInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module Context; module ModulePackage; module Storefronts

module StoreFrontsEntityInterface
    include ::Org::Allbinary::DataPackage::Tables::BasicDataTableInterface
    

    # throws Exception
    def getStoreFrontInterface(name)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getStoreFrontInterface, 1
    

    def getStoreFrontNames()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getStoreFrontNames, 0
    

    def delete(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :delete, 1
    

    def insert(values)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :insert, 1
    

    def update(updatedValues)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :update, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end

end; end; end; end; end; end; end

