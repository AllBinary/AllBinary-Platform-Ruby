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

autoload :HashMap, "java/util/HashMap"
autoload :UserRole, "org/allbinary/business/user/role/UserRole"
autoload :UserRoleB, "org/allbinary/business/user/role/UserRoleB"
autoload :UserRoleData, "org/allbinary/business/user/role/UserRoleData"
autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil"
autoload :UserInterface, "org/allbinary/business/user/UserInterface"

