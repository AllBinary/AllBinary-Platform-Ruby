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
require "admin/taghelpers/Table"

module ::Admin; module Taghelpers

class UserHelper < Table
    attr_accessor :logUtil, :hashMap, :pageContext, :request, :path, :portion

    def jfields_admin_taghelpers_UserHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @hashMap = nil unless instance_variable_defined?(:@hashMap)
        @pageContext = nil unless instance_variable_defined?(:@pageContext)
        @request = nil unless instance_variable_defined?(:@request)
        @path = nil unless instance_variable_defined?(:@path)
        @portion = nil unless instance_variable_defined?(:@portion)
    end
    

    def initialize(hashMap, pageContext)
        super()
        jfields_admin_taghelpers_UserHelper
        @hashMap = hashMap
        @pageContext = pageContext
        @request = pageContext.getRequest()
        @path = ::Org::Allbinary::Globals::URLGLOBALS.getMainPath() + ::Org::Allbinary::Globals::FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH
        @portion = ::Org::Allbinary::Business::Installer::Portion.new(hashMap)
    end
    

    def delete()
        begin
            requestHashMap = ::Org::Allbinary::Logic::Communication::Http::Request::RequestParams.new(@request).toHashMap()
            userName = ::Org::Allbinary::Business::User::Username::UserName.new(requestHashMap)
            ::Org::Allbinary::DataPackage::Tables::User::UserEntityFactory.getInstance().deleteWhere(::Org::Allbinary::Business::User::UserData::USERNAME, userName.get())
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("Successfully Removed the user with ")
            stringBuffer.append(::Org::Allbinary::Business::User::UserData::USERNAME)
            stringBuffer.append("=")
            stringBuffer.append(userName.get())
            stringBuffer.append(" from to the user table")
            success = stringBuffer.to_s
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "delete()")
            end
            return success
        rescue StandardError => e
            error = "Failed to remove user with " + (::Org::Allbinary::Business::User::UserData::USERNAME).to_s + " from User table"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "delete()", e)
            end
            return error
        end
    end
    java_overload :delete, 0
    

    # throws Exception
    def insert()
        begin
            userInterface = ::Org::Allbinary::Business::User::NewUserFactory.getInstance(@request, @hashMap)
            enable = @hashMap.get(::Org::Allbinary::Business::Entry::EntryData.getInstance().ENABLE)
            if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(enable)
                userInterface.setEnable(enable)
            end
            values = userInterface.toVector()
            ::Org::Allbinary::DataPackage::Tables::User::UserEntityFactory.getInstance().insert(values)
            success = "New User Successfully added to the Users Table"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "add()")
            end
            return success
        rescue StandardError => e
            error = "Failed to add User"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "add()", e)
            end
            return error
        end
    end
    java_overload :insert, 0
    

    def update()
        begin
            user = ::Org::Allbinary::Business::User::NewUserFactory.getInstance(@request, @hashMap)
            values = user.toHashMap()
            ::Org::Allbinary::DataPackage::Tables::User::UserEntityFactory.getInstance().update(user.getUserName(), values)
            success = "New User Successfully added to the Users Table"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "update()")
            end
            return success
        rescue StandardError => e
            error = "Failed to add User"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "update()", e)
            end
            return error
        end
    end
    java_overload :update, 0
    

    def drop()
        begin
            success = ::Org::Allbinary::DataPackage::Tables::User::UserEntityFactory.getInstance().dropTable()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPER)
                @logUtil.putF(success, self, @commonStrings.DROP)
            end
            return success
        rescue StandardError => e
            error = "Failed to drop user table"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.DROP, e)
            end
            return error
        end
    end
    java_overload :drop, 0
    

    def create()
        begin
            success = ::Org::Allbinary::DataPackage::Tables::User::UserEntityFactory.getInstance().createTable()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPER)
                @logUtil.putF(success, self, "create()")
            end
            return success
        rescue StandardError => e
            error = "Failed to create user table"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "create()", e)
            end
            return error
        end
    end
    java_overload :create, 0
    

    def restore()
        begin
            success = "Restore Successful"
            result = ::Org::Allbinary::Logic::Communication::Sql::AbSqlTableUtil.getInstance().restoreTable(::Org::Allbinary::DataPackage::Tables::User::UserEntityFactory.getInstance(), @portion)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "restore()")
            end
            return result
        rescue StandardError => e
            error = "Failed to restore backup"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "restore()", e)
            end
            return error
        end
    end
    java_overload :restore, 0
    

    def backup()
        begin
            success = "Restore Successful"
            result = ::Org::Allbinary::Logic::Communication::Sql::AbSqlTableUtil.getInstance().backupTable(::Org::Allbinary::DataPackage::Tables::User::UserEntityFactory.getInstance())
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPER)
                @logUtil.putF(success, self, "backup()")
            end
            return result
        rescue StandardError => e
            error = "Failed to make backup"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "backup()", e)
            end
            return error
        end
    end
    java_overload :backup, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Installer; autoload :Portion, "org/allbinary/business/installer/Portion" unless const_defined?(:Portion, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :NewUserFactory, "org/allbinary/business/user/NewUserFactory" unless const_defined?(:NewUserFactory, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserData, "org/allbinary/business/user/UserData" unless const_defined?(:UserData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserInterface, "org/allbinary/business/user/UserInterface" unless const_defined?(:UserInterface, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Username; autoload :UserName, "org/allbinary/business/user/username/UserName" unless const_defined?(:UserName, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; autoload :UserEntityFactory, "org/allbinary/data/tables/user/UserEntityFactory" unless const_defined?(:UserEntityFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :FREEBLISKET_PATH_GLOBALS, "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS" unless const_defined?(:FREEBLISKET_PATH_GLOBALS, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :RequestParams, "org/allbinary/logic/communication/http/request/RequestParams" unless const_defined?(:RequestParams, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Sql; autoload :AbSqlTableUtil, "org/allbinary/logic/communication/sql/AbSqlTableUtil" unless const_defined?(:AbSqlTableUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

