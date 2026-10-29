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
# package org.allbinary.data.tables.user.quoterequest

require "org/allbinary/data/tables/BasicDataTableInterface"

module QuoteRequestEntityInterface
    include BasicDataTableInterface
    

    # throws Exception
    def get(userName, id)
        raise NotImplementedError
    end
    

    def getIds(userName)
        raise NotImplementedError
    end
    

    def deleteWhere(key, value)
        raise NotImplementedError
    end
    

    def insert(values)
        raise NotImplementedError
    end
    

    def update(userName, updatedValues)
        raise NotImplementedError
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/user/quoterequest/QuoteRequest"

