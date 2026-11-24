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
# package org.allbinary.business.context.modules.storefront.statistics.users

require "java/lang/JavaOverload"
# require "java/util/Set"
require "org/allbinary/business/context/modules/storefront/statistics/users/StoreFrontUsersStatisticsInterface"

module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Users

class StoreFrontUsersStatistics
    include StoreFrontUsersStatisticsInterface
    attr_accessor :totalNumberOfUsers, :totalUsersByRoleHashMap

    def jfields_org_allbinary_business_context_modules_storefront_statistics_users_StoreFrontUsersStatistics
        @totalNumberOfUsers = nil unless instance_variable_defined?(:@totalNumberOfUsers)
        @totalUsersByRoleHashMap = nil unless instance_variable_defined?(:@totalUsersByRoleHashMap)
    end
    

    def initialize(storeFrontInterface)
        jfields_org_allbinary_business_context_modules_storefront_statistics_users_StoreFrontUsersStatistics
        @totalUsersByRoleHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        userEntityInterface = ::Org::Allbinary::DataPackage::Tables::User::UserEntityFactory.getInstance()
        userVector = userEntityInterface.getCustomers()
        @totalNumberOfUsers = userVector.size()
        size = userVector.size()
        (0...size).each do |index|
            userInterface = userVector.get(index)
            nextUserRole = userInterface.getRole()
            currentNumberOfUsersForRole = self.getNewTotal(nextUserRole)
            @totalUsersByRoleHashMap.put(nextUserRole, currentNumberOfUsersForRole)
        end
    end
    

    def getNewTotal(userRole)
        numberOfUsersForRoleLong = @totalUsersByRoleHashMap.get(userRole)
        if numberOfUsersForRoleLong == nil
            numberOfUsersForRoleLong = 0
        end
        return numberOfUsersForRoleLong.to_i + 1
    end
    java_overload :getNewTotal, 1
    

    def getNumberOfUsers()
        return @totalNumberOfUsers
    end
    java_overload :getNumberOfUsers, 0
    

    def getNumberOfUsersByRole(role)
        totalForRole = @totalUsersByRoleHashMap.get(role)
        return totalForRole
    end
    java_overload :getNumberOfUsersByRole, 1
    

    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        hashMap.put(StoreFrontUsersStatisticsData.getInstance().NUMBEROFUSERS, self.getNumberOfUsers().to_s)
        setOfUserRoles = @totalUsersByRoleHashMap.keySet()
        nextUserRole = nil
        userRoleArray = setOfUserRoles.toArray()
        size = userRoleArray.length
        (0...size).each do |index|
            nextUserRole = userRoleArray[index]
            totalForRole = @totalUsersByRoleHashMap.get(nextUserRole)
            hashMap.put(nextUserRole.to_s, totalForRole.to_s)
        end
        return hashMap
    end
    java_overload :toHashMap, 0
    

    def toVector()
        return nil
    end
    java_overload :toVector, 0
    

    def getKey()
        return nil
    end
    java_overload :getKey, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserInterface, "org/allbinary/business/user/UserInterface" unless const_defined?(:UserInterface, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :UserRole, "org/allbinary/business/user/role/UserRole" unless const_defined?(:UserRole, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; autoload :UserEntityFactory, "org/allbinary/data/tables/user/UserEntityFactory" unless const_defined?(:UserEntityFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; autoload :UserEntityInterface, "org/allbinary/data/tables/user/UserEntityInterface" unless const_defined?(:UserEntityInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
autoload :StoreFrontUsersStatisticsData, "org/allbinary/business/context/modules/storefront/statistics/users/StoreFrontUsersStatisticsData" unless const_defined?(:StoreFrontUsersStatisticsData, false)

end; end; end; end; end; end; end; end

