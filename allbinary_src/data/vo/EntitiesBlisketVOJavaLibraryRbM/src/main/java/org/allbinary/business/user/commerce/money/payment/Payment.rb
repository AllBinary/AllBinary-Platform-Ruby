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
# package org.allbinary.business.user.commerce.money.payment

# require "javax/servlet/ServletRequest"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/business/user/commerce/money/payment/PaymentInterface"

class Payment
    include PaymentInterface
    include DomNodeInterface
    attr_accessor :name, :expiration, :encryption, :number, :id, :type, :tenderType, :transactionType, :aba, :account, :accountType, :authorizationCode, :checkNumber, :checkType, :driversLicense, :magneticInkCheckReader, :isDefault

    def initialize_fields
        @name = nil
        @expiration = nil
        @encryption = nil
        @number = nil
        @id = nil
        @type = nil
        @tenderType = nil
        @transactionType = nil
        @aba = nil
        @account = nil
        @accountType = nil
        @authorizationCode = nil
        @checkNumber = nil
        @checkType = nil
        @driversLicense = nil
        @magneticInkCheckReader = nil
        @isDefault = false
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        when 0 then constructor0(*args)
        end
    end
    

    def constructor1(payment)
        initialize_fields
        @name = payment.get(PaymentData::NAME)
        @type = payment.get(PaymentData::TYPE)
        @expiration = payment.get(PaymentData::EXPIRATION)
        @encryption = payment.get(EntryData.getInstance().ENCRYPTION)
        @number = SuperCrypt.new(@encryption.to_i).decrypt(payment.get(PaymentData::NUMBER))
        @id = payment.get(PaymentData::ID)
        def_ = payment.get(EntryData.getInstance().DEFAULT)
        if def_ != nil && (def_ <=> EntryData.getInstance().DEFAULT) == 0
            @isDefault = true
        else
            @isDefault = false
        end
        @tenderType = payment.get(PaymentData::TENDERTYPE)
        @transactionType = payment.get(PaymentData::TRANSACTIONTYPE)
        @aba = payment.get(PaymentData::ABA)
        @account = payment.get(PaymentData::ACCOUNT)
        @accountType = payment.get(PaymentData::ACCOUNTTYPE)
        @authorizationCode = payment.get(PaymentData::AUTHORIZATIONCODE)
        @checkNumber = payment.get(PaymentData::CHECKNUMBER)
        @checkType = payment.get(PaymentData::CHECKTYPE)
        @driversLicense = payment.get(PaymentData::DRIVERSLICENSE)
        @magneticInkCheckReader = payment.get(PaymentData::MAGNETICINKCHECKREADER)
    end
    

    def constructor1(request)
        initialize_fields
        @name = request.getParameter(PaymentData::NAME)
        @type = request.getParameter(PaymentData::TYPE)
        @expiration = request.getParameter(PaymentData::EXPIRATION)
        @number = request.getParameter(PaymentData::NUMBER)
        @tenderType = request.getParameter(PaymentData::TENDERTYPE)
        @transactionType = request.getParameter(PaymentData::TRANSACTIONTYPE)
        @aba = request.getParameter(PaymentData::ABA)
        @account = request.getParameter(PaymentData::ACCOUNT)
        @accountType = request.getParameter(PaymentData::ACCOUNTTYPE)
        @authorizationCode = request.getParameter(PaymentData::AUTHORIZATIONCODE)
        @checkNumber = request.getParameter(PaymentData::CHECKNUMBER)
        @checkType = request.getParameter(PaymentData::CHECKTYPE)
        @driversLicense = request.getParameter(PaymentData::DRIVERSLICENSE)
        @magneticInkCheckReader = request.getParameter(PaymentData::MAGNETICINKCHECKREADER)
    end
    

    def constructor0()
        initialize_fields
    end
    

    def isValid()
        stringUtil = StringUtil.getInstance()
        aFalse = false
        if @name == nil || (@name <=> stringUtil.EMPTY_STRING) == 0
            return aFalse
        end
        if @type == nil || (@type <=> stringUtil.EMPTY_STRING) == 0
            return aFalse
        end
        if @expiration == nil || (@expiration <=> stringUtil.EMPTY_STRING) == 0
            return aFalse
        end
        if @number == nil || (@number <=> stringUtil.EMPTY_STRING) == 0
            return aFalse
        end
        if @number.length > org.allbinary.business.user.commerce.money.payment.types.CreditCardType.MAXLEN
            return aFalse
        end
        return true
    end
    

    def setTenderType(value)
        @tenderType = value
    end
    

    def setTransactionType(value)
        @transactionType = value
    end
    

    def setAuthorizationCode(value)
        @authorizationCode = value
    end
    

    def setCheckType(value)
        @checkType = value
    end
    

    def setCheckNumber(value)
        @checkNumber = value
    end
    

    def setDriversLicense(value)
        @driversLicense = value
    end
    

    def setMagneticInkCheckReader(value)
        @magneticInkCheckReader = value
    end
    

    def setAba(value)
        @aba = value
    end
    

    def setAccountType(value)
        @accountType = value
    end
    

    def setName(value)
        @name = value
    end
    

    def setType(value)
        @type = value
    end
    

    def setExpiration(value)
        @expiration = value
    end
    

    def setNumber(value)
        @number = value
    end
    

    def getId()
        return @id
    end
    

    def getName()
        return @name
    end
    

    def getType()
        return @type
    end
    

    def getExpiration()
        return @expiration
    end
    

    def getEncryption()
        return @encryption
    end
    

    def getNumber()
        return @number
    end
    

    def getTenderType()
        return @tenderType
    end
    

    def getTransactionType()
        return @transactionType
    end
    

    def getAba()
        return @aba
    end
    

    def getAccount()
        return @account
    end
    

    def getAccountType()
        return @accountType
    end
    

    def getAuthorizationCode()
        return @authorizationCode
    end
    

    def getCheckNumber()
        return @checkNumber
    end
    

    def getCheckType()
        return @checkType
    end
    

    def getDriversLicense()
        return @driversLicense
    end
    

    def getMagneticInkCheckReader()
        return @magneticInkCheckReader
    end
    

    def getLastFour()
        if @number.length > PaymentData::MIN && @number.length <= PaymentData::MAX
            return @number[@number.length - 4..]
        else
            return "Invalid #"
        end
    end
    

    def isDefault()
        return @isDefault
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(PaymentData::NAME, @name)
        hashMap.put(PaymentData::TYPE, @type)
        hashMap.put(PaymentData::EXPIRATION, @expiration)
        hashMap.put(PaymentData::NUMBER, self.getLastFour())
        hashMap.put(PaymentData::TENDERTYPE, @tenderType)
        hashMap.put(PaymentData::TRANSACTIONTYPE, @transactionType)
        hashMap.put(PaymentData::ABA, @aba)
        hashMap.put(PaymentData::ACCOUNT, @account)
        hashMap.put(PaymentData::ACCOUNTTYPE, @accountType)
        hashMap.put(PaymentData::AUTHORIZATIONCODE, @authorizationCode)
        hashMap.put(PaymentData::CHECKNUMBER, @checkNumber)
        hashMap.put(PaymentData::DRIVERSLICENSE, @driversLicense)
        hashMap.put(PaymentData::MAGNETICINKCHECKREADER, @magneticInkCheckReader)
        if @isDefault
            hashMap.put(EntryData.getInstance().DEFAULT, EntryData.getInstance().DEFAULT)
        else
            hashMap.put(EntryData.getInstance().DEFAULT, StringUtil.getInstance().EMPTY_STRING)
        end
        return hashMap
    end
    

    # throws Exception
    def toXmlNode(document)
        hashMap = self.toHashMap()
        node = ModDomHelper.createNameValueNodes(document, PaymentData::PAYMENT, hashMap)
        return node
    end
    

    def toXmlDoc()
        return nil
    end
    

    def view()
        return nil
    end
    

    def toValidationInfoDoc()
        return nil
    end
    

    def toValidationInfoNode(document)
        return nil
    end
    

    def validationInfo()
        return nil
    end
end

require "java/util/HashMap"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/control/crypt/SuperCrypt"
require "org/allbinary/logic/string/StringUtil"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/business/user/commerce/money/payment/PaymentData"

