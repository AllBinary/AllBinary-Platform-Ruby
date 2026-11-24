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
# package org.allbinary.business.user.modules.admin.store.customer

require "java/lang/JavaOverload"
require "org/allbinary/business/user/modules/User"

module ::Org; module Allbinary; module Business; module User; module Modules; module Admin; module Store; module Customer

class CustomerStoreAdminUser < ::Org::Allbinary::Business::User::Modules::User

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_business_user_modules_admin_store_customer_CustomerStoreAdminUser_0(*args)
        when 1 then jnew_org_allbinary_business_user_modules_admin_store_customer_CustomerStoreAdminUser_1(*args)
        else raise ArgumentError, "No constructor of CustomerStoreAdminUser takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_business_user_modules_admin_store_customer_CustomerStoreAdminUser_0()
        CustomerStoreAdminUser.superclass.instance_method(:initialize).bind(self).call()
    end
    

    def jnew_org_allbinary_business_user_modules_admin_store_customer_CustomerStoreAdminUser_1(userHashMap)
        CustomerStoreAdminUser.superclass.instance_method(:initialize).bind(self).call(userHashMap)
    end
    

    def validateSession(weblisketSession)
        CustomerStoreAdminUser.superclass.java_super_method(:validateSession, 1).bind(self).call(weblisketSession)
        self.updateSession(weblisketSession)
    end
    java_overload :validateSession, 1
    

    def updateSession(weblisketSession)
        weblisketSession.setStoreName(self.getPermissions())
    end
    java_overload :updateSession, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSessionInterface, "org/allbinary/logic/communication/http/request/session/WeblisketSessionInterface" unless const_defined?(:WeblisketSessionInterface, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end; end

