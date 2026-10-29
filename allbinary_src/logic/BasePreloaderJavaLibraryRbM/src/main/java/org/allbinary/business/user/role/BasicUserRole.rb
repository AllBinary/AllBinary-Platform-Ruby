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
require "java/io/Serializable"

class BasicUserRole
    include Serializable
    attr_accessor :m_int_RoleId, :role, :displayValue, :sessionTimeout, :sessionInactivityTimeout

    def initialize_fields
        @m_int_RoleId = nil
        @role = nil
        @displayValue = nil
        @sessionTimeout = nil
        @sessionInactivityTimeout = nil
    end

    def initialize(*args)
        case args.length
        when 4 then constructor4(*args)
        when 5 then constructor5(*args)
        end
    end
    

    def constructor4(aRole, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout)
        constructor5(aRole, aRole, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout)
    end
    

    def constructor5(aRole, aDisplayValue, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout)
        initialize_fields
        @m_int_RoleId = a_int_RoleId
        @role = aRole
        @displayValue = aDisplayValue
        @sessionTimeout = aSessionTimeout
        @sessionInactivityTimeout = aSessionInactivityTimeout
        BasicUserRole.roleVector.add(self)
    end
    

    def getRoleId()
        return @m_int_RoleId
    end
    

    def getRole()
        return @role
    end
    

    def getSessionTimeout()
        return @sessionTimeout
    end
    

    def getSessionInactivityTimeout()
        return @sessionInactivityTimeout
    end
    

    def equals(basicUserRole)
        if self.getRoleId() == basicUserRole.getRoleId()
            return true
        end
        return false
    end
    alias_method :==, :equals
    

    def toString()
        return self.getRole()
    end
    alias_method :to_s, :toString
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def self.getRole(role)
        java_monitor.synchronize do
        roleVector = BasicUserRole.getAll()
        size = roleVector.size()
        (0...size).each do |index|
            userRole = roleVector.get(index)
            if (role <=> userRole.to_s) == 0
                return userRole
            end
        end
        raise StandardError.new("Unable to get role - Unknown Role")
        end
    end
    

    def self.getAll()
        return BasicUserRole.roleVector
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

class BasicUserRole
    @@roleVector = BasicArrayListD.new()
end

