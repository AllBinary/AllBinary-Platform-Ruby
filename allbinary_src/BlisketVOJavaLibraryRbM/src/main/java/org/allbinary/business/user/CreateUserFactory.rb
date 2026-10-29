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
# package org.allbinary.business.user


class CreateUserFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance(hashMap)
        if hashMap != nil
            roleString = hashMap.get(UserRoleData::NAME.to_s)
            if !StringValidationUtil.getInstance().isEmpty(roleString)
                role = UserRoleB.getRole(roleString)
                return role.getUserFactory().getInstance(hashMap)
            else
                raise StandardError.new("No Role Specified")
            end
        else
            raise StandardError.new("Null HashMap")
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/business/user/role/UserRole"
require "org/allbinary/business/user/role/UserRoleB"
require "org/allbinary/business/user/role/UserRoleData"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/business/user/UserInterface"

