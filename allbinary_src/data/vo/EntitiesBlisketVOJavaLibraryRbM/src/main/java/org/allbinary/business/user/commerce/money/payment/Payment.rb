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

require "java/lang/JavaOverload"
# require "javax/servlet/ServletRequest"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/business/user/commerce/money/payment/PaymentInterface"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment

class Payment
    include PaymentInterface
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :name, :expiration, :encryption, :number, :id, :type, :tenderType, :transactionType, :aba, :account, :accountType, :authorizationCode, :checkNumber, :checkType, :driversLicense, :magneticInkCheckReader, :isDefault

    def jfields_org_allbinary_business_user_commerce_money_payment_Payment
        @name = nil unless instance_variable_defined?(:@name)
        @expiration = nil unless instance_variable_defined?(:@expiration)
        @encryption = nil unless instance_variable_defined?(:@encryption)
        @number = nil unless instance_variable_defined?(:@number)
        @id = nil unless instance_variable_defined?(:@id)
        @type = nil unless instance_variable_defined?(:@type)
        @tenderType = nil unless instance_variable_defined?(:@tenderType)
        @transactionType = nil unless instance_variable_defined?(:@transactionType)
        @aba = nil unless instance_variable_defined?(:@aba)
        @account = nil unless instance_variable_defined?(:@account)
        @accountType = nil unless instance_variable_defined?(:@accountType)
        @authorizationCode = nil unless instance_variable_defined?(:@authorizationCode)
        @checkNumber = nil unless instance_variable_defined?(:@checkNumber)
        @checkType = nil unless instance_variable_defined?(:@checkType)
        @driversLicense = nil unless instance_variable_defined?(:@driversLicense)
        @magneticInkCheckReader = nil unless instance_variable_defined?(:@magneticInkCheckReader)
        @isDefault = false
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_business_user_commerce_money_payment_Payment_1(*args)
        when 0 then jnew_org_allbinary_business_user_commerce_money_payment_Payment_0(*args)
        else raise ArgumentError, "No constructor of Payment takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_business_user_commerce_money_payment_Payment_1(*java_overload_args)
        return jnew_org_allbinary_business_user_commerce_money_payment_Payment_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Java::Util::HashMap))
        return jnew_org_allbinary_business_user_commerce_money_payment_Payment_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_business_user_commerce_money_payment_Payment_1_1(payment)
        jfields_org_allbinary_business_user_commerce_money_payment_Payment
        @name = payment.get(PaymentData::NAME)
        @type = payment.get(PaymentData::TYPE)
        @expiration = payment.get(PaymentData::EXPIRATION)
        @encryption = payment.get(::Org::Allbinary::Business::Entry::EntryData.getInstance().ENCRYPTION)
        @number = ::Org::Allbinary::Logic::ControlPackage::Crypt::SuperCrypt.new(@encryption.to_i).decrypt(payment.get(PaymentData::NUMBER))
        @id = payment.get(PaymentData::ID)
        def_ = payment.get(::Org::Allbinary::Business::Entry::EntryData.getInstance().DEFAULT)
        if def_ != nil && (def_ <=> ::Org::Allbinary::Business::Entry::EntryData.getInstance().DEFAULT) == 0
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
    

    def jnew_org_allbinary_business_user_commerce_money_payment_Payment_1_2(request)
        jfields_org_allbinary_business_user_commerce_money_payment_Payment
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
    

    def jnew_org_allbinary_business_user_commerce_money_payment_Payment_0()
        jfields_org_allbinary_business_user_commerce_money_payment_Payment
    end
    

    def isValid()
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
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
        if @number.length > ::Org::Allbinary::Business::User::Commerce::Money::Payment::Types::CreditCardType::MAXLEN
            return aFalse
        end
        return true
    end
    java_overload :isValid, 0
    

    def setTenderType(value)
        @tenderType = value
    end
    java_overload :setTenderType, 1
    

    def setTransactionType(value)
        @transactionType = value
    end
    java_overload :setTransactionType, 1
    

    def setAuthorizationCode(value)
        @authorizationCode = value
    end
    java_overload :setAuthorizationCode, 1
    

    def setCheckType(value)
        @checkType = value
    end
    java_overload :setCheckType, 1
    

    def setCheckNumber(value)
        @checkNumber = value
    end
    java_overload :setCheckNumber, 1
    

    def setDriversLicense(value)
        @driversLicense = value
    end
    java_overload :setDriversLicense, 1
    

    def setMagneticInkCheckReader(value)
        @magneticInkCheckReader = value
    end
    java_overload :setMagneticInkCheckReader, 1
    

    def setAba(value)
        @aba = value
    end
    java_overload :setAba, 1
    

    def setAccountType(value)
        @accountType = value
    end
    java_overload :setAccountType, 1
    

    def setName(value)
        @name = value
    end
    java_overload :setName, 1
    

    def setType(value)
        @type = value
    end
    java_overload :setType, 1
    

    def setExpiration(value)
        @expiration = value
    end
    java_overload :setExpiration, 1
    

    def setNumber(value)
        @number = value
    end
    java_overload :setNumber, 1
    

    def getId()
        return @id
    end
    java_overload :getId, 0
    

    def getName()
        return @name
    end
    java_overload :getName, 0
    

    def getType()
        return @type
    end
    java_overload :getType, 0
    

    def getExpiration()
        return @expiration
    end
    java_overload :getExpiration, 0
    

    def getEncryption()
        return @encryption
    end
    java_overload :getEncryption, 0
    

    def getNumber()
        return @number
    end
    java_overload :getNumber, 0
    

    def getTenderType()
        return @tenderType
    end
    java_overload :getTenderType, 0
    

    def getTransactionType()
        return @transactionType
    end
    java_overload :getTransactionType, 0
    

    def getAba()
        return @aba
    end
    java_overload :getAba, 0
    

    def getAccount()
        return @account
    end
    java_overload :getAccount, 0
    

    def getAccountType()
        return @accountType
    end
    java_overload :getAccountType, 0
    

    def getAuthorizationCode()
        return @authorizationCode
    end
    java_overload :getAuthorizationCode, 0
    

    def getCheckNumber()
        return @checkNumber
    end
    java_overload :getCheckNumber, 0
    

    def getCheckType()
        return @checkType
    end
    java_overload :getCheckType, 0
    

    def getDriversLicense()
        return @driversLicense
    end
    java_overload :getDriversLicense, 0
    

    def getMagneticInkCheckReader()
        return @magneticInkCheckReader
    end
    java_overload :getMagneticInkCheckReader, 0
    

    def getLastFour()
        if @number.length > PaymentData::MIN && @number.length <= PaymentData::MAX
            return @number[@number.length - 4..]
        else
            return "Invalid #"
        end
    end
    java_overload :getLastFour, 0
    

    def isDefault()
        return @isDefault
    end
    java_overload :isDefault, 0
    

    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
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
            hashMap.put(::Org::Allbinary::Business::Entry::EntryData.getInstance().DEFAULT, ::Org::Allbinary::Business::Entry::EntryData.getInstance().DEFAULT)
        else
            hashMap.put(::Org::Allbinary::Business::Entry::EntryData.getInstance().DEFAULT, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        end
        return hashMap
    end
    java_overload :toHashMap, 0
    

    # throws Exception
    def toXmlNode(document)
        hashMap = self.toHashMap()
        node = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, PaymentData::PAYMENT, hashMap)
        return node
    end
    java_overload :toXmlNode, 1
    

    def toXmlDoc()
        return nil
    end
    java_overload :toXmlDoc, 0
    

    def view()
        return nil
    end
    java_overload :view, 0
    

    def toValidationInfoDoc()
        return nil
    end
    java_overload :toValidationInfoDoc, 0
    

    def toValidationInfoNode(document)
        return nil
    end
    java_overload :toValidationInfoNode, 1
    

    def validationInfo()
        return nil
    end
    java_overload :validationInfo, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Crypt; autoload :SuperCrypt, "org/allbinary/logic/control/crypt/SuperCrypt" unless const_defined?(:SuperCrypt, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Types; autoload :CreditCardType, "org/allbinary/business/user/commerce/money/payment/types/CreditCardType" unless const_defined?(:CreditCardType, false); end; end; end; end; end; end; end; end
autoload :PaymentData, "org/allbinary/business/user/commerce/money/payment/PaymentData" unless const_defined?(:PaymentData, false)

end; end; end; end; end; end; end

