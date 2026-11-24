# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.apache.xmlrpc

require "java/lang/JavaOverload"
# require "java/io/IOException"
# require "java/net/MalformedURLException"
# require "java/net/URL"
require "org/apache/xmlrpc/XmlRpcHandler"

module ::Org; module Apache; module Xmlrpc

class XmlRpcClient
    include XmlRpcHandler
    attr_accessor :url

    def jfields_org_apache_xmlrpc_XmlRpcClient
        @url = nil unless instance_variable_defined?(:@url)
    end
    

    def initialize(url)
        jfields_org_apache_xmlrpc_XmlRpcClient
        @url = URL.new(url)
    end
    

    def getURL()
        return @url
    end
    java_overload :getURL, 0
    

    def setBasicAuthentication(user, password)
    end
    java_overload :setBasicAuthentication, 2
    

    # throws XmlRpcException, IOException
    def execute(method, params)
        return ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
    end
    java_overload :execute, 2
    

    # throws XmlRpcException, IOException
    def executeWithCrypt(method, params, cryptInterface)
        return ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
    end
    java_overload :executeWithCrypt, 3
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Init; module Crypt; module Jcehelper; autoload :CryptInterface, "org/allbinary/init/crypt/jcehelper/CryptInterface" unless const_defined?(:CryptInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
autoload :XmlRpcException, "org/apache/xmlrpc/XmlRpcException" unless const_defined?(:XmlRpcException, false)

end; end; end

