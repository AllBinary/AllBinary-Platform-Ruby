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
        return defined?(@@roleVector) ? @@roleVector : nil
    end

    def self.roleVector=(value)
        @@roleVector = value
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/user/UserFactoryInterface"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/business/user/role/BasicUserRole"
require "org/allbinary/business/user/role/UserRoleFactory"

class UserRoleB
    @@roleVector = BasicArrayListD.new()
end

