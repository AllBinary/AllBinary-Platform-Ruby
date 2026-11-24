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
# package org.allbinary.business.user.commerce.money.payment.gateway

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterface"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway

class PaymentGateway
    include PaymentGatewayInterface
    attr_accessor :storeName, :name, :enable, :paymentMethod, :mode, :testProtocol, :testServer, :testPort, :testPath, :serverProtocol, :server, :serverPort, :serverPath, :timeout, :userName, :password, :proxyProtocol, :proxyServer, :proxyPort, :proxyPath, :proxyUserName, :proxyPassword, :proxyTimeout, :special1, :special2, :special3, :special4, :special5, :special6, :special7, :special8, :special9, :lastModified, :timeEntered

    def jfields_org_allbinary_business_user_commerce_money_payment_gateway_PaymentGateway
        @storeName = nil unless instance_variable_defined?(:@storeName)
        @name = nil unless instance_variable_defined?(:@name)
        @enable = nil unless instance_variable_defined?(:@enable)
        @paymentMethod = nil unless instance_variable_defined?(:@paymentMethod)
        @mode = nil unless instance_variable_defined?(:@mode)
        @testProtocol = nil unless instance_variable_defined?(:@testProtocol)
        @testServer = nil unless instance_variable_defined?(:@testServer)
        @testPort = nil unless instance_variable_defined?(:@testPort)
        @testPath = nil unless instance_variable_defined?(:@testPath)
        @serverProtocol = nil unless instance_variable_defined?(:@serverProtocol)
        @server = nil unless instance_variable_defined?(:@server)
        @serverPort = nil unless instance_variable_defined?(:@serverPort)
        @serverPath = nil unless instance_variable_defined?(:@serverPath)
        @timeout = nil unless instance_variable_defined?(:@timeout)
        @userName = nil unless instance_variable_defined?(:@userName)
        @password = nil unless instance_variable_defined?(:@password)
        @proxyProtocol = nil unless instance_variable_defined?(:@proxyProtocol)
        @proxyServer = nil unless instance_variable_defined?(:@proxyServer)
        @proxyPort = nil unless instance_variable_defined?(:@proxyPort)
        @proxyPath = nil unless instance_variable_defined?(:@proxyPath)
        @proxyUserName = nil unless instance_variable_defined?(:@proxyUserName)
        @proxyPassword = nil unless instance_variable_defined?(:@proxyPassword)
        @proxyTimeout = nil unless instance_variable_defined?(:@proxyTimeout)
        @special1 = nil unless instance_variable_defined?(:@special1)
        @special2 = nil unless instance_variable_defined?(:@special2)
        @special3 = nil unless instance_variable_defined?(:@special3)
        @special4 = nil unless instance_variable_defined?(:@special4)
        @special5 = nil unless instance_variable_defined?(:@special5)
        @special6 = nil unless instance_variable_defined?(:@special6)
        @special7 = nil unless instance_variable_defined?(:@special7)
        @special8 = nil unless instance_variable_defined?(:@special8)
        @special9 = nil unless instance_variable_defined?(:@special9)
        @lastModified = nil unless instance_variable_defined?(:@lastModified)
        @timeEntered = nil unless instance_variable_defined?(:@timeEntered)
    end
    

    def initialize(hashMap)
        jfields_org_allbinary_business_user_commerce_money_payment_gateway_PaymentGateway
        self.getFormData(hashMap)
    end
    

    def getFormData(hashMap)
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        empty = stringUtil.EMPTY_STRING
        @storeName = hashMap.get(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME.to_s)
        @name = hashMap.get(PaymentGatewayData::NAME.to_s)
        @enable = stringUtil.getNonNull(hashMap.get(::Org::Allbinary::Business::Entry::EntryData.getInstance().ENABLE.to_s))
        @paymentMethod = stringUtil.getNonNull(hashMap.get(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::METHOD.to_s))
        @mode = stringUtil.getNonNull(hashMap.get(PaymentGatewayData::MODE.to_s))
        @testProtocol = stringUtil.getNonNull(hashMap.get(PaymentGatewayData::TESTPROTOCOL.to_s))
        @testServer = stringUtil.getNonNull(hashMap.get(PaymentGatewayData::TESTSERVER.to_s))
        @testPort = stringUtil.getNonNull(hashMap.get(PaymentGatewayData::TESTPORT.to_s))
        @testPath = hashMap.get(PaymentGatewayData::TESTPATH.to_s)
        if @testPath == nil
            @testPath = empty
        end
        @serverProtocol = hashMap.get(PaymentGatewayData::SERVERPROTOCOL.to_s)
        if @serverProtocol == nil
            @serverProtocol = empty
        end
        @server = hashMap.get(PaymentGatewayData::SERVER.to_s)
        if @server == nil
            @server = empty
        end
        @serverPort = hashMap.get(PaymentGatewayData::SERVERPORT.to_s)
        if @serverPort == nil
            @serverPort = empty
        end
        @serverPath = hashMap.get(PaymentGatewayData::SERVERPATH.to_s)
        if @serverPath == nil
            @serverPath = empty
        end
        @userName = hashMap.get(::Org::Allbinary::Business::User::UserData::USERNAME.to_s)
        if @userName == nil
            @userName = empty
        end
        @password = hashMap.get(::Org::Allbinary::Business::User::UserData::PASSWORD.to_s)
        if @password == nil
            @password = empty
        end
        @timeout = hashMap.get(PaymentGatewayData::TIMEOUT.to_s)
        if @timeout == nil
            @timeout = empty
        end
        @proxyProtocol = hashMap.get(PaymentGatewayData::PROXYPROTOCOL.to_s)
        if @proxyProtocol == nil
            @proxyProtocol = empty
        end
        @proxyServer = hashMap.get(PaymentGatewayData::PROXYSERVER.to_s)
        if @proxyServer == nil
            @proxyServer = empty
        end
        @proxyPort = hashMap.get(PaymentGatewayData::PROXYPORT.to_s)
        if @proxyPort == nil
            @proxyPort = empty
        end
        @proxyPath = hashMap.get(PaymentGatewayData::PROXYPATH.to_s)
        if @proxyPath == nil
            @proxyPath = empty
        end
        @proxyUserName = hashMap.get(PaymentGatewayData::PROXYUSERNAME.to_s)
        if @proxyUserName == nil
            @proxyUserName = empty
        end
        @proxyPassword = hashMap.get(PaymentGatewayData::PROXYPASSWORD.to_s)
        if @proxyPassword == nil
            @proxyPassword = empty
        end
        @proxyTimeout = hashMap.get(PaymentGatewayData::PROXYTIMEOUT.to_s)
        if @proxyTimeout == nil
            @proxyTimeout = empty
        end
        @special1 = hashMap.get(PaymentGatewayData::SPECIAL1.to_s)
        if @special1 == nil
            @special1 = empty
        end
        @special2 = hashMap.get(PaymentGatewayData::SPECIAL2.to_s)
        if @special2 == nil
            @special2 = empty
        end
        @special3 = hashMap.get(PaymentGatewayData::SPECIAL3.to_s)
        if @special3 == nil
            @special3 = empty
        end
        @special4 = hashMap.get(PaymentGatewayData::SPECIAL4.to_s)
        if @special4 == nil
            @special4 = empty
        end
        @special5 = hashMap.get(PaymentGatewayData::SPECIAL5.to_s)
        if @special5 == nil
            @special5 = empty
        end
        @special6 = hashMap.get(PaymentGatewayData::SPECIAL6.to_s)
        if @special6 == nil
            @special6 = empty
        end
        @special7 = hashMap.get(PaymentGatewayData::SPECIAL7.to_s)
        if @special7 == nil
            @special7 = empty
        end
        @special8 = hashMap.get(PaymentGatewayData::SPECIAL8.to_s)
        if @special8 == nil
            @special8 = empty
        end
        @special9 = hashMap.get(PaymentGatewayData::SPECIAL9.to_s)
        if @special9 == nil
            @special9 = empty
        end
        @lastModified = hashMap.get(::Org::Allbinary::Business::Entry::EntryData.getInstance().LASTMODIFIED.to_s)
        if @lastModified == nil
            @lastModified = empty
        end
        @timeEntered = hashMap.get(::Org::Allbinary::Business::Entry::EntryData.getInstance().TIMECREATED.to_s)
        if @timeEntered == nil
            @timeEntered = empty
        end
    end
    java_overload :getFormData, 1
    

    def getStoreName()
        return @storeName
    end
    java_overload :getStoreName, 0
    

    def getName()
        return @name
    end
    java_overload :getName, 0
    

    def getEnable()
        return @enable
    end
    java_overload :getEnable, 0
    

    def getPaymentMethod()
        return @paymentMethod
    end
    java_overload :getPaymentMethod, 0
    

    def getMode()
        return @mode
    end
    java_overload :getMode, 0
    

    def getTestProtocol()
        return @testProtocol
    end
    java_overload :getTestProtocol, 0
    

    def getTestServer()
        return @testServer
    end
    java_overload :getTestServer, 0
    

    def getTestPort()
        return @testPort
    end
    java_overload :getTestPort, 0
    

    def getTestPath()
        return @testPath
    end
    java_overload :getTestPath, 0
    

    def getServerProtocol()
        return @serverProtocol
    end
    java_overload :getServerProtocol, 0
    

    def getServer()
        return @server
    end
    java_overload :getServer, 0
    

    def getServerPort()
        return @serverPort
    end
    java_overload :getServerPort, 0
    

    def getServerPath()
        return @serverPath
    end
    java_overload :getServerPath, 0
    

    def getUserName()
        return @userName
    end
    java_overload :getUserName, 0
    

    def getPassword()
        return @password
    end
    java_overload :getPassword, 0
    

    def getProxyProtocol()
        return @proxyProtocol
    end
    java_overload :getProxyProtocol, 0
    

    def getProxyServer()
        return @proxyServer
    end
    java_overload :getProxyServer, 0
    

    def getProxyPath()
        return @proxyPath
    end
    java_overload :getProxyPath, 0
    

    def getProxyPort()
        return @proxyPort
    end
    java_overload :getProxyPort, 0
    

    def getProxyUserName()
        return @proxyUserName
    end
    java_overload :getProxyUserName, 0
    

    def getProxyPassword()
        return @proxyPassword
    end
    java_overload :getProxyPassword, 0
    

    def getTimeout()
        return @timeout
    end
    java_overload :getTimeout, 0
    

    def getProxyTimeout()
        return @proxyTimeout
    end
    java_overload :getProxyTimeout, 0
    

    def getSpecial1()
        return @special1
    end
    java_overload :getSpecial1, 0
    

    def getSpecial2()
        return @special2
    end
    java_overload :getSpecial2, 0
    

    def getSpecial3()
        return @special3
    end
    java_overload :getSpecial3, 0
    

    def getSpecial4()
        return @special4
    end
    java_overload :getSpecial4, 0
    

    def getSpecial5()
        return @special5
    end
    java_overload :getSpecial5, 0
    

    def getSpecial6()
        return @special6
    end
    java_overload :getSpecial6, 0
    

    def getSpecial7()
        return @special7
    end
    java_overload :getSpecial7, 0
    

    def getSpecial8()
        return @special8
    end
    java_overload :getSpecial8, 0
    

    def getSpecial9()
        return @special9
    end
    java_overload :getSpecial9, 0
    

    def getLastModified()
        return @lastModified
    end
    java_overload :getLastModified, 0
    

    def getTimeEntered()
        return @timeEntered
    end
    java_overload :getTimeEntered, 0
    

    def setEnable(value)
        @enable = value
    end
    java_overload :setEnable, 1
    

    def setStoreName(value)
        @storeName = value
    end
    java_overload :setStoreName, 1
    

    def setName(value)
        @name = value
    end
    java_overload :setName, 1
    

    def setPaymentMethod(value)
        @paymentMethod = value
    end
    java_overload :setPaymentMethod, 1
    

    def setMode(value)
        @mode = value
    end
    java_overload :setMode, 1
    

    def setTestProtocol(value)
        @testProtocol = value
    end
    java_overload :setTestProtocol, 1
    

    def setTestServer(value)
        @testServer = value
    end
    java_overload :setTestServer, 1
    

    def setTestPort(value)
        @testPort = value
    end
    java_overload :setTestPort, 1
    

    def setTestPath(value)
        @testPath = value
    end
    java_overload :setTestPath, 1
    

    def setServerProtocol(value)
        @serverProtocol = value
    end
    java_overload :setServerProtocol, 1
    

    def setServer(value)
        @server = value
    end
    java_overload :setServer, 1
    

    def setServerPort(value)
        @serverPort = value
    end
    java_overload :setServerPort, 1
    

    def setServerPath(value)
        @serverPath = value
    end
    java_overload :setServerPath, 1
    

    def setTimeout(value)
        @timeout = value
    end
    java_overload :setTimeout, 1
    

    def setUserName(value)
        @userName = value
    end
    java_overload :setUserName, 1
    

    def setPassword(value)
        @password = value
    end
    java_overload :setPassword, 1
    

    def setProxyProtocol(value)
        @proxyProtocol = value
    end
    java_overload :setProxyProtocol, 1
    

    def setProxyServer(value)
        @proxyServer = value
    end
    java_overload :setProxyServer, 1
    

    def setProxyPort(value)
        @proxyPort = value
    end
    java_overload :setProxyPort, 1
    

    def setProxyPath(value)
        @proxyPath = value
    end
    java_overload :setProxyPath, 1
    

    def setProxyUserName(value)
        @proxyUserName = value
    end
    java_overload :setProxyUserName, 1
    

    def setProxyPassword(value)
        @proxyPassword = value
    end
    java_overload :setProxyPassword, 1
    

    def setProxyTimeout(value)
        @proxyTimeout = value
    end
    java_overload :setProxyTimeout, 1
    

    def setSpecial1(value)
        @special1 = value
    end
    java_overload :setSpecial1, 1
    

    def setSpecial2(value)
        @special2 = value
    end
    java_overload :setSpecial2, 1
    

    def setSpecial3(value)
        @special3 = value
    end
    java_overload :setSpecial3, 1
    

    def setSpecial4(value)
        @special4 = value
    end
    java_overload :setSpecial4, 1
    

    def setSpecial5(value)
        @special5 = value
    end
    java_overload :setSpecial5, 1
    

    def setSpecial6(value)
        @special6 = value
    end
    java_overload :setSpecial6, 1
    

    def setSpecial7(value)
        @special7 = value
    end
    java_overload :setSpecial7, 1
    

    def setSpecial8(value)
        @special8 = value
    end
    java_overload :setSpecial8, 1
    

    def setSpecial9(value)
        @special9 = value
    end
    java_overload :setSpecial9, 1
    

    def setLastModified(value)
        @lastModified = value
    end
    java_overload :setLastModified, 1
    

    def setTimeEntered(value)
        @timeEntered = value
    end
    java_overload :setTimeEntered, 1
    

    # throws Exception
    def toHashMap_j0()
        return self.toHashMap(true)
    end
    

    # throws Exception
    def toHashMap_j1(isEncrypted)
        paymentGatewayHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        paymentGatewayHashMap.put(::Org::Allbinary::Business::Entry::EntryData.getInstance().ENABLE, @enable)
        paymentGatewayHashMap.put(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME.to_s, @storeName)
        paymentGatewayHashMap.put(PaymentGatewayData::NAME.to_s, self.getName())
        paymentGatewayHashMap.put(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::METHOD.to_s, @paymentMethod)
        paymentGatewayHashMap.put(PaymentGatewayData::MODE.to_s, @mode)
        paymentGatewayHashMap.put(PaymentGatewayData::TESTPROTOCOL.to_s, @testProtocol)
        paymentGatewayHashMap.put(PaymentGatewayData::TESTSERVER.to_s, @testServer)
        paymentGatewayHashMap.put(PaymentGatewayData::TESTPORT.to_s, @testPort)
        paymentGatewayHashMap.put(PaymentGatewayData::TESTPATH.to_s, @testPath)
        paymentGatewayHashMap.put(PaymentGatewayData::SERVERPROTOCOL.to_s, @serverProtocol)
        paymentGatewayHashMap.put(PaymentGatewayData::SERVER.to_s, @server)
        paymentGatewayHashMap.put(PaymentGatewayData::SERVERPORT.to_s, @serverPort)
        paymentGatewayHashMap.put(PaymentGatewayData::SERVERPATH.to_s, @serverPath)
        if isEncrypted
            superCrypt = ::Org::Allbinary::Logic::ControlPackage::Crypt::SuperCrypt.new(PaymentGatewayData::CRYPTNUM)
            paymentGatewayHashMap.put(::Org::Allbinary::Business::User::UserData::USERNAME.to_s, superCrypt.encrypt(@userName))
            paymentGatewayHashMap.put(::Org::Allbinary::Business::User::UserData::PASSWORD.to_s, superCrypt.encrypt(@password))
        else
            paymentGatewayHashMap.put(::Org::Allbinary::Business::User::UserData::USERNAME.to_s, @userName)
            paymentGatewayHashMap.put(::Org::Allbinary::Business::User::UserData::PASSWORD.to_s, @password)
        end
        paymentGatewayHashMap.put(PaymentGatewayData::TIMEOUT.to_s, @timeout)
        paymentGatewayHashMap.put(PaymentGatewayData::PROXYPROTOCOL.to_s, @proxyProtocol)
        paymentGatewayHashMap.put(PaymentGatewayData::PROXYSERVER.to_s, @proxyServer)
        paymentGatewayHashMap.put(PaymentGatewayData::PROXYPORT.to_s, @proxyPort)
        paymentGatewayHashMap.put(PaymentGatewayData::PROXYPATH.to_s, @proxyPath)
        paymentGatewayHashMap.put(PaymentGatewayData::PROXYUSERNAME.to_s, @proxyUserName)
        paymentGatewayHashMap.put(PaymentGatewayData::PROXYPASSWORD.to_s, @proxyPassword)
        paymentGatewayHashMap.put(PaymentGatewayData::PROXYTIMEOUT.to_s, @proxyTimeout)
        if isEncrypted
            superCrypt = ::Org::Allbinary::Logic::ControlPackage::Crypt::SuperCrypt.new(PaymentGatewayData::CRYPTNUM)
            paymentGatewayHashMap.put(PaymentGatewayData::SPECIAL1.to_s, superCrypt.encrypt(@special1))
            paymentGatewayHashMap.put(PaymentGatewayData::SPECIAL2.to_s, superCrypt.encrypt(@special2))
            paymentGatewayHashMap.put(PaymentGatewayData::SPECIAL3.to_s, superCrypt.encrypt(@special3))
            paymentGatewayHashMap.put(PaymentGatewayData::SPECIAL4.to_s, superCrypt.encrypt(@special4))
            paymentGatewayHashMap.put(PaymentGatewayData::SPECIAL5.to_s, superCrypt.encrypt(@special5))
            paymentGatewayHashMap.put(PaymentGatewayData::SPECIAL6.to_s, superCrypt.encrypt(@special6))
            paymentGatewayHashMap.put(PaymentGatewayData::SPECIAL7.to_s, superCrypt.encrypt(@special7))
            paymentGatewayHashMap.put(PaymentGatewayData::SPECIAL8.to_s, superCrypt.encrypt(@special8))
        else
            paymentGatewayHashMap.put(PaymentGatewayData::SPECIAL1.to_s, @special1)
            paymentGatewayHashMap.put(PaymentGatewayData::SPECIAL2.to_s, @special2)
            paymentGatewayHashMap.put(PaymentGatewayData::SPECIAL3.to_s, @special3)
            paymentGatewayHashMap.put(PaymentGatewayData::SPECIAL4.to_s, @special4)
            paymentGatewayHashMap.put(PaymentGatewayData::SPECIAL5.to_s, @special5)
            paymentGatewayHashMap.put(PaymentGatewayData::SPECIAL6.to_s, @special6)
            paymentGatewayHashMap.put(PaymentGatewayData::SPECIAL7.to_s, @special7)
            paymentGatewayHashMap.put(PaymentGatewayData::SPECIAL8.to_s, @special8)
            paymentGatewayHashMap.put(PaymentGatewayData::SPECIAL9.to_s, @special9)
        end
        paymentGatewayHashMap.put(::Org::Allbinary::Business::Entry::EntryData.getInstance().LASTMODIFIED.to_s, @lastModified)
        return paymentGatewayHashMap
    end

    def toHashMap(*java_overload_args)
        return toHashMap_j0(*java_overload_args) if java_overload_args.length == 0
        return toHashMap_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method toHashMap takes #{java_overload_args.length} arguments"
    end
    

    def toVector_j0()
        return self.toVector(true)
    end
    

    def toVector_j1(isEncrypted)
        updateVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        updateVector.add(@enable)
        updateVector.add(@storeName)
        updateVector.add(self.getName())
        updateVector.add(@paymentMethod)
        updateVector.add(@mode)
        updateVector.add(@testProtocol)
        updateVector.add(@testServer)
        updateVector.add(@testPort)
        updateVector.add(@testPath)
        updateVector.add(@serverProtocol)
        updateVector.add(@server)
        updateVector.add(@serverPort)
        updateVector.add(@serverPath)
        if isEncrypted
            superCrypt = ::Org::Allbinary::Logic::ControlPackage::Crypt::SuperCrypt.new(PaymentGatewayData::CRYPTNUM)
            updateVector.add(superCrypt.encrypt(@userName))
            updateVector.add(superCrypt.encrypt(@password))
        else
            updateVector.add(@userName)
            updateVector.add(@password)
        end
        updateVector.add(@timeout)
        updateVector.add(@proxyProtocol)
        updateVector.add(@proxyServer)
        updateVector.add(@proxyPort)
        updateVector.add(@proxyPath)
        updateVector.add(@proxyUserName)
        updateVector.add(@proxyPassword)
        updateVector.add(@proxyTimeout)
        if isEncrypted
            superCrypt = ::Org::Allbinary::Logic::ControlPackage::Crypt::SuperCrypt.new(PaymentGatewayData::CRYPTNUM)
            updateVector.add(superCrypt.encrypt(@special1))
            updateVector.add(superCrypt.encrypt(@special2))
            updateVector.add(superCrypt.encrypt(@special3))
            updateVector.add(superCrypt.encrypt(@special4))
            updateVector.add(superCrypt.encrypt(@special5))
            updateVector.add(superCrypt.encrypt(@special6))
            updateVector.add(superCrypt.encrypt(@special7))
            updateVector.add(superCrypt.encrypt(@special8))
            updateVector.add(superCrypt.encrypt(@special9))
        else
            updateVector.add(@special1)
            updateVector.add(@special2)
            updateVector.add(@special3)
            updateVector.add(@special4)
            updateVector.add(@special5)
            updateVector.add(@special6)
            updateVector.add(@special7)
            updateVector.add(@special8)
            updateVector.add(@special9)
        end
        return updateVector
    end

    def toVector(*java_overload_args)
        return toVector_j0(*java_overload_args) if java_overload_args.length == 0
        return toVector_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method toVector takes #{java_overload_args.length} arguments"
    end
    

    # throws Exception
    def getKey()
        return PaymentGatewayPrimaryKey.new(self.getStoreName(), self.getName())
    end
    java_overload :getKey, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserData, "org/allbinary/business/user/UserData" unless const_defined?(:UserData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; autoload :PaymentData, "org/allbinary/business/user/commerce/money/payment/PaymentData" unless const_defined?(:PaymentData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Crypt; autoload :SuperCrypt, "org/allbinary/logic/control/crypt/SuperCrypt" unless const_defined?(:SuperCrypt, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :PaymentGatewayData, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData" unless const_defined?(:PaymentGatewayData, false)
autoload :PaymentGatewayPrimaryKey, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayPrimaryKey" unless const_defined?(:PaymentGatewayPrimaryKey, false)

end; end; end; end; end; end; end; end

