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
# package org.allbinary.business.context.configuration

require "org/allbinary/data/tables/TableMappingInterface"

class ContextConfigurationTableMapping
    include TableMappingInterface
    attr_accessor :contextConfigurationInterface

    def initialize_fields
        @contextConfigurationInterface = nil
    end
    

    def initialize(contextConfigurationInterface)
        initialize_fields
        @contextConfigurationInterface = contextConfigurationInterface
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        return hashMap
    end
    

    # throws Exception
    def getKey()
        return ContextConfigurationData.getInstance().NAME
    end
    

    # throws Exception
    def toVector()
        vector = BasicArrayListD.new()
        return vector
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/business/context/configuration/ContextConfigurationData"
require "org/allbinary/business/context/configuration/ContextConfigurationInterface"

