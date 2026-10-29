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
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/NullUtil"

class NullXmlRpcHandler
    NULL_XML_RPC_HANDLER = NullXmlRpcHandler.new()
end

