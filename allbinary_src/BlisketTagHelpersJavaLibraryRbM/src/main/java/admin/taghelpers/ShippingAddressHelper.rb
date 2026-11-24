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
# package admin.taghelpers

require "java/lang/JavaOverload"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/BasicTable"

module ::Admin; module Taghelpers

class ShippingAddressHelper < BasicTable
    attr_accessor :logUtil, :stringUtil, :weblisketSession, :request, :userName, :streetAddress, :portion

    def jfields_admin_taghelpers_ShippingAddressHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        @weblisketSession = nil unless instance_variable_defined?(:@weblisketSession)
        @request = nil unless instance_variable_defined?(:@request)
        @userName = nil unless instance_variable_defined?(:@userName)
        @streetAddress = nil unless instance_variable_defined?(:@streetAddress)
        @portion = nil unless instance_variable_defined?(:@portion)
    end
    

    def initialize(hashMap, pageContext)
        super()
        jfields_admin_taghelpers_ShippingAddressHelper
        @request = pageContext.getRequest()
        @weblisketSession = ::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSession.new(hashMap, pageContext)
        @portion = ::Org::Allbinary::Business::Installer::Portion.new(hashMap)
        self.getAddressForm()
    end
    

    def getAddressForm()
        @userName = @request.getParameter(::Org::Allbinary::Business::User::UserData::USERNAME)
        if @userName == nil
            @userName = @request.getParameter(::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSessionData::REMOVABLEUSERNAME)
        end
        @streetAddress = ::Org::Allbinary::Business::User::Address::StreetAddress.new(@request)
    end
    java_overload :getAddressForm, 0
    

    def drop()
        begin
            success = ::Org::Allbinary::DataPackage::Tables::User::Address::Shipping::ShippingAddressesEntity.new(@stringUtil.EMPTY_STRING).drop()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, @commonStrings.DROP)
            end
            return success
        rescue StandardError => e
            error = "Failed to drop Admin table"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.DROP, e)
            end
            return error
        end
    end
    java_overload :drop, 0
    

    def create()
        begin
            success = ::Org::Allbinary::DataPackage::Tables::User::Address::Shipping::ShippingAddressesEntity.new(@stringUtil.EMPTY_STRING).createTable()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "create()")
            end
            return success
        rescue StandardError => e
            error = "Failed to create user table"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "create()", e)
            end
            return error
        end
    end
    java_overload :create, 0
    

    def restore()
        begin
            success = "Restore Successful"
            result = ::Org::Allbinary::Logic::Communication::Sql::AbSqlTableUtil.getInstance().restoreTable(::Org::Allbinary::DataPackage::Tables::User::Address::Shipping::ShippingAddressesEntity.new(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING), @portion)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "restore()")
            end
            return result
        rescue StandardError => e
            error = "Failed to restore backup"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "restore()", e)
            end
            return error
        end
    end
    java_overload :restore, 0
    

    def backup()
        begin
            success = "Backup Successful"
            result = ::Org::Allbinary::Logic::Communication::Sql::AbSqlTableUtil.getInstance().backupTable(::Org::Allbinary::DataPackage::Tables::User::Address::Shipping::ShippingAddressesEntity.new(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING))
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "backup()")
            end
            return result
        rescue StandardError => e
            error = "Failed to make backup"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "backup()", e)
            end
            return error
        end
    end
    java_overload :backup, 0
    

    def insert()
        begin
            success = "Successfully Added Shipping Address"
            ::Org::Allbinary::DataPackage::Tables::User::Address::Shipping::ShippingAddressesEntityFactory.getInstance().getInstance(@weblisketSession.getUserName()).add(@streetAddress)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "insert")
            end
            return success
        rescue StandardError => e
            error = "Failed to add Shipping streetAddress"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "insert", e)
            end
            return error
        end
    end
    java_overload :insert, 0
    

    def update()
        begin
            success = "Successfully Updated Shipping Address"
            ::Org::Allbinary::DataPackage::Tables::User::Address::Shipping::ShippingAddressesEntityFactory.getInstance().getInstance(@weblisketSession.getUserName()).update(@streetAddress)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF("Successfull update of a Users Shipping Address table", self, "update()")
            end
            return success
        rescue StandardError => e
            error = "Failed update of a Users Shipping Address Table"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "update", e)
            end
            return error
        end
    end
    java_overload :update, 0
    

    def setToBillingAddress()
        begin
            streetAddress = ::Org::Allbinary::DataPackage::Tables::User::Address::Billing::BillingAddressesEntityFactory.getInstance().getInstance(@weblisketSession.getUserName()).getDefault()
            if streetAddress != nil
                ::Org::Allbinary::DataPackage::Tables::User::Address::Shipping::ShippingAddressesEntityFactory.getInstance().getInstance(@weblisketSession.getUserName()).add(streetAddress)
            else
                return "No Billing Address"
            end
            return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        rescue StandardError => e
            error = "Failed Setting Shipping address to Billing Address"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "setToBillingAddress()", e)
            end
            return error
        end
    end
    java_overload :setToBillingAddress, 0
    

    def delete()
        begin
            success = "Successfully Removed Shipping Address"
            ::Org::Allbinary::DataPackage::Tables::User::Address::Shipping::ShippingAddressesEntityFactory.getInstance().getInstance(@weblisketSession.getUserName()).remove(@streetAddress.getId())
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "remove()")
            end
            return success
        rescue StandardError => e
            error = "Failed to remove Shipping Address"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "remove()", e)
            end
            return error
        end
    end
    java_overload :delete, 0
    

    def set()
        begin
            success = "Successfully Set Shipping Address"
            ::Org::Allbinary::DataPackage::Tables::User::Address::Shipping::ShippingAddressesEntityFactory.getInstance().getInstance(@weblisketSession.getUserName()).setDefault(@streetAddress.getId())
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "set()")
            end
            return success
        rescue StandardError => e
            error = "Failed to set Shipping Address"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "set()", e)
            end
            return error
        end
    end
    java_overload :set, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Installer; autoload :Portion, "org/allbinary/business/installer/Portion" unless const_defined?(:Portion, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserData, "org/allbinary/business/user/UserData" unless const_defined?(:UserData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Address; autoload :StreetAddress, "org/allbinary/business/user/address/StreetAddress" unless const_defined?(:StreetAddress, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Address; module Billing; autoload :BillingAddressesEntityFactory, "org/allbinary/data/tables/user/address/billing/BillingAddressesEntityFactory" unless const_defined?(:BillingAddressesEntityFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Address; module Shipping; autoload :ShippingAddressesEntity, "org/allbinary/data/tables/user/address/shipping/ShippingAddressesEntity" unless const_defined?(:ShippingAddressesEntity, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Address; module Shipping; autoload :ShippingAddressesEntityFactory, "org/allbinary/data/tables/user/address/shipping/ShippingAddressesEntityFactory" unless const_defined?(:ShippingAddressesEntityFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSession, "org/allbinary/logic/communication/http/request/session/WeblisketSession" unless const_defined?(:WeblisketSession, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSessionData, "org/allbinary/logic/communication/http/request/session/WeblisketSessionData" unless const_defined?(:WeblisketSessionData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Sql; autoload :AbSqlTableUtil, "org/allbinary/logic/communication/sql/AbSqlTableUtil" unless const_defined?(:AbSqlTableUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

