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
# package org.allbinary.data.tables.user

require "java/lang/JavaOverload"
require "org/allbinary/data/tables/BasicDataTableInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module User

module UserEntityInterface
    include ::Org::Allbinary::DataPackage::Tables::BasicDataTableInterface
    

    # throws Exception
    def getAdministrators()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getAdministrators, 0
    

    # throws Exception
    def getStoreManagers(storeFrontInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getStoreManagers, 1
    

    # throws Exception
    def getCustomers()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getCustomers, 0
    

    # throws Exception
    def getUsersWithRole(userRole)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getUsersWithRole, 1
    

    # throws Exception
    def getUsers(storeFrontInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getUsers, 1
    

    # throws Exception
    def getUser(userName)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getUser, 1
    

    def login(userName, password)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :login, 2
    

    def deleteWhere(key, value)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :deleteWhere, 2
    

    def insert(values)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :insert, 1
    

    def update(userName, updatedValues)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :update, 2
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserInterface, "org/allbinary/business/user/UserInterface" unless const_defined?(:UserInterface, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :UserRole, "org/allbinary/business/user/role/UserRole" unless const_defined?(:UserRole, false); end; end; end; end; end

end; end; end; end; end

