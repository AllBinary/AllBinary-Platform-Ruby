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

class UserRole
    include Serializable
    attr_accessor :basicUserRole, :userFactoryInterface

    def initialize_fields
        @basicUserRole = nil
        @userFactoryInterface = nil
    end
    

    def initialize(aBasicUserRole, aUserFactoryInterface)
        initialize_fields
        @basicUserRole = aBasicUserRole
        @userFactoryInterface = aUserFactoryInterface
    end
    

    def toString()
        return @basicUserRole.to_s
    end
    alias_method :to_s, :toString
    

    def getBasicUserRole()
        return @basicUserRole
    end
    

    # throws Exception
    def getUserFactory()
        return @userFactoryInterface
    end
    

    def getSessionTimeout()
        return @basicUserRole.getSessionTimeout()
    end
    

    def getSessionInactivityTimeout()
        return @basicUserRole.getSessionInactivityTimeout()
    end
end

require "org/allbinary/business/user/UserFactoryInterface"
require "org/allbinary/business/user/role/BasicUserRole"

