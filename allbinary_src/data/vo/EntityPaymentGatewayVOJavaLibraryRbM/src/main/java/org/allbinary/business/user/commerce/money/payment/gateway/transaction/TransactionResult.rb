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
# package org.allbinary.business.user.commerce.money.payment.gateway.transaction

require "org/allbinary/business/user/commerce/money/payment/gateway/transaction/TransactionResultInterface"

class TransactionResult
    include TransactionResultInterface
    attr_accessor :logUtil, :commonStrings, :keyValuePairs, :result

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @keyValuePairs = nil
        @result = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor1(result)
        initialize_fields
        begin
            @result = result
            tokenizer = Tokenizer.new(CommonSeps.getInstance().AMPERSAND)
            tokens = tokenizer.getTokensFromString(result, BasicArrayListD.new())
            tokenizer2 = Tokenizer.new(CommonSeps.getInstance().EQUALS)
            hashtable = tokenizer2.getTokens(tokens)
            @keyValuePairs.putAll(hashtable)
        rescue StandardError => e
            exceptionMessage = "TransactionResult Constructor Failed"
            @logUtil.putF(exceptionMessage, self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    def constructor1(keyValuePairs)
        initialize_fields
        keyValuePairs = keyValuePairs
        @result = "Needs to have the hashmap converted to string for other constructor"
    end
    

    def toString()
        return @result
    end
    alias_method :to_s, :toString
    

    def toHashMap()
        return @keyValuePairs
    end
    

    def getAllPossibleKeys()
        paymentTransactionKeysFactory = PaymentTransactionKeysFactory.getInstance()
        verisignResponseKeys = BasicArrayListD.new()
        verisignResponseKeys.add(paymentTransactionKeysFactory.RESULT.to_s)
        verisignResponseKeys.add(paymentTransactionKeysFactory.PNREF.to_s)
        verisignResponseKeys.add(paymentTransactionKeysFactory.RESPMSG.to_s)
        verisignResponseKeys.add(paymentTransactionKeysFactory.AUTHCODE.to_s)
        verisignResponseKeys.add(paymentTransactionKeysFactory.AVSADDR.to_s)
        verisignResponseKeys.add(paymentTransactionKeysFactory.AVSZIP.to_s)
        verisignResponseKeys.add(paymentTransactionKeysFactory.ORIGRESULT.to_s)
        verisignResponseKeys.add(paymentTransactionKeysFactory.STATUS.to_s)
        verisignResponseKeys.add(paymentTransactionKeysFactory.FRAUDCODE.to_s)
        verisignResponseKeys.add(paymentTransactionKeysFactory.FRAUDMSG.to_s)
        verisignResponseKeys.add(paymentTransactionKeysFactory.ERRCODE.to_s)
        verisignResponseKeys.add(paymentTransactionKeysFactory.SCORE.to_s)
        verisignResponseKeys.add(paymentTransactionKeysFactory.REASON1.to_s)
        verisignResponseKeys.add(paymentTransactionKeysFactory.REASON2.to_s)
        verisignResponseKeys.add(paymentTransactionKeysFactory.REASON3.to_s)
        verisignResponseKeys.add(paymentTransactionKeysFactory.EXCEPTION1.to_s)
        verisignResponseKeys.add(paymentTransactionKeysFactory.EXCEPTION2.to_s)
        verisignResponseKeys.add(paymentTransactionKeysFactory.EXCEPTION3.to_s)
        verisignResponseKeys.add(paymentTransactionKeysFactory.EXCEPTION4.to_s)
        verisignResponseKeys.add(paymentTransactionKeysFactory.EXCEPTION5.to_s)
        verisignResponseKeys.add(paymentTransactionKeysFactory.EXCEPTION6.to_s)
        verisignResponseKeys.add(paymentTransactionKeysFactory.EXCEPTION7.to_s)
        return verisignResponseKeys
    end
    

    def getValues()
        keyVector = self.getAllPossibleKeys()
        valueVector = BasicArrayListD.new()
        size = keyVector.size()
        (0...size).each do |i|
            key = keyVector.get(i)
            if @keyValuePairs.containsKey(key)
                valueVector.add(@keyValuePairs.get(key))
            else
                stringUtil = StringUtil.getInstance()
                valueVector.add(stringUtil.EMPTY_STRING)
            end
        end
        return valueVector
    end
    

    def getPnRef()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().PNREF.to_s)
    end
    

    def getRespMsg()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().RESPMSG.to_s)
    end
    

    def getResult()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().RESULT.to_s)
    end
    

    def getScore()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().SCORE.to_s)
    end
    

    def getStatus()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().STATUS.to_s)
    end
    

    def getFraudCode()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().FRAUDCODE.to_s)
    end
    

    def getFraudMsg()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().FRAUDMSG.to_s)
    end
    

    def getOrigResult()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().ORIGRESULT.to_s)
    end
    

    def getAvsAddr()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().AVSADDR.to_s)
    end
    

    def getAvsZip()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().AVSZIP.to_s)
    end
    

    def getErrCode()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().ERRCODE.to_s)
    end
    

    def getException1()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().EXCEPTION1.to_s)
    end
    

    def getException2()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().EXCEPTION2.to_s)
    end
    

    def getException3()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().EXCEPTION3.to_s)
    end
    

    def getException4()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().EXCEPTION4.to_s)
    end
    

    def getException5()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().EXCEPTION5.to_s)
    end
    

    def getException6()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().EXCEPTION6.to_s)
    end
    

    def getException7()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().EXCEPTION7.to_s)
    end
    

    def getReason1()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().REASON1.to_s)
    end
    

    def getReason2()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().REASON2.to_s)
    end
    

    def getReason3()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().REASON3.to_s)
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/tokens/Tokenizer"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionKeysFactory"

