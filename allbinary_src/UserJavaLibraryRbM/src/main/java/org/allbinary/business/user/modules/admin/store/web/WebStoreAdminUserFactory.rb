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
# package org.allbinary.business.user.modules.admin.store.web

require "org/allbinary/business/user/UserFactoryInterface"

class WebStoreAdminUserFactory
    include UserFactoryInterface
    

    def initialize()
    end
    

    # throws Exception
    def getInstance()
        return WebStoreAdminUser.new()
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(hashMap)
        return WebStoreAdminUser.new(hashMap)
    end
end

require "java/util/HashMap"
require "org/allbinary/business/user/UserInterface"
require "org/allbinary/business/user/modules/admin/store/web/WebStoreAdminUser"

