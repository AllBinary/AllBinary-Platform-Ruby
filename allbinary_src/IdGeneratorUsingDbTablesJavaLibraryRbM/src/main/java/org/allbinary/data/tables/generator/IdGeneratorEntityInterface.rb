# 
# AllBinary Open License Version 1 
# Copyright (c) 2002 AllBinary 
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
# package org.allbinary.data.tables.generator

require "org/allbinary/data/tables/BasicDataTableInterface"

module IdGeneratorEntityInterface
    include BasicDataTableInterface
    

    # throws Exception
    def get(name)
        raise NotImplementedError
    end
    

    def deleteWhere(key, value)
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

