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

# require "java/util/Set"
require "org/allbinary/business/context/modules/storefront/statistics/users/StoreFrontUsersStatisticsInterface"

class StoreFrontUsersStatistics
    include StoreFrontUsersStatisticsInterface
    attr_accessor :totalNumberOfUsers, :totalUsersByRoleHashMap

    def initialize_fields
        @totalNumberOfUsers = nil
        @totalUsersByRoleHashMap = nil
    end
    

    def initialize(storeFrontInterface)
        initialize_fields
        @totalUsersByRoleHashMap = StdUtil.getInstance().createHashMap()
        userEntityInterface = UserEntityFactory.getInstance()
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
    

    def getNumberOfUsers()
        return @totalNumberOfUsers
    end
    

    def getNumberOfUsersByRole(role)
        totalForRole = @totalUsersByRoleHashMap.get(role)
        return totalForRole
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
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
    

    def toVector()
        return nil
    end
    

    def getKey()
        return nil
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
autoload :UserInterface, "org/allbinary/business/user/UserInterface"
autoload :UserRole, "org/allbinary/business/user/role/UserRole"
autoload :UserEntityFactory, "org/allbinary/data/tables/user/UserEntityFactory"
autoload :UserEntityInterface, "org/allbinary/data/tables/user/UserEntityInterface"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :StoreFrontUsersStatisticsData, "org/allbinary/business/context/modules/storefront/statistics/users/StoreFrontUsersStatisticsData"

