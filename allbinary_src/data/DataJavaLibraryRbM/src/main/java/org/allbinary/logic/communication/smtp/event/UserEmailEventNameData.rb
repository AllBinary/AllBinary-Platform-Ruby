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

module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event

class UserEmailEventNameData
    attr_accessor :eventNameId, :eventHandlerName

    def jfields_org_allbinary_logic_communication_smtp_event_UserEmailEventNameData
        @eventNameId = 0 unless instance_variable_defined?(:@eventNameId)
        @eventHandlerName = nil unless instance_variable_defined?(:@eventHandlerName)
    end
    

    def initialize(eventHandlerName)
        jfields_org_allbinary_logic_communication_smtp_event_UserEmailEventNameData
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
        UserEmailEventNameData.java_static_fields unless @java_static_fields_started
        return defined?(@@userNameEvenNameHashMap) ? @@userNameEvenNameHashMap : nil
    end

    def self.userNameEvenNameHashMap=(value)
        UserEmailEventNameData.java_static_fields unless @java_static_fields_started
        @@userNameEvenNameHashMap = value
    end

    def self.nextId()
        UserEmailEventNameData.java_static_fields unless @java_static_fields_started
        return defined?(@@nextId) ? @@nextId : nil
    end

    def self.nextId=(value)
        UserEmailEventNameData.java_static_fields unless @java_static_fields_started
        @@nextId = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        @@nextId = 0
        begin
            @@userNameEvenNameHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            const_set(:INSTALLER, UserEmailEventNameData.new("Installer"))
            const_set(:EXCEPTION, UserEmailEventNameData.new("Exception"))
            const_set(:LOGGEDEXCEPTION, UserEmailEventNameData.new("Logged Exception"))
            const_set(:ERROR, UserEmailEventNameData.new("Error"))
            const_set(:OUTOFMEMORY, UserEmailEventNameData.new("Out Of Memory Error"))
            const_set(:ADMINGENERATINGSTATICPAGES, UserEmailEventNameData.new("Admin Generating Static Pages"))
            const_set(:STOREERROROCCURRED, UserEmailEventNameData.new("Store Error Occurred"))
            const_set(:STOREOUTOFMEMORY, UserEmailEventNameData.new("Store Out Of Memory Error"))
            const_set(:STORECREATED, UserEmailEventNameData.new("Store Created"))
            const_set(:STOREOPENED, UserEmailEventNameData.new("Store Opened"))
            const_set(:STORECLOSED, UserEmailEventNameData.new("Store Closed"))
            const_set(:STOREGENERATINGSTATICPAGES, UserEmailEventNameData.new("Store Generating Static Pages"))
            const_set(:PRODUCTISOUT, UserEmailEventNameData.new("Product Is Out"))
            const_set(:PRODUCTISAVAILABLE, UserEmailEventNameData.new("Product Is Available"))
            const_set(:PRODUCTISOLD, UserEmailEventNameData.new("Product Is Old"))
            const_set(:PRODUCTISONSALE, UserEmailEventNameData.new("Product Is On Sale"))
            const_set(:PRODUCTSALEISOVER, UserEmailEventNameData.new("Product Sale Is Over"))
            const_set(:ORDERPREPROCESSING, UserEmailEventNameData.new(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PREPROCESSING))
            const_set(:ORDERPROCESSING, UserEmailEventNameData.new(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PROCESSING))
            const_set(:ORDERCANCELLED, UserEmailEventNameData.new(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::CANCELLED))
            const_set(:ORDERPARTIALLYSHIPPED, UserEmailEventNameData.new(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PARTIALLYSHIPPED))
            const_set(:ORDERSHIPPED, UserEmailEventNameData.new(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SHIPPED))
            const_set(:QUOTEREQUEST, UserEmailEventNameData.new("Quote Request"))
            const_set(:NEWPASSWORD, UserEmailEventNameData.new("New Password"))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "UserEmailEventNameData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:INSTALLER, :EXCEPTION, :LOGGEDEXCEPTION, :ERROR, :OUTOFMEMORY, :ADMINGENERATINGSTATICPAGES, :STOREERROROCCURRED, :STOREOUTOFMEMORY, :STORECREATED, :STOREOPENED, :STORECLOSED, :STOREGENERATINGSTATICPAGES, :PRODUCTISOUT, :PRODUCTISAVAILABLE, :PRODUCTISOLD, :PRODUCTISONSALE, :PRODUCTSALEISOVER, :ORDERPREPROCESSING, :ORDERPROCESSING, :ORDERCANCELLED, :ORDERPARTIALLYSHIPPED, :ORDERSHIPPED, :QUOTEREQUEST, :NEWPASSWORD].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryData, "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData" unless const_defined?(:OrderHistoryData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end

begin
    UserEmailEventNameData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

