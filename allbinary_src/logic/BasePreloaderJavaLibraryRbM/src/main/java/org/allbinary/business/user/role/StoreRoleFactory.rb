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
        StoreRoleFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        StoreRoleFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = StoreRoleFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "StoreRoleFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :BasicUserRoleFactory, "org/allbinary/business/user/role/BasicUserRoleFactory"

begin
    StoreRoleFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

