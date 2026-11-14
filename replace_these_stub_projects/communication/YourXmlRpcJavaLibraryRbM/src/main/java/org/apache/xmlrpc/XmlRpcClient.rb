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
    def executeWithCrypt(method, params, cryptInterface)
        return NullUtil.getInstance().NULL_OBJECT
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :CryptInterface, "org/allbinary/init/crypt/jcehelper/CryptInterface"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :XmlRpcException, "org/apache/xmlrpc/XmlRpcException"

