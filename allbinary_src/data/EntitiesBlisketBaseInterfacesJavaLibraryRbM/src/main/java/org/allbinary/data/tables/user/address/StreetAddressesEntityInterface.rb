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
# package org.allbinary.data.tables.user.address

require "java/lang/JavaOverload"
require "org/allbinary/data/tables/BasicDataTableInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Address

module StreetAddressesEntityInterface
    include ::Org::Allbinary::DataPackage::Tables::BasicDataTableInterface
    

    def remove(index)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :remove, 1
    

    def add(address)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :add, 1
    

    def update(address)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :update, 1
    

    def getLastId()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getLastId, 0
    

    def getDefault()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getDefault, 0
    

    def setDefault(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setDefault, 1
end

module ::Org; module Allbinary; module Business; module User; module Address; autoload :StreetAddress, "org/allbinary/business/user/address/StreetAddress" unless const_defined?(:StreetAddress, false); end; end; end; end; end

end; end; end; end; end; end

