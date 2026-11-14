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

require "java/lang/Object"
require "org/allbinary/business/user/role/UserRole"

class UserRoleB < UserRole
    

    def initialize(aBasicUserRole, aUserFactoryInterface)
        super(aBasicUserRole, aUserFactoryInterface)
        UserRoleB.roleVector.add(self)
    end
    

    # throws Exception
    def self.getRole(role)
        java_monitor.synchronize do
        UserRoleFactory.getInstance()
        if !StringValidationUtil.getInstance().isEmpty(role)
            roleVector = UserRoleB.getAll()
            size = roleVector.size()
            (0...size).each do |index|
                userRole = roleVector.get(index)
                if (role <=> userRole.to_s) == 0
                    return userRole
                end
            end
        end
        raise StandardError.new("Unable to get role - Unknown Role = " + role)
        end
    end
    

    def self.getAll()
        UserRoleFactory.getInstance()
        return UserRoleB.roleVector
    end

    def self.roleVector()
        UserRoleB.java_static_fields unless @java_static_fields_started
        return defined?(@@roleVector) ? @@roleVector : nil
    end

    def self.roleVector=(value)
        UserRoleB.java_static_fields unless @java_static_fields_started
        @@roleVector = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@roleVector = BasicArrayListD.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "UserRoleB"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :UserFactoryInterface, "org/allbinary/business/user/UserFactoryInterface"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil"
autoload :BasicUserRole, "org/allbinary/business/user/role/BasicUserRole"
autoload :UserRoleFactory, "org/allbinary/business/user/role/UserRoleFactory"

begin
    UserRoleB.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

