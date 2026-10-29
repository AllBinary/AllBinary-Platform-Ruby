# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.platform


class ThreedObjResources
    attr_accessor :hashtable

    def initialize_fields
        @hashtable = StdUtil.getInstance().createHashtable()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ThreedObjResources.instance
    end
    

    def get(resourceName)
        resourceName2 = @hashtable.get(resourceName)
        if resourceName2 != nil
            return resourceName2
        end
        return resourceName
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/StdUtil"
require "org/allbinary/util/ABHashtable"

class ThreedObjResources
    @@instance = ThreedObjResources.new()
end

