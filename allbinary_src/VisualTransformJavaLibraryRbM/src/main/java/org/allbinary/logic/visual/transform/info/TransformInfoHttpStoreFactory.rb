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
        TransformInfoHttpStoreFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TransformInfoHttpStoreFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TransformInfoHttpStoreFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TransformInfoHttpStoreFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :TransformInfoHttpStore, "org/allbinary/logic/visual/transform/info/TransformInfoHttpStore"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"

begin
    TransformInfoHttpStoreFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

