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
# package org.allbinary.data.tables.user.address

require "org/allbinary/data/tables/BasicDataTableInterface"

module StreetAddressesEntityInterface
    include BasicDataTableInterface
    

    def remove(index)
        raise NotImplementedError
    end
    

    def add(address)
        raise NotImplementedError
    end
    

    def update(address)
        raise NotImplementedError
    end
    

    def getLastId()
        raise NotImplementedError
    end
    

    def getDefault()
        raise NotImplementedError
    end
    

    def setDefault(value)
        raise NotImplementedError
    end
end

require "org/allbinary/business/user/address/StreetAddress"

