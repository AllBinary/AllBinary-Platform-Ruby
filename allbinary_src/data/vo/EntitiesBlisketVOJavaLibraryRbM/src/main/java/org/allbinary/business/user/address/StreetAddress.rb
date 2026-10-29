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

# require "java/util/Set"
# require "javax/servlet/http/HttpServletRequest"

class StreetAddress
    attr_accessor :logUtil, :id, :name, :street, :city, :state, :code, :country, :isDefault

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @id = nil
        @name = nil
        @street = nil
        @city = nil
        @state = nil
        @code = nil
        @country = nil
        @isDefault = false
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        when 6 then constructor6(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        initialize_fields
    end
    

    def constructor1(node)
        initialize_fields
        nameNode = DomSearchHelper.getNode(StreetAddressData::NAME, node.getChildNodes())
        @name = DomNodeHelper.getTextNodeValue(nameNode)
        streetNode = DomSearchHelper.getNode(StreetAddressData::STREET, node.getChildNodes())
        @street = DomNodeHelper.getTextNodeValue(streetNode)
        cityNode = DomSearchHelper.getNode(StreetAddressData::CITY, node.getChildNodes())
        @city = DomNodeHelper.getTextNodeValue(cityNode)
        stateNode = DomSearchHelper.getNode(StreetAddressData::STATE, node.getChildNodes())
        @state = DomNodeHelper.getTextNodeValue(stateNode)
        codeNode = DomSearchHelper.getNode(StreetAddressData::CODE, node.getChildNodes())
        @code = DomNodeHelper.getTextNodeValue(codeNode)
        countryNode = DomSearchHelper.getNode(StreetAddressData::COUNTRY, node.getChildNodes())
        @country = DomNodeHelper.getTextNodeValue(countryNode)
        self.log()
    end
    

    def constructor1(streetAddress)
        initialize_fields
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
    

    def constructor1(request)
        initialize_fields
        self.setId(request.getParameter(StreetAddressData::ID))
        self.setName(request.getParameter(StreetAddressData::NAME))
        self.setStreet(request.getParameter(StreetAddressData::STREET))
        self.setCity(request.getParameter(StreetAddressData::CITY))
        self.setState(request.getParameter(StreetAddressData::STATE))
        self.setCode(request.getParameter(StreetAddressData::CODE))
        self.setCountry(request.getParameter(StreetAddressData::COUNTRY))
        self.log()
    end
    

    def constructor6(name, street, city, state, code, country)
        initialize_fields
        @name = name
        @street = street
        @city = city
        @state = state
        @code = code
        @country = country
        self.log()
    end
    

    def constructor1(address)
        initialize_fields
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
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
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
        _EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
        if self.getName() == nil && self.getName().compareTo(_EMPTY_STRING) == 0 && self.getStreet() == nil && self.getStreet().compareTo(_EMPTY_STRING) == 0 && self.getCity() == nil && self.getCity().compareTo(_EMPTY_STRING) == 0 && self.getState() == nil && self.getState().compareTo(_EMPTY_STRING) == 0 && self.getCode() == nil && self.getCode().compareTo(_EMPTY_STRING) == 0 && self.getCountry() == nil && self.getCountry().compareTo(_EMPTY_STRING) == 0
            return true
        end
        return false
    end
    

    def isValid()
        _EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
        if self.getName() == nil || self.getName().compareTo(_EMPTY_STRING) == 0 || self.getStreet() == nil || self.getStreet().compareTo(_EMPTY_STRING) == 0 || self.getCity() == nil || self.getCity().compareTo(_EMPTY_STRING) == 0 || self.getState() == nil || self.getState().compareTo(_EMPTY_STRING) == 0 || self.getCode() == nil || self.getCode().compareTo(_EMPTY_STRING) == 0 || self.getCountry() == nil || self.getCountry().compareTo(_EMPTY_STRING) == 0
            return false
        end
        return true
    end
    

    def validationInfo()
        stringBuffer = StringMaker.new()
        stringBuffer.append("Address Failed To Validate - All fields must contain data.<br></br>")
        stringValidationUtil = StringValidationUtil.getInstance()
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
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                commonStrings = CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, "toValidationInfoNode", e)
            end
            return nil
        end
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
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
        stringUtil = StringUtil.getInstance()
        hashMap = self.toHashMap()
        keySet = hashMap.keySet()
        keyArray = keySet.toArray()
        size = keyArray.length
        node = document.createElement(StreetAddressData::ADDRESS)
        (0...size).each do |i|
            name = keyArray[i]
            value = stringUtil.getNonNull(hashMap.get(name))
            node.appendChild(ModDomHelper.createNameValueNodes(document, name, value))
        end
        return node
    end
end

require "java/util/HashMap"
require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/business/user/address/StreetAddressData"

