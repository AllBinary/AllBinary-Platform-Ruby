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
# package org.allbinary.data.tables.workflow

require "org/allbinary/data/tables/BasicDataTableInterface"

module WorkFlowEntityInterface
    include BasicDataTableInterface
    

    def get(storeName)
        raise NotImplementedError
    end
    

    # throws Exception, LicensingException
    # Java overloaded method: Ruby keeps the last definition
    def get(name, storeName)
        raise NotImplementedError
    end
    

    def delete(name, storeName)
        raise NotImplementedError
    end
    

    def insert(values)
        raise NotImplementedError
    end
    

    def update(updatedValues)
        raise NotImplementedError
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/control/workflow/WorkFlowInterface"
require "org/allbinary/logic/system/security/licensing/LicensingException"

