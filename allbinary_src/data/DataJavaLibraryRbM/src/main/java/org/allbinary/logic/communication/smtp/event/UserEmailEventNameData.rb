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
# package org.allbinary.logic.communication.smtp.event

require "java/lang/Object"

class UserEmailEventNameData
    attr_accessor :eventNameId, :eventHandlerName

    def initialize_fields
        @eventNameId = 0
        @eventHandlerName = nil
    end
    

    def initialize(eventHandlerName)
        initialize_fields
        @eventHandlerName = eventHandlerName
        self.initNextId()
        UserEmailEventNameData.userNameEvenNameHashMap.put(@eventHandlerName, self)
    end
    

    def initNextId()
        java_monitor.synchronize do
        @eventNameId = UserEmailEventNameData.nextId
        UserEmailEventNameData.nextId += 1
        end
    end
    

    def isEvent(userEmailEventNameString)
        return UserEmailEventNameData.userNameEvenNameHashMap.containsKey(userEmailEventNameString)
    end
    

    # throws Exception
    def self.getInstance(userEmailEventNameString)
        java_monitor.synchronize do
        userEmailEventNameData = UserEmailEventNameData.userNameEvenNameHashMap.get(userEmailEventNameString)
        if userEmailEventNameData == nil
            raise StandardError.new()
        else
            return userEmailEventNameData
        end
        end
    end
    

    def toString()
        return @eventHandlerName
    end
    alias_method :to_s, :toString

    def self.userNameEvenNameHashMap()
        return defined?(@@userNameEvenNameHashMap) ? @@userNameEvenNameHashMap : nil
    end

    def self.userNameEvenNameHashMap=(value)
        @@userNameEvenNameHashMap = value
    end

    def self.nextId()
        return defined?(@@nextId) ? @@nextId : nil
    end

    def self.nextId=(value)
        @@nextId = value
    end
end

require "java/util/HashMap"
require "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData"
require "org/allbinary/logic/StdUtil"

class UserEmailEventNameData
    @@userNameEvenNameHashMap = StdUtil.getInstance().createHashMap()
    @@nextId = 0
    INSTALLER = UserEmailEventNameData.new("Installer")
    EXCEPTION = UserEmailEventNameData.new("Exception")
    LOGGEDEXCEPTION = UserEmailEventNameData.new("Logged Exception")
    ERROR = UserEmailEventNameData.new("Error")
    OUTOFMEMORY = UserEmailEventNameData.new("Out Of Memory Error")
    ADMINGENERATINGSTATICPAGES = UserEmailEventNameData.new("Admin Generating Static Pages")
    STOREERROROCCURRED = UserEmailEventNameData.new("Store Error Occurred")
    STOREOUTOFMEMORY = UserEmailEventNameData.new("Store Out Of Memory Error")
    STORECREATED = UserEmailEventNameData.new("Store Created")
    STOREOPENED = UserEmailEventNameData.new("Store Opened")
    STORECLOSED = UserEmailEventNameData.new("Store Closed")
    STOREGENERATINGSTATICPAGES = UserEmailEventNameData.new("Store Generating Static Pages")
    PRODUCTISOUT = UserEmailEventNameData.new("Product Is Out")
    PRODUCTISAVAILABLE = UserEmailEventNameData.new("Product Is Available")
    PRODUCTISOLD = UserEmailEventNameData.new("Product Is Old")
    PRODUCTISONSALE = UserEmailEventNameData.new("Product Is On Sale")
    PRODUCTSALEISOVER = UserEmailEventNameData.new("Product Sale Is Over")
    ORDERPREPROCESSING = UserEmailEventNameData.new(OrderHistoryData::PREPROCESSING)
    ORDERPROCESSING = UserEmailEventNameData.new(OrderHistoryData::PROCESSING)
    ORDERCANCELLED = UserEmailEventNameData.new(OrderHistoryData::CANCELLED)
    ORDERPARTIALLYSHIPPED = UserEmailEventNameData.new(OrderHistoryData::PARTIALLYSHIPPED)
    ORDERSHIPPED = UserEmailEventNameData.new(OrderHistoryData::SHIPPED)
    QUOTEREQUEST = UserEmailEventNameData.new("Quote Request")
    NEWPASSWORD = UserEmailEventNameData.new("New Password")
end

