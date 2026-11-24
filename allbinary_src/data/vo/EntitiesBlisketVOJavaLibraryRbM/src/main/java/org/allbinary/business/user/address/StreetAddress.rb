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
# package org.allbinary.business.user.address

require "java/lang/JavaClass"
# require "java/util/Set"
# require "javax/servlet/http/HttpServletRequest"

module ::Org; module Allbinary; module Business; module User; module Address

class StreetAddress
    attr_accessor :logUtil, :id, :name, :street, :city, :state, :code, :country, :isDefault

    def jfields_org_allbinary_business_user_address_StreetAddress
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @id = nil unless instance_variable_defined?(:@id)
        @name = nil unless instance_variable_defined?(:@name)
        @street = nil unless instance_variable_defined?(:@street)
        @city = nil unless instance_variable_defined?(:@city)
        @state = nil unless instance_variable_defined?(:@state)
        @code = nil unless instance_variable_defined?(:@code)
        @country = nil unless instance_variable_defined?(:@country)
        @isDefault = false
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_business_user_address_StreetAddress_0(*args)
        when 1 then jnew_org_allbinary_business_user_address_StreetAddress_1(*args)
        when 6 then jnew_org_allbinary_business_user_address_StreetAddress_6(*args)
        else raise ArgumentError, "No constructor of StreetAddress takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_business_user_address_StreetAddress_1(*java_overload_args)
        return jnew_org_allbinary_business_user_address_StreetAddress_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Node))
        return jnew_org_allbinary_business_user_address_StreetAddress_1_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(StreetAddress))
        return jnew_org_allbinary_business_user_address_StreetAddress_1_3(*java_overload_args) if true && !(java_overload_args[0].is_a?(::Numeric) || java_overload_args[0] == true || java_overload_args[0] == false || java_overload_args[0].is_a?(::Array))
        return jnew_org_allbinary_business_user_address_StreetAddress_1_4(*java_overload_args)
    end
    

    def jnew_org_allbinary_business_user_address_StreetAddress_0()
        jfields_org_allbinary_business_user_address_StreetAddress
    end
    

    def jnew_org_allbinary_business_user_address_StreetAddress_1_1(node)
        jfields_org_allbinary_business_user_address_StreetAddress
        nameNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(StreetAddressData::NAME, node.getChildNodes())
        @name = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(nameNode)
        streetNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(StreetAddressData::STREET, node.getChildNodes())
        @street = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(streetNode)
        cityNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(StreetAddressData::CITY, node.getChildNodes())
        @city = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(cityNode)
        stateNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(StreetAddressData::STATE, node.getChildNodes())
        @state = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(stateNode)
        codeNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(StreetAddressData::CODE, node.getChildNodes())
        @code = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(codeNode)
        countryNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(StreetAddressData::COUNTRY, node.getChildNodes())
        @country = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(countryNode)
        self.log()
    end
    

    def jnew_org_allbinary_business_user_address_StreetAddress_1_2(streetAddress)
        jfields_org_allbinary_business_user_address_StreetAddress
        @id = streetAddress.getId()
        @name = streetAddress.getName()
        @street = streetAddress.getStreet()
        @city = streetAddress.getCity()
        @state = streetAddress.getState()
        @code = streetAddress.getCode()
        @country = streetAddress.getCountry()
        @isDefault = streetAddress.isDefault()
        self.log()
    end
    

    def jnew_org_allbinary_business_user_address_StreetAddress_1_3(request)
        jfields_org_allbinary_business_user_address_StreetAddress
        self.setId(request.getParameter(StreetAddressData::ID))
        self.setName(request.getParameter(StreetAddressData::NAME))
        self.setStreet(request.getParameter(StreetAddressData::STREET))
        self.setCity(request.getParameter(StreetAddressData::CITY))
        self.setState(request.getParameter(StreetAddressData::STATE))
        self.setCode(request.getParameter(StreetAddressData::CODE))
        self.setCountry(request.getParameter(StreetAddressData::COUNTRY))
        self.log()
    end
    

    def jnew_org_allbinary_business_user_address_StreetAddress_6(name, street, city, state, code, country)
        jfields_org_allbinary_business_user_address_StreetAddress
        @name = name
        @street = street
        @city = city
        @state = state
        @code = code
        @country = country
        self.log()
    end
    

    def jnew_org_allbinary_business_user_address_StreetAddress_1_4(address)
        jfields_org_allbinary_business_user_address_StreetAddress
        @id = address.get(StreetAddressData::ID)
        @name = address.get(StreetAddressData::NAME)
        @street = address.get(StreetAddressData::STREET)
        @city = address.get(StreetAddressData::CITY)
        @state = address.get(StreetAddressData::STATE)
        @code = address.get(StreetAddressData::CODE)
        @country = address.get(StreetAddressData::COUNTRY)
        def_ = address.get(StreetAddressData::DEFAULT)
        if def_ != nil && (def_ <=> StreetAddressData::DEFAULT) == 0
            @isDefault = true
        else
            @isDefault = false
        end
        self.log()
    end
    

    def log()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
            @logUtil.putF("Created Address: \n" + (self.toHashMap()).to_s, self, "log")
        end
    end
    

    def setId(id)
        @id = id
    end
    

    def setName(name)
        @name = name
    end
    

    def setStreet(value)
        @street = value
    end
    

    def setCity(value)
        @city = value
    end
    

    def setState(value)
        @state = value
    end
    

    def setCode(value)
        @code = value
    end
    

    def setCountry(value)
        @country = value
    end
    

    def getName()
        return @name
    end
    

    def getStreet()
        return @street
    end
    

    def getCity()
        return @city
    end
    

    def getState()
        return @state
    end
    

    def getCode()
        return @code
    end
    

    def getCountry()
        return @country
    end
    

    def getId()
        return @id
    end
    

    def isDefault()
        return @isDefault
    end
    

    def isEmpty()
        _EMPTY_STRING = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        if self.getName() == nil && self.getName().compareTo(_EMPTY_STRING) == 0 && self.getStreet() == nil && self.getStreet().compareTo(_EMPTY_STRING) == 0 && self.getCity() == nil && self.getCity().compareTo(_EMPTY_STRING) == 0 && self.getState() == nil && self.getState().compareTo(_EMPTY_STRING) == 0 && self.getCode() == nil && self.getCode().compareTo(_EMPTY_STRING) == 0 && self.getCountry() == nil && self.getCountry().compareTo(_EMPTY_STRING) == 0
            return true
        end
        return false
    end
    

    def isValid()
        _EMPTY_STRING = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        if self.getName() == nil || self.getName().compareTo(_EMPTY_STRING) == 0 || self.getStreet() == nil || self.getStreet().compareTo(_EMPTY_STRING) == 0 || self.getCity() == nil || self.getCity().compareTo(_EMPTY_STRING) == 0 || self.getState() == nil || self.getState().compareTo(_EMPTY_STRING) == 0 || self.getCode() == nil || self.getCode().compareTo(_EMPTY_STRING) == 0 || self.getCountry() == nil || self.getCountry().compareTo(_EMPTY_STRING) == 0
            return false
        end
        return true
    end
    

    def validationInfo()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("Address Failed To Validate - All fields must contain data.<br></br>")
        stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
        if !stringValidationUtil.isValidRequired(self.getName(), StreetAddressData::MIN, StreetAddressData::MAX)
            stringBuffer.append("Please enter a valid name")
            stringBuffer.append("<br></br>")
        end
        if !stringValidationUtil.isValidRequired(self.getStreet(), StreetAddressData::MIN, StreetAddressData::MAX)
            stringBuffer.append("Please enter a valid street")
            stringBuffer.append("<br></br>")
        end
        if !stringValidationUtil.isValidRequired(self.getCity(), StreetAddressData::MIN, StreetAddressData::MAX)
            stringBuffer.append("Please enter a valid city")
            stringBuffer.append("<br></br>")
        end
        if !stringValidationUtil.isValidRequired(self.getState(), StreetAddressData::MIN, StreetAddressData::MAX)
            stringBuffer.append("Please enter a valid state")
            stringBuffer.append("<br></br>")
        end
        if !stringValidationUtil.isValidRequired(self.getCode(), StreetAddressData::MIN, StreetAddressData::MAX)
            stringBuffer.append("Please enter a valid zipcode")
            stringBuffer.append("<br></br>")
        end
        if !stringValidationUtil.isValidRequired(self.getCountry(), StreetAddressData::MIN, StreetAddressData::MAX)
            stringBuffer.append("Please enter a valid country")
            stringBuffer.append("<br></br>")
        end
        return stringBuffer.to_s
    end
    

    def toValidationInfoDoc()
        return nil
    end
    

    def toValidationInfoNode(document)
        begin
            node = document.createElement(StreetAddressData::FORM)
            node.appendChild(self.toXmlNode(document))
            return node
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, "toValidationInfoNode", e)
            end
            return nil
        end
    end
    

    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        hashMap.put(StreetAddressData::ID, @id)
        hashMap.put(StreetAddressData::NAME, @name)
        hashMap.put(StreetAddressData::STREET, @street)
        hashMap.put(StreetAddressData::CITY, @city)
        hashMap.put(StreetAddressData::STATE, @state)
        hashMap.put(StreetAddressData::CODE, @code)
        hashMap.put(StreetAddressData::COUNTRY, @country)
        return hashMap
    end
    

    # throws Exception
    def toXmlNode(document)
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        hashMap = self.toHashMap()
        keySet = hashMap.keySet()
        keyArray = keySet.toArray()
        size = keyArray.length
        node = document.createElement(StreetAddressData::ADDRESS)
        (0...size).each do |i|
            name = keyArray[i]
            value = stringUtil.getNonNull(hashMap.get(name))
            node.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, name, value))
        end
        return node
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :StreetAddressData, "org/allbinary/business/user/address/StreetAddressData" unless const_defined?(:StreetAddressData, false)

end; end; end; end; end

