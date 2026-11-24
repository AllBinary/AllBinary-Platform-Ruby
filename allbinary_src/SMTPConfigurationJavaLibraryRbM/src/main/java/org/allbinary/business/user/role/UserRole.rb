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

class UserRole
    include ::Java::Io::Serializable
    attr_accessor :basicUserRole, :userFactoryInterface

    def jfields_org_allbinary_business_user_role_UserRole
        @basicUserRole = nil unless instance_variable_defined?(:@basicUserRole)
        @userFactoryInterface = nil unless instance_variable_defined?(:@userFactoryInterface)
    end
    

    def initialize(aBasicUserRole, aUserFactoryInterface)
        jfields_org_allbinary_business_user_role_UserRole
        @basicUserRole = aBasicUserRole
        @userFactoryInterface = aUserFactoryInterface
    end
    

    def toString()
        return @basicUserRole.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
    

    def getBasicUserRole()
        return @basicUserRole
    end
    java_overload :getBasicUserRole, 0
    

    # throws Exception
    def getUserFactory()
        return @userFactoryInterface
    end
    java_overload :getUserFactory, 0
    

    def getSessionTimeout()
        return @basicUserRole.getSessionTimeout()
    end
    java_overload :getSessionTimeout, 0
    

    def getSessionInactivityTimeout()
        return @basicUserRole.getSessionInactivityTimeout()
    end
    java_overload :getSessionInactivityTimeout, 0
end

module ::Org; module Allbinary; module Business; module User; autoload :UserFactoryInterface, "org/allbinary/business/user/UserFactoryInterface" unless const_defined?(:UserFactoryInterface, false); end; end; end; end
autoload :BasicUserRole, "org/allbinary/business/user/role/BasicUserRole" unless const_defined?(:BasicUserRole, false)

end; end; end; end; end

