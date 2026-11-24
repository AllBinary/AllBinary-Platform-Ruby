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
# package org.allbinary.logic


module ::Org; module Allbinary; module Logic

#ActualPlatform
class StdUtil
    attr_accessor :EMPTY_VECTOR, :NULL_TABLE, :NULL_MAP

    def jfields_org_allbinary_logic_StdUtil
        @EMPTY_VECTOR = self.createVector()
        @NULL_TABLE = self.createHashtable()
        @NULL_MAP = self.createHashMap()
    end

    def initialize
        jfields_org_allbinary_logic_StdUtil
    end
    

    def self.getInstance()
        return StdUtil.instance
    end
    

    def createStack()
        return ::Org::Allbinary::Util::ABStack.new()
    end
    

    def createVector()
        return ::Org::Allbinary::Util::ABVector.new()
    end
    

    def createHashtable()
        return ::Org::Allbinary::Util::ABHashtable.new()
    end
    

    def createHashMap()
        return ::Org::Allbinary::Util::ABHashMap.new()
    end

    def self.instance()
        StdUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        StdUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = StdUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "StdUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Util; autoload :ABHashMap, "org/allbinary/util/ABHashMap" unless const_defined?(:ABHashMap, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABStack, "org/allbinary/util/ABStack" unless const_defined?(:ABStack, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABVector, "org/allbinary/util/ABVector" unless const_defined?(:ABVector, false); end; end; end

begin
    StdUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

