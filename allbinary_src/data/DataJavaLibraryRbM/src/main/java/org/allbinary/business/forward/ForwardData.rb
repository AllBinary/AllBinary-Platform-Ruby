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
# package org.allbinary.business.forward


module ::Org; module Allbinary; module Business; module Forward

class ForwardData
    attr_accessor :PAGE, :NAME, :VALUE

    def jfields_org_allbinary_business_forward_ForwardData
        @PAGE = "FORWARD_PAGE"
        @NAME = "FORWARD_NAME"
        @VALUE = "FORWARD_VALUE"
    end
    

    def initialize()
        jfields_org_allbinary_business_forward_ForwardData
    end
    

    def self.getInstance()
        return @@instance
    end

    def self.instance()
        ForwardData.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ForwardData.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ForwardData.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ForwardData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    ForwardData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

