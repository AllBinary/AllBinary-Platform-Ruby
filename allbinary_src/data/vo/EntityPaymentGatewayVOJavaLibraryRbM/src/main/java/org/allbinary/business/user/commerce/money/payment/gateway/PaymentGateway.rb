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

require "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterface"

class PaymentGateway
    include PaymentGatewayInterface
    attr_accessor :storeName, :name, :enable, :paymentMethod, :mode, :testProtocol, :testServer, :testPort, :testPath, :serverProtocol, :server, :serverPort, :serverPath, :timeout, :userName, :password, :proxyProtocol, :proxyServer, :proxyPort, :proxyPath, :proxyUserName, :proxyPassword, :proxyTimeout, :special1, :special2, :special3, :special4, :special5, :special6, :special7, :special8, :special9, :lastModified, :timeEntered

    def initialize_fields
        @storeName = nil
        @name = nil
        @enable = nil
        @paymentMethod = nil
        @mode = nil
        @testProtocol = nil
        @testServer = nil
        @testPort = nil
        @testPath = nil
        @serverProtocol = nil
        @server = nil
        @serverPort = nil
        @serverPath = nil
        @timeout = nil
        @userName = nil
        @password = nil
        @proxyProtocol = nil
        @proxyServer = nil
        @proxyPort = nil
        @proxyPath = nil
        @proxyUserName = nil
        @proxyPassword = nil
        @proxyTimeout = nil
        @special1 = nil
        @special2 = nil
        @special3 = nil
        @special4 = nil
        @special5 = nil
        @special6 = nil
        @special7 = nil
        @special8 = nil
        @special9 = nil
        @lastModified = nil
        @timeEntered = nil
    end
    

    def initialize(hashMap)
        initialize_fields
        self.getFormData(hashMap)
    end
    

    def getFormData(hashMap)
        stringUtil = StringUtil.getInstance()
        empty = stringUtil.EMPTY_STRING
        @storeName = hashMap.get(StoreFrontData.getInstance().NAME.to_s)
        @name = hashMap.get(PaymentGatewayData::NAME.to_s)
        @enable = stringUtil.getNonNull(hashMap.get(EntryData.getInstance().ENABLE.to_s))
        @paymentMethod = stringUtil.getNonNull(hashMap.get(PaymentData::METHOD.to_s))
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
        @userName = hashMap.get(UserData::USERNAME.to_s)
        if @userName == nil
            @userName = empty
        end
        @password = hashMap.get(UserData::PASSWORD.to_s)
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
        @lastModified = hashMap.get(EntryData.getInstance().LASTMODIFIED.to_s)
        if @lastModified == nil
            @lastModified = empty
        end
        @timeEntered = hashMap.get(EntryData.getInstance().TIMECREATED.to_s)
        if @timeEntered == nil
            @timeEntered = empty
        end
    end
    

    def getStoreName()
        return @storeName
    end
    

    def getName()
        return @name
    end
    

    def getEnable()
        return @enable
    end
    

    def getPaymentMethod()
        return @paymentMethod
    end
    

    def getMode()
        return @mode
    end
    

    def getTestProtocol()
        return @testProtocol
    end
    

    def getTestServer()
        return @testServer
    end
    

    def getTestPort()
        return @testPort
    end
    

    def getTestPath()
        return @testPath
    end
    

    def getServerProtocol()
        return @serverProtocol
    end
    

    def getServer()
        return @server
    end
    

    def getServerPort()
        return @serverPort
    end
    

    def getServerPath()
        return @serverPath
    end
    

    def getUserName()
        return @userName
    end
    

    def getPassword()
        return @password
    end
    

    def getProxyProtocol()
        return @proxyProtocol
    end
    

    def getProxyServer()
        return @proxyServer
    end
    

    def getProxyPath()
        return @proxyPath
    end
    

    def getProxyPort()
        return @proxyPort
    end
    

    def getProxyUserName()
        return @proxyUserName
    end
    

    def getProxyPassword()
        return @proxyPassword
    end
    

    def getTimeout()
        return @timeout
    end
    

    def getProxyTimeout()
        return @proxyTimeout
    end
    

    def getSpecial1()
        return @special1
    end
    

    def getSpecial2()
        return @special2
    end
    

    def getSpecial3()
        return @special3
    end
    

    def getSpecial4()
        return @special4
    end
    

    def getSpecial5()
        return @special5
    end
    

    def getSpecial6()
        return @special6
    end
    

    def getSpecial7()
        return @special7
    end
    

    def getSpecial8()
        return @special8
    end
    

    def getSpecial9()
        return @special9
    end
    

    def getLastModified()
        return @lastModified
    end
    

    def getTimeEntered()
        return @timeEntered
    end
    

    def setEnable(value)
        @enable = value
    end
    

    def setStoreName(value)
        @storeName = value
    end
    

    def setName(value)
        @name = value
    end
    

    def setPaymentMethod(value)
        @paymentMethod = value
    end
    

    def setMode(value)
        @mode = value
    end
    

    def setTestProtocol(value)
        @testProtocol = value
    end
    

    def setTestServer(value)
        @testServer = value
    end
    

    def setTestPort(value)
        @testPort = value
    end
    

    def setTestPath(value)
        @testPath = value
    end
    

    def setServerProtocol(value)
        @serverProtocol = value
    end
    

    def setServer(value)
        @server = value
    end
    

    def setServerPort(value)
        @serverPort = value
    end
    

    def setServerPath(value)
        @serverPath = value
    end
    

    def setTimeout(value)
        @timeout = value
    end
    

    def setUserName(value)
        @userName = value
    end
    

    def setPassword(value)
        @password = value
    end
    

    def setProxyProtocol(value)
        @proxyProtocol = value
    end
    

    def setProxyServer(value)
        @proxyServer = value
    end
    

    def setProxyPort(value)
        @proxyPort = value
    end
    

    def setProxyPath(value)
        @proxyPath = value
    end
    

    def setProxyUserName(value)
        @proxyUserName = value
    end
    

    def setProxyPassword(value)
        @proxyPassword = value
    end
    

    def setProxyTimeout(value)
        @proxyTimeout = value
    end
    

    def setSpecial1(value)
        @special1 = value
    end
    

    def setSpecial2(value)
        @special2 = value
    end
    

    def setSpecial3(value)
        @special3 = value
    end
    

    def setSpecial4(value)
        @special4 = value
    end
    

    def setSpecial5(value)
        @special5 = value
    end
    

    def setSpecial6(value)
        @special6 = value
    end
    

    def setSpecial7(value)
        @special7 = value
    end
    

    def setSpecial8(value)
        @special8 = value
    end
    

    def setSpecial9(value)
        @special9 = value
    end
    

    def setLastModified(value)
        @lastModified = value
    end
    

    def setTimeEntered(value)
        @timeEntered = value
    end
    

    # throws Exception
    def toHashMap()
        return self.toHashMap(true)
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def toHashMap(isEncrypted)
        paymentGatewayHashMap = StdUtil.getInstance().createHashMap()
        paymentGatewayHashMap.put(EntryData.getInstance().ENABLE, @enable)
        paymentGatewayHashMap.put(StoreFrontData.getInstance().NAME.to_s, @storeName)
        paymentGatewayHashMap.put(PaymentGatewayData::NAME.to_s, self.getName())
        paymentGatewayHashMap.put(PaymentData::METHOD.to_s, @paymentMethod)
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
            superCrypt = SuperCrypt.new(PaymentGatewayData::CRYPTNUM)
            paymentGatewayHashMap.put(UserData::USERNAME.to_s, superCrypt.encrypt(@userName))
            paymentGatewayHashMap.put(UserData::PASSWORD.to_s, superCrypt.encrypt(@password))
        else
            paymentGatewayHashMap.put(UserData::USERNAME.to_s, @userName)
            paymentGatewayHashMap.put(UserData::PASSWORD.to_s, @password)
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
            superCrypt = SuperCrypt.new(PaymentGatewayData::CRYPTNUM)
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
        paymentGatewayHashMap.put(EntryData.getInstance().LASTMODIFIED.to_s, @lastModified)
        return paymentGatewayHashMap
    end
    

    def toVector()
        return self.toVector(true)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def toVector(isEncrypted)
        updateVector = BasicArrayListD.new()
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
            superCrypt = SuperCrypt.new(PaymentGatewayData::CRYPTNUM)
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
            superCrypt = SuperCrypt.new(PaymentGatewayData::CRYPTNUM)
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
    

    # throws Exception
    def getKey()
        return PaymentGatewayPrimaryKey.new(self.getStoreName(), self.getName())
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/user/UserData"
require "org/allbinary/business/user/commerce/money/payment/PaymentData"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/control/crypt/SuperCrypt"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData"
require "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayPrimaryKey"

