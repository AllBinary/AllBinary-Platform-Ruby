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


class NameSpaceRequestParam
    attr_accessor :logUtil, :nameSpaceVector, :nameSpacePropertiesHashMap, :value

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @nameSpaceVector = nil
        @nameSpacePropertiesHashMap = nil
        @value = nil
    end
    

    def initialize(nameSpace, value)
        initialize_fields
        @nameSpaceVector = BasicArrayListD.new()
        @nameSpacePropertiesHashMap = StdUtil.getInstance().createHashMap()
        @value = value
        beginIndex = (nameSpace.index(NameSpaceRequestParamData::NAME) || -1)
        if beginIndex < 0
            raise StandardError.new("Not a NameSpaceRequest")
        end
        packages = nameSpace[beginIndex + NameSpaceRequestParamData::NAME.length() + NameSpaceRequestParamData::SEP.length()..]
        sepTokenizer = Tokenizer.new(NameSpaceRequestParamData::SEP)
        nameSpaceWithPropertiesVector = sepTokenizer.getTokensFromString(packages, BasicArrayListD.new())
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF("\nSep Tokens: " + nameSpaceWithPropertiesVector.to_s, self, "NameSpaceRequestParam()")
        end
        nameSpaceAndPropertiesTokenizer = Tokenizer.new(NameSpaceRequestParamData::PROPERTIES)
        packageIndex = 0
        list = BasicArrayListD.new()
        index = 0
        size = nameSpaceWithPropertiesVector.size()
        while index < size
            nameSpaceWithProperties = nameSpaceWithPropertiesVector.get(((index += 1) - 1))
            list.clear()
            nameSpaceAndPropertiesVector = nameSpaceAndPropertiesTokenizer.getTokensFromString(nameSpaceWithProperties, list)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
                @logUtil.putF("\nPackageName and PackageName Properties Tokens: " + nameSpaceAndPropertiesVector.to_s, self, "NameSpaceRequestParam()")
            end
            if nameSpaceAndPropertiesVector.size() > 0
                packageName = nameSpaceAndPropertiesVector.get(0)
                if packageName == nil
                    raise StandardError.new("Package Name Is Null")
                end
                @nameSpaceVector.add(packageName)
                if nameSpaceAndPropertiesVector.size() > 1
                    properties = nameSpaceAndPropertiesVector.get(1)
                    packagePropertiesHashMap = self.generatePackagePropertiesHashMap(properties)
                    @nameSpacePropertiesHashMap.put((packageIndex).to_s, packagePropertiesHashMap)
                end
                packageIndex += 1
            end
        end
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF("NameSpace: " + @nameSpaceVector.to_s, self, "NameSpaceRequestParam()")
        end
    end
    

    def getPackages()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF("NameSpace: " + @nameSpaceVector.to_s, self, "getPackages()")
        end
        return @nameSpaceVector
    end
    

    def getPackageProperties(packageIndex)
        packagePropertiesHashMap = @nameSpacePropertiesHashMap.get((packageIndex).to_s)
        if packagePropertiesHashMap == nil
            packagePropertiesHashMap = StdUtil.getInstance().createHashMap()
        end
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF("Package Properties: " + packagePropertiesHashMap.to_s, self, "getPackagesProperties()")
        end
        return packagePropertiesHashMap
    end
    

    def getValue()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF("\nValue: " + @value, self, "getValue()")
        end
        return @value
    end
    

    # throws Exception
    def generatePackagePropertiesHashMap(properties)
        propertiesTokenizer = Tokenizer.new(NameSpaceRequestParamData::PROPERTIESSEPARATOR)
        packagePropertiesHashMap = StdUtil.getInstance().createHashMap()
        propertyVector = propertiesTokenizer.getTokensFromString(properties, BasicArrayListD.new())
        list = BasicArrayListD.new()
        propertyTokenizer = Tokenizer.new(HtmlNameMathData.getInstance().EQUALS)
        index = 0
        size = propertyVector.size()
        while index < size
            property = propertyVector.get(index)
            list.clear()
            propertyNameValueVector = propertyTokenizer.getTokensFromString(property, list)
            index2 = 0
            while index2 < propertyNameValueVector.size()
                propertyName = propertyNameValueVector.get(((index2 += 1) - 1))
                if propertyNameValueVector.size() > 1
                    propertyValue = propertyNameValueVector.get(((index2 += 1) - 1))
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
                        @logUtil.putF("\nProperty Name: " + propertyName + "\nProperty Value: " + propertyValue, self, "generatePackagePropertiesHashMap()")
                    end
                    packagePropertiesHashMap.put(propertyName, propertyValue)
                else
                    packagePropertiesHashMap.put(propertyName, StringUtil.getInstance().EMPTY_STRING)
                end
            end
        end
        return packagePropertiesHashMap
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/tokens/Tokenizer"
require "org/allbinary/logic/visual/dhtml/html/name/HtmlNameMathData"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/communication/http/request/NameSpaceRequestParamData"

