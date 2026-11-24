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


module ::Org; module Platform

class ThreedObjResources
    attr_accessor :hashtable

    def jfields_org_platform_ThreedObjResources
        @hashtable = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
    end

    def initialize
        jfields_org_platform_ThreedObjResources
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
        ThreedObjResources.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ThreedObjResources.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ThreedObjResources.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ThreedObjResources"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end

begin
    ThreedObjResources.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end

