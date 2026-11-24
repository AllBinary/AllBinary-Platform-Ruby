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
# package org.allbinary.logic.communication.http.request

# require "java/util/Map"
# require "java/util/Set"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"

module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request

#Note: if request is destroyed or messed up this will not work. Use fileRequestParams
class RequestParams
    attr_accessor :logUtil, :commonStrings, :map, :KEY, :VALUE

    def jfields_org_allbinary_logic_communication_http_request_RequestParams
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @map = nil unless instance_variable_defined?(:@map)
        @KEY = "Key: "
        @VALUE = " Value: "
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_logic_communication_http_request_RequestParams_0(*args)
        when 1 then jnew_org_allbinary_logic_communication_http_request_RequestParams_1(*args)
        else raise ArgumentError, "No constructor of RequestParams takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_logic_communication_http_request_RequestParams_1(*java_overload_args)
        return jnew_org_allbinary_logic_communication_http_request_RequestParams_1_1(*java_overload_args) if true && !(java_overload_args[0].is_a?(::Numeric) || java_overload_args[0] == true || java_overload_args[0] == false || java_overload_args[0].is_a?(::Array))
        return jnew_org_allbinary_logic_communication_http_request_RequestParams_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_logic_communication_http_request_RequestParams_0()
        jfields_org_allbinary_logic_communication_http_request_RequestParams
        @logUtil.putF("New RequestParams Size: 0", self, @commonStrings.CONSTRUCTOR)
    end
    

    def jnew_org_allbinary_logic_communication_http_request_RequestParams_1_1(request)
        jfields_org_allbinary_logic_communication_http_request_RequestParams
        @map = request.getParameterMap()
        @logUtil.putF("RequestParams Size: " + (self.getMap().keySet().size()).to_s, self, @commonStrings.CONSTRUCTOR)
    end
    

    def jnew_org_allbinary_logic_communication_http_request_RequestParams_1_2(pageContext)
        jfields_org_allbinary_logic_communication_http_request_RequestParams
        @map = pageContext.getRequest().getParameterMap()
        @logUtil.putF("Request Params Size: " + (self.getMap().keySet().size()).to_s, self, @commonStrings.CONSTRUCTOR)
    end
    

    def setMap(map)
        @map = map
    end
    

    def getMap()
        return @map
    end
    

    def toXmlNode(document)
        begin
            node = document.createElement(RequestData::REQUEST)
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            keys = @map.keySet()
            keyArray = keys.toArray()
            size = keyArray.length
            (0...size).each do |i|
                key = keyArray[i]
                values = @map.get(key)
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(@KEY)
                stringBuffer.append(key)
                stringBuffer.append(@VALUE)
                stringBuffer.append(values[0])
                @logUtil.putF(stringBuffer.to_s, self, "toXmlNode(document)")
                node.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, RequestData::PARAMETER, String.new(key), String.new(values[0])))
            end
            return node
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "toXmlNode(document)", e)
            return nil
        end
    end
    

    # throws Exception
    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        keys = @map.keySet()
        keyArray = keys.toArray()
        size = keyArray.length
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        (0...size).each do |i|
            key = keyArray[i]
            values = @map.get(key)
            hashMap.put(String.new(key), String.new(values[0]))
        end
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append("RequestParams: ")
        stringBuffer.append(@map.to_s)
        stringBuffer.append("\ntoHashMap: ")
        stringBuffer.append(hashMap.to_s)
        @logUtil.putF(stringBuffer.to_s, self, "toHashMap()")
        return hashMap
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :RequestData, "org/allbinary/logic/communication/http/request/RequestData" unless const_defined?(:RequestData, false)

end; end; end; end; end; end

