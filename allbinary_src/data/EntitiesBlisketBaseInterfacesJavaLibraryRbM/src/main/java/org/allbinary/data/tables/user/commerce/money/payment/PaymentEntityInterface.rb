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
# package org.allbinary.data.tables.user.commerce.money.payment

require "org/allbinary/data/tables/BasicDataTableInterface"

module PaymentEntityInterface
    include BasicDataTableInterface
    

    def getLastId(userName)
        raise NotImplementedError
    end
    

    def setDefault(userName, index)
        raise NotImplementedError
    end
    

    def getDefault(userName)
        raise NotImplementedError
    end
    

    def get(userName)
        raise NotImplementedError
    end
    

    def add(userName, paymentInterface)
        raise NotImplementedError
    end
    

    def remove(userName, index)
        raise NotImplementedError
    end
    

    def insert(values)
        raise NotImplementedError
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/user/commerce/money/payment/PaymentInterface"

