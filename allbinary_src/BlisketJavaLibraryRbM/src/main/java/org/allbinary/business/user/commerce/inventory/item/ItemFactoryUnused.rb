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
# package org.allbinary.business.user.commerce.inventory.item

# require "javax/servlet/http/HttpServletRequest"

class ItemFactoryUnused
    

    def initialize()
    end
    

    # throws MoneyException
    def self.getInstance(hashMap)
        return Item.new(hashMap)
    end
    

    # throws Exception, MoneyException
    # Java overloaded method: Ruby keeps the last definition
    def self.getInstance(request)
        return Item.new(RequestParams.new(request).toHashMap())
    end
end

require "java/util/HashMap"
require "org/allbinary/business/user/commerce/money/MoneyException"
require "org/allbinary/data/tables/TableMappingInterface"
require "org/allbinary/logic/communication/http/request/RequestParams"
require "org/allbinary/business/user/commerce/inventory/item/Item"

