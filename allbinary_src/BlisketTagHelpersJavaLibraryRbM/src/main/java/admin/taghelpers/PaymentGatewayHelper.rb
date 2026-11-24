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
require "java/lang/JavaClass"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/BasicTable"

module ::Admin; module Taghelpers

class PaymentGatewayHelper < BasicTable
    attr_accessor :logUtil, :weblisketSession, :httpServletRequest, :portion

    def jfields_admin_taghelpers_PaymentGatewayHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @weblisketSession = nil unless instance_variable_defined?(:@weblisketSession)
        @httpServletRequest = nil unless instance_variable_defined?(:@httpServletRequest)
        @portion = nil unless instance_variable_defined?(:@portion)
    end
    

    def initialize(hashMap, pageContext)
        super()
        jfields_admin_taghelpers_PaymentGatewayHelper
        begin
            @weblisketSession = ::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSession.new(hashMap, pageContext)
            @httpServletRequest = pageContext.getRequest()
            @portion = ::Org::Allbinary::Business::Installer::Portion.new(hashMap)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PAYMENTERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
            end
            raise e
        end
    end
    

    def insert()
        begin
            paymentGatewayInterface = ::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayInterfaceFactory.new().getInstance(@httpServletRequest)
            paymentGatewayInterface.setStoreName(@weblisketSession.getStoreName())
            ::Org::Allbinary::DataPackage::Tables::User::Commerce::Money::Payment::Gateway::PaymentGatewayEntityFactory.getInstance().add(paymentGatewayInterface)
            success = "Successfully Added New Payment Gateway"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "insert()")
            end
            return success + "<br/>"
        rescue StandardError => e
            error = "Failed to add"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "add()", e)
            end
            return error + "<br>" + "Exception: " + (e).to_s + "<br>"
        end
    end
    java_overload :insert, 0
    

    def update()
        begin
            paymentGatewayInterface = ::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayInterfaceFactory.new().getInstance(@httpServletRequest)
            paymentGatewayInterface.setStoreName(@weblisketSession.getStoreName())
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("Gateway Name: ")
                stringBuffer.append(paymentGatewayInterface.getName())
                stringBuffer.append(" HashMap=")
                stringBuffer.append(paymentGatewayInterface.toHashMap(true).to_s)
                @logUtil.putF(stringBuffer.to_s, self, "update()")
            end
            ::Org::Allbinary::DataPackage::Tables::User::Commerce::Money::Payment::Gateway::PaymentGatewayEntityFactory.getInstance().update(paymentGatewayInterface)
            success = "Successfully Updated Payment Gateway information"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "update()")
            end
            return success + "<br/>"
        rescue StandardError => e
            error = "Failed to update payment gateway information"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "update()", e)
            end
            return error + "<br/>" + "Exception: " + (e).to_s + "<br/>"
        end
    end
    java_overload :update, 0
    

    def delete()
        begin
            paymentGatewayInterface = ::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayInterfaceFactory.new().getInstance(@httpServletRequest)
            paymentGatewayInterface.setStoreName(@weblisketSession.getStoreName())
            storeName = paymentGatewayInterface.getStoreName()
            gatewayName = paymentGatewayInterface.getName()
            ::Org::Allbinary::DataPackage::Tables::User::Commerce::Money::Payment::Gateway::PaymentGatewayEntityFactory.getInstance().remove(storeName, ::Org::Allbinary::Business::User::Commerce::Money::Payment::Types::BasicPaymentTypeUtil.getInstance().get(gatewayName))
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("Successfully Removed payment gateway where store name=")
            stringBuffer.append(storeName)
            stringBuffer.append(" and gateway name=")
            stringBuffer.append(gatewayName)
            success = stringBuffer.to_s
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "delete()")
            end
            return success + "<br/>"
        rescue StandardError => e
            error = "Failed to remove payment gateway from table"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "remove()", e)
            end
            return error + "<br/>" + "Exception: " + (e).to_s + "<br>"
        end
    end
    java_overload :delete, 0
    

    def drop()
        begin
            success = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Money::Payment::Gateway::PaymentGatewayEntityFactory.getInstance().dropTable()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, @commonStrings.DROP)
            end
            return success
        rescue StandardError => e
            error = "Failed to drop payment transaction result table"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.DROP, e)
            end
            return error
        end
    end
    java_overload :drop, 0
    

    def create()
        begin
            success = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Money::Payment::Gateway::PaymentGatewayEntityFactory.getInstance().createTable()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "create()")
            end
            return success
        rescue StandardError => e
            error = "Failed to create payment transaction result table"
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
            result = ::Org::Allbinary::Logic::Communication::Sql::AbSqlTableUtil.getInstance().restoreTable(::Org::Allbinary::DataPackage::Tables::User::Commerce::Money::Payment::Gateway::PaymentGatewayEntityFactory.getInstance(), @portion)
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
            success = "Restore Successful"
            result = ::Org::Allbinary::Logic::Communication::Sql::AbSqlTableUtil.getInstance().backupTable(::Org::Allbinary::DataPackage::Tables::User::Commerce::Money::Payment::Gateway::PaymentGatewayEntityFactory.getInstance())
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
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Installer; autoload :Portion, "org/allbinary/business/installer/Portion" unless const_defined?(:Portion, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; autoload :PaymentGatewayInterface, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterface" unless const_defined?(:PaymentGatewayInterface, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; autoload :PaymentGatewayInterfaceFactory, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterfaceFactory" unless const_defined?(:PaymentGatewayInterfaceFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Types; autoload :BasicPaymentTypeUtil, "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentTypeUtil" unless const_defined?(:BasicPaymentTypeUtil, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Money; module Payment; module Gateway; autoload :PaymentGatewayEntityFactory, "org/allbinary/data/tables/user/commerce/money/payment/gateway/PaymentGatewayEntityFactory" unless const_defined?(:PaymentGatewayEntityFactory, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSession, "org/allbinary/logic/communication/http/request/session/WeblisketSession" unless const_defined?(:WeblisketSession, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Sql; autoload :AbSqlTableUtil, "org/allbinary/logic/communication/sql/AbSqlTableUtil" unless const_defined?(:AbSqlTableUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

