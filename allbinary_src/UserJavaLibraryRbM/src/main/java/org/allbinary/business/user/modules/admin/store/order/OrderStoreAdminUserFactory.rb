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
# package org.allbinary.business.user.modules.admin.store.order

require "java/lang/JavaOverload"
require "org/allbinary/business/user/UserFactoryInterface"

module ::Org; module Allbinary; module Business; module User; module Modules; module Admin; module Store; module Order

class OrderStoreAdminUserFactory
    include ::Org::Allbinary::Business::User::UserFactoryInterface
    

    def initialize()
    end
    

    # throws Exception
    def getInstance_j0()
        return OrderStoreAdminUser.new()
    end
    

    # throws Exception
    def getInstance_j1(hashMap)
        return OrderStoreAdminUser.new(hashMap)
    end

    def getInstance(*java_overload_args)
        return getInstance_j0(*java_overload_args) if java_overload_args.length == 0
        return getInstance_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method getInstance takes #{java_overload_args.length} arguments"
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserInterface, "org/allbinary/business/user/UserInterface" unless const_defined?(:UserInterface, false); end; end; end; end
autoload :OrderStoreAdminUser, "org/allbinary/business/user/modules/admin/store/order/OrderStoreAdminUser" unless const_defined?(:OrderStoreAdminUser, false)

end; end; end; end; end; end; end; end

