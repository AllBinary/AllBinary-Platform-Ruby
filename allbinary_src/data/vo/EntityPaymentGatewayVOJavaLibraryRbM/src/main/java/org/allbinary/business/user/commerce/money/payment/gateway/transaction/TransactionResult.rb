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

require "java/lang/JavaOverload"
require "org/allbinary/business/user/commerce/money/payment/gateway/transaction/TransactionResultInterface"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Transaction

class TransactionResult
    include TransactionResultInterface
    attr_accessor :logUtil, :commonStrings, :keyValuePairs, :result

    def jfields_org_allbinary_business_user_commerce_money_payment_gateway_transaction_TransactionResult
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @keyValuePairs = nil unless instance_variable_defined?(:@keyValuePairs)
        @result = nil unless instance_variable_defined?(:@result)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_business_user_commerce_money_payment_gateway_transaction_TransactionResult_1(*args)
        else raise ArgumentError, "No constructor of TransactionResult takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_business_user_commerce_money_payment_gateway_transaction_TransactionResult_1(*java_overload_args)
        return jnew_org_allbinary_business_user_commerce_money_payment_gateway_transaction_TransactionResult_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String))
        return jnew_org_allbinary_business_user_commerce_money_payment_gateway_transaction_TransactionResult_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_business_user_commerce_money_payment_gateway_transaction_TransactionResult_1_1(result)
        jfields_org_allbinary_business_user_commerce_money_payment_gateway_transaction_TransactionResult
        begin
            @result = result
            tokenizer = ::Org::Allbinary::Logic::StringPackage::Tokens::Tokenizer.new(::Org::Allbinary::StringPackage::CommonSeps.getInstance().AMPERSAND)
            tokens = tokenizer.getTokensFromString(result, ::Org::Allbinary::Util::BasicArrayListD.new())
            tokenizer2 = ::Org::Allbinary::Logic::StringPackage::Tokens::Tokenizer.new(::Org::Allbinary::StringPackage::CommonSeps.getInstance().EQUALS)
            hashtable = tokenizer2.getTokens(tokens)
            @keyValuePairs.putAll(hashtable)
        rescue StandardError => e
            exceptionMessage = "TransactionResult Constructor Failed"
            @logUtil.putF(exceptionMessage, self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    def jnew_org_allbinary_business_user_commerce_money_payment_gateway_transaction_TransactionResult_1_2(keyValuePairs)
        jfields_org_allbinary_business_user_commerce_money_payment_gateway_transaction_TransactionResult
        keyValuePairs = keyValuePairs
        @result = "Needs to have the hashmap converted to string for other constructor"
    end
    

    def toString()
        return @result
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
    

    def toHashMap()
        return @keyValuePairs
    end
    java_overload :toHashMap, 0
    

    def getAllPossibleKeys()
        paymentTransactionKeysFactory = PaymentTransactionKeysFactory.getInstance()
        verisignResponseKeys = ::Org::Allbinary::Util::BasicArrayListD.new()
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
    java_overload :getAllPossibleKeys, 0
    

    def getValues()
        keyVector = self.getAllPossibleKeys()
        valueVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        size = keyVector.size()
        (0...size).each do |i|
            key = keyVector.get(i)
            if @keyValuePairs.containsKey(key)
                valueVector.add(@keyValuePairs.get(key))
            else
                stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
                valueVector.add(stringUtil.EMPTY_STRING)
            end
        end
        return valueVector
    end
    java_overload :getValues, 0
    

    def getPnRef()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().PNREF.to_s)
    end
    java_overload :getPnRef, 0
    

    def getRespMsg()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().RESPMSG.to_s)
    end
    java_overload :getRespMsg, 0
    

    def getResult()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().RESULT.to_s)
    end
    java_overload :getResult, 0
    

    def getScore()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().SCORE.to_s)
    end
    java_overload :getScore, 0
    

    def getStatus()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().STATUS.to_s)
    end
    java_overload :getStatus, 0
    

    def getFraudCode()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().FRAUDCODE.to_s)
    end
    java_overload :getFraudCode, 0
    

    def getFraudMsg()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().FRAUDMSG.to_s)
    end
    java_overload :getFraudMsg, 0
    

    def getOrigResult()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().ORIGRESULT.to_s)
    end
    java_overload :getOrigResult, 0
    

    def getAvsAddr()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().AVSADDR.to_s)
    end
    java_overload :getAvsAddr, 0
    

    def getAvsZip()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().AVSZIP.to_s)
    end
    java_overload :getAvsZip, 0
    

    def getErrCode()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().ERRCODE.to_s)
    end
    java_overload :getErrCode, 0
    

    def getException1()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().EXCEPTION1.to_s)
    end
    java_overload :getException1, 0
    

    def getException2()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().EXCEPTION2.to_s)
    end
    java_overload :getException2, 0
    

    def getException3()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().EXCEPTION3.to_s)
    end
    java_overload :getException3, 0
    

    def getException4()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().EXCEPTION4.to_s)
    end
    java_overload :getException4, 0
    

    def getException5()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().EXCEPTION5.to_s)
    end
    java_overload :getException5, 0
    

    def getException6()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().EXCEPTION6.to_s)
    end
    java_overload :getException6, 0
    

    def getException7()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().EXCEPTION7.to_s)
    end
    java_overload :getException7, 0
    

    def getReason1()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().REASON1.to_s)
    end
    java_overload :getReason1, 0
    

    def getReason2()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().REASON2.to_s)
    end
    java_overload :getReason2, 0
    

    def getReason3()
        return @keyValuePairs.get(PaymentTransactionKeysFactory.getInstance().REASON3.to_s)
    end
    java_overload :getReason3, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; module Tokens; autoload :Tokenizer, "org/allbinary/logic/string/tokens/Tokenizer" unless const_defined?(:Tokenizer, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :PaymentTransactionKeysFactory, "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionKeysFactory" unless const_defined?(:PaymentTransactionKeysFactory, false)

end; end; end; end; end; end; end; end; end

