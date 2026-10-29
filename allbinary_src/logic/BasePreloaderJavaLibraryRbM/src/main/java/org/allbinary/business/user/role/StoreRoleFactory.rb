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
# package org.allbinary.business.user.role


class StoreRoleFactory
    attr_accessor :roles, :subscriberRoles, :wholesaleRoles

    def initialize_fields
        @roles = BasicArrayListD.new()
        @subscriberRoles = BasicArrayListD.new()
        @wholesaleRoles = BasicArrayListD.new()
    end
    

    def self.getInstance()
        return StoreRoleFactory.instance
    end
    

    def initialize()
        initialize_fields
        basicUserRoleFactory = BasicUserRoleFactory.getInstance()
        @roles.add(basicUserRoleFactory.CUSTOMER)
        @roles.add(basicUserRoleFactory.SUBSCRIBERCUSTOMER)
        @roles.add(basicUserRoleFactory.WHOLESALECUSTOMER)
        @subscriberRoles.add(basicUserRoleFactory.SUBSCRIBERCUSTOMER)
        @wholesaleRoles.add(basicUserRoleFactory.WHOLESALECUSTOMER)
    end
    

    def getRoles()
        return @roles
    end
    

    def getSubscriberRoles()
        return @subscriberRoles
    end
    

    def getWholesaleRoles()
        return @wholesaleRoles
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/user/role/BasicUserRoleFactory"

class StoreRoleFactory
    @@instance = StoreRoleFactory.new()
end

