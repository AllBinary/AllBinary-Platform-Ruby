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


module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request

class NameSpaceRequestParam
    attr_accessor :logUtil, :nameSpaceVector, :nameSpacePropertiesHashMap, :value

    def jfields_org_allbinary_logic_communication_http_request_NameSpaceRequestParam
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @nameSpaceVector = nil unless instance_variable_defined?(:@nameSpaceVector)
        @nameSpacePropertiesHashMap = nil unless instance_variable_defined?(:@nameSpacePropertiesHashMap)
        @value = nil unless instance_variable_defined?(:@value)
    end
    

    def initialize(nameSpace, value)
        jfields_org_allbinary_logic_communication_http_request_NameSpaceRequestParam
        @nameSpaceVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        @nameSpacePropertiesHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        @value = value
        beginIndex = (nameSpace.index(NameSpaceRequestParamData::NAME) || -1)
        if beginIndex < 0
            raise StandardError.new("Not a NameSpaceRequest")
        end
        packages = nameSpace[beginIndex + NameSpaceRequestParamData::NAME.length() + NameSpaceRequestParamData::SEP.length()..]
        sepTokenizer = ::Org::Allbinary::Logic::StringPackage::Tokens::Tokenizer.new(NameSpaceRequestParamData::SEP)
        nameSpaceWithPropertiesVector = sepTokenizer.getTokensFromString(packages, ::Org::Allbinary::Util::BasicArrayListD.new())
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF("\nSep Tokens: " + nameSpaceWithPropertiesVector.to_s, self, "NameSpaceRequestParam()")
        end
        nameSpaceAndPropertiesTokenizer = ::Org::Allbinary::Logic::StringPackage::Tokens::Tokenizer.new(NameSpaceRequestParamData::PROPERTIES)
        packageIndex = 0
        list = ::Org::Allbinary::Util::BasicArrayListD.new()
        index = 0
        size = nameSpaceWithPropertiesVector.size()
        while index < size
            nameSpaceWithProperties = nameSpaceWithPropertiesVector.get(((index += 1) - 1))
            list.clear()
            nameSpaceAndPropertiesVector = nameSpaceAndPropertiesTokenizer.getTokensFromString(nameSpaceWithProperties, list)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
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
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF("NameSpace: " + @nameSpaceVector.to_s, self, "NameSpaceRequestParam()")
        end
    end
    

    def getPackages()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF("NameSpace: " + @nameSpaceVector.to_s, self, "getPackages()")
        end
        return @nameSpaceVector
    end
    

    def getPackageProperties(packageIndex)
        packagePropertiesHashMap = @nameSpacePropertiesHashMap.get((packageIndex).to_s)
        if packagePropertiesHashMap == nil
            packagePropertiesHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        end
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF("Package Properties: " + packagePropertiesHashMap.to_s, self, "getPackagesProperties()")
        end
        return packagePropertiesHashMap
    end
    

    def getValue()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
            @logUtil.putF("\nValue: " + @value, self, "getValue()")
        end
        return @value
    end
    

    # throws Exception
    def generatePackagePropertiesHashMap(properties)
        propertiesTokenizer = ::Org::Allbinary::Logic::StringPackage::Tokens::Tokenizer.new(NameSpaceRequestParamData::PROPERTIESSEPARATOR)
        packagePropertiesHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        propertyVector = propertiesTokenizer.getTokensFromString(properties, ::Org::Allbinary::Util::BasicArrayListD.new())
        list = ::Org::Allbinary::Util::BasicArrayListD.new()
        propertyTokenizer = ::Org::Allbinary::Logic::StringPackage::Tokens::Tokenizer.new(::Org::Allbinary::Logic::Visual::Dhtml::Html::Name::HtmlNameMathData.getInstance().EQUALS)
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
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
                        @logUtil.putF("\nProperty Name: " + propertyName + "\nProperty Value: " + propertyValue, self, "generatePackagePropertiesHashMap()")
                    end
                    packagePropertiesHashMap.put(propertyName, propertyValue)
                else
                    packagePropertiesHashMap.put(propertyName, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
                end
            end
        end
        return packagePropertiesHashMap
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; module Tokens; autoload :Tokenizer, "org/allbinary/logic/string/tokens/Tokenizer" unless const_defined?(:Tokenizer, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Html; module Name; autoload :HtmlNameMathData, "org/allbinary/logic/visual/dhtml/html/name/HtmlNameMathData" unless const_defined?(:HtmlNameMathData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :NameSpaceRequestParamData, "org/allbinary/logic/communication/http/request/NameSpaceRequestParamData" unless const_defined?(:NameSpaceRequestParamData, false)

end; end; end; end; end; end

