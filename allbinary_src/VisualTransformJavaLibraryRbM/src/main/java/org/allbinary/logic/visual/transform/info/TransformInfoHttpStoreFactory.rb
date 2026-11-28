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

require "java/lang/JavaOverload"
# require "javax/servlet/jsp/PageContext"
require "org/allbinary/logic/visual/transform/info/TransformInfoFactoryInterface"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info

class TransformInfoHttpStoreFactory
    include TransformInfoFactoryInterface
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
    end
    

    # throws Exception
    def getInstance(databaseHashMap, propertiesHashMap, pageContext)
        return TransformInfoHttpStore.new(databaseHashMap, propertiesHashMap, pageContext)
    end
    java_overload :getInstance, 3

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

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
autoload :TransformInfoHttpStore, "org/allbinary/logic/visual/transform/info/TransformInfoHttpStore" unless const_defined?(:TransformInfoHttpStore, false)
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false)

begin
    TransformInfoHttpStoreFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

