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

require "java/lang/JavaOverload"
require "org/apache/xmlrpc/XmlRpcHandler"

module ::Org; module Apache; module Xmlrpc

class NullXmlRpcHandler
    include XmlRpcHandler
    

    # throws Exception
    def execute(method, params)
        return ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
    end
    java_overload :execute, 2

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

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end

begin
    NullXmlRpcHandler.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

