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
# package org.allbinary.data.tables.advertisement.areas

require "java/lang/JavaOverload"
require "org/allbinary/data/tables/BasicDataTableInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module Advertisement; module Areas

module AdvertisementAreasEntityInterface
    include ::Org::Allbinary::DataPackage::Tables::BasicDataTableInterface
    

    # throws Exception
    def get_j1(storeName)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def get_j2(storeName, advertisementAreaName)
        return super if defined?(super)
        raise NotImplementedError
    end

    def get(*java_overload_args)
        return get_j1(*java_overload_args) if java_overload_args.length == 1
        return get_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method get takes #{java_overload_args.length} arguments"
    end
    

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
module ::Org; module Allbinary; module Business; module Advertisement; module Area; autoload :AdvertisementAreaInterface, "org/allbinary/business/advertisement/area/AdvertisementAreaInterface" unless const_defined?(:AdvertisementAreaInterface, false); end; end; end; end; end

end; end; end; end; end; end

