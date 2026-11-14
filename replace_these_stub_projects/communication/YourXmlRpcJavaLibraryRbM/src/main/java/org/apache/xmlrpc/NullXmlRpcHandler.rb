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
# package org.apache.xmlrpc

require "org/apache/xmlrpc/XmlRpcHandler"

class NullXmlRpcHandler
    include XmlRpcHandler
    

    # throws Exception
    def execute(method, params)
        return NullUtil.getInstance().NULL_OBJECT
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_XML_RPC_HANDLER, NullXmlRpcHandler.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullXmlRpcHandler"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_XML_RPC_HANDLER].include?(name)
        end
        super
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :NullUtil, "org/allbinary/logic/NullUtil"

begin
    NullXmlRpcHandler.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

