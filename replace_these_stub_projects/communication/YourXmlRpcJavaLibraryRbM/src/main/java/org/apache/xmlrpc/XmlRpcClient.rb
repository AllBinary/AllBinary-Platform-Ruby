# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.apache.xmlrpc

# require "java/io/IOException"
# require "java/net/MalformedURLException"
# require "java/net/URL"
require "org/apache/xmlrpc/XmlRpcHandler"

class XmlRpcClient
    include XmlRpcHandler
    attr_accessor :url

    def initialize_fields
        @url = nil
    end
    

    def initialize(url)
        initialize_fields
        @url = URL.new(url)
    end
    

    def getURL()
        return @url
    end
    

    def setBasicAuthentication(user, password)
    end
    

    # throws XmlRpcException, IOException
    def execute(method, params)
        return NullUtil.getInstance().NULL_OBJECT
    end
    

    # throws XmlRpcException, IOException
    # Java overloaded method: Ruby keeps the last definition
    def execute(method, params, cryptInterface)
        return NullUtil.getInstance().NULL_OBJECT
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/init/crypt/jcehelper/CryptInterface"
require "org/allbinary/logic/NullUtil"
require "org/apache/xmlrpc/XmlRpcException"

