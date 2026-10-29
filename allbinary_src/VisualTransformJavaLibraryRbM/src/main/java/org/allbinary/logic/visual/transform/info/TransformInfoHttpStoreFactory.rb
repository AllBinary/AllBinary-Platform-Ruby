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
# package org.allbinary.logic.visual.transform.info

# require "javax/servlet/jsp/PageContext"
require "org/allbinary/logic/visual/transform/info/TransformInfoFactoryInterface"

class TransformInfoHttpStoreFactory
    include TransformInfoFactoryInterface
    

    def self.getInstance()
        return TransformInfoHttpStoreFactory.instance
    end
    

    def initialize()
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(databaseHashMap, propertiesHashMap, pageContext)
        return TransformInfoHttpStore.new(databaseHashMap, propertiesHashMap, pageContext)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpStore"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"

class TransformInfoHttpStoreFactory
    @@instance = TransformInfoHttpStoreFactory.new()
end

