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

#Note: if request is destroyed or messed up this will not work. Use fileRequestParams
class RequestParams
    attr_accessor :logUtil, :commonStrings, :map, :KEY, :VALUE

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @map = nil
        @KEY = "Key: "
        @VALUE = " Value: "
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        initialize_fields
        @logUtil.putF("New RequestParams Size: 0", self, @commonStrings.CONSTRUCTOR)
    end
    

    def constructor1(request)
        initialize_fields
        @map = request.getParameterMap()
        @logUtil.putF("RequestParams Size: " + (self.getMap().keySet().size()).to_s, self, @commonStrings.CONSTRUCTOR)
    end
    

    def constructor1(pageContext)
        initialize_fields
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
            stringBuffer = StringMaker.new()
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
                node.appendChild(ModDomHelper.createNameValueNodes(document, RequestData::PARAMETER, String.new(key), String.new(values[0])))
            end
            return node
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "toXmlNode(document)", e)
            return nil
        end
    end
    

    # throws Exception
    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        keys = @map.keySet()
        keyArray = keys.toArray()
        size = keyArray.length
        stringBuffer = StringMaker.new()
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

require "java/util/HashMap"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/logic/communication/http/request/RequestData"

