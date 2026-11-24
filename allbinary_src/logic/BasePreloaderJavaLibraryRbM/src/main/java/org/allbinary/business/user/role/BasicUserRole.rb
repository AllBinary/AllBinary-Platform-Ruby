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

require "java/lang/JavaOverload"
require "java/io/Serializable"

module ::Org; module Allbinary; module Business; module User; module Role

class BasicUserRole
    include ::Java::Io::Serializable
    attr_accessor :m_int_RoleId, :role, :displayValue, :sessionTimeout, :sessionInactivityTimeout

    def jfields_org_allbinary_business_user_role_BasicUserRole
        @m_int_RoleId = nil unless instance_variable_defined?(:@m_int_RoleId)
        @role = nil unless instance_variable_defined?(:@role)
        @displayValue = nil unless instance_variable_defined?(:@displayValue)
        @sessionTimeout = nil unless instance_variable_defined?(:@sessionTimeout)
        @sessionInactivityTimeout = nil unless instance_variable_defined?(:@sessionInactivityTimeout)
    end

    def initialize(*args)
        case args.length
        when 4 then jnew_org_allbinary_business_user_role_BasicUserRole_4(*args)
        when 5 then jnew_org_allbinary_business_user_role_BasicUserRole_5(*args)
        else raise ArgumentError, "No constructor of BasicUserRole takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_business_user_role_BasicUserRole_4(aRole, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout)
        jnew_org_allbinary_business_user_role_BasicUserRole_5(aRole, aRole, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout)
    end
    

    def jnew_org_allbinary_business_user_role_BasicUserRole_5(aRole, aDisplayValue, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout)
        jfields_org_allbinary_business_user_role_BasicUserRole
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
    java_overload :getRoleId, 0
    

    def getRole()
        return @role
    end
    java_overload :getRole, 0
    

    def getSessionTimeout()
        return @sessionTimeout
    end
    java_overload :getSessionTimeout, 0
    

    def getSessionInactivityTimeout()
        return @sessionInactivityTimeout
    end
    java_overload :getSessionInactivityTimeout, 0
    

    def equals(basicUserRole)
        if self.getRoleId() == basicUserRole.getRoleId()
            return true
        end
        return false
    end
    java_overload :equals, 1
    alias_method :==, :equals
    

    def toString()
        return self.getRole()
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

autoload :BasicUserRoles, "org/allbinary/business/user/role/BasicUserRoles" unless const_defined?(:BasicUserRoles, false)

end; end; end; end; end

