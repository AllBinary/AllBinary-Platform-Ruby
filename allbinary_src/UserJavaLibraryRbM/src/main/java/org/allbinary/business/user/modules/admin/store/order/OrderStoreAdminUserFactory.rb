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

require "org/allbinary/business/user/UserFactoryInterface"

class OrderStoreAdminUserFactory
    include UserFactoryInterface
    

    def initialize()
    end
    

    # throws Exception
    def getInstance()
        return OrderStoreAdminUser.new()
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(hashMap)
        return OrderStoreAdminUser.new(hashMap)
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :UserInterface, "org/allbinary/business/user/UserInterface"
autoload :OrderStoreAdminUser, "org/allbinary/business/user/modules/admin/store/order/OrderStoreAdminUser"

