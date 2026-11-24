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


module ::Org; module Allbinary; module Business; module User

class CreateUserFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance(hashMap)
        if hashMap != nil
            roleString = hashMap.get(::Org::Allbinary::Business::User::Role::UserRoleData::NAME.to_s)
            if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(roleString)
                role = ::Org::Allbinary::Business::User::Role::UserRoleB.getRole(roleString)
                return role.getUserFactory().getInstance(hashMap)
            else
                raise StandardError.new("No Role Specified")
            end
        else
            raise StandardError.new("Null HashMap")
        end
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :UserRole, "org/allbinary/business/user/role/UserRole" unless const_defined?(:UserRole, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :UserRoleB, "org/allbinary/business/user/role/UserRoleB" unless const_defined?(:UserRoleB, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :UserRoleData, "org/allbinary/business/user/role/UserRoleData" unless const_defined?(:UserRoleData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
autoload :UserInterface, "org/allbinary/business/user/UserInterface" unless const_defined?(:UserInterface, false)

end; end; end; end

