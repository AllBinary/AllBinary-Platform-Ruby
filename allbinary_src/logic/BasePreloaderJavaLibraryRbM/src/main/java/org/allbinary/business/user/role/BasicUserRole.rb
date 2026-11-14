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
        BasicUserRoles.getInstance().roleVector.add(self)
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
end

autoload :BasicUserRoles, "org/allbinary/business/user/role/BasicUserRoles"

