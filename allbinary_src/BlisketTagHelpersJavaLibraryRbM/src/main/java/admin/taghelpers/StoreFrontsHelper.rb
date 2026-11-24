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
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/BasicTable"

module ::Admin; module Taghelpers

class StoreFrontsHelper < BasicTable
    attr_accessor :logUtil, :portion, :commonPhoneStrings

    def jfields_admin_taghelpers_StoreFrontsHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @portion = nil unless instance_variable_defined?(:@portion)
        @commonPhoneStrings = ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance()
    end
    

    def initialize(hashMap, pageContext)
        super()
        jfields_admin_taghelpers_StoreFrontsHelper
        @portion = ::Org::Allbinary::Business::Installer::Portion.new(hashMap)
    end
    

    def drop()
        begin
            success = ::Org::Allbinary::DataPackage::Tables::Context::ModulePackage::Storefronts::StoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance().dropTable()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, @commonStrings.DROP)
            end
            return success
        rescue StandardError => e
            error = "Failed to drop storefronts table"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.DROP, e)
            end
            return error
        end
    end
    java_overload :drop, 0
    

    def create()
        begin
            success = ::Org::Allbinary::DataPackage::Tables::Context::ModulePackage::Storefronts::StoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance().createTable()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "create()")
            end
            return success
        rescue StandardError => e
            error = "Failed to create new storefronts table"
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
            result = ::Org::Allbinary::Logic::Communication::Sql::AbSqlTableUtil.getInstance().restoreTable(::Org::Allbinary::DataPackage::Tables::Context::ModulePackage::Storefronts::StoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance(), @portion)
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
            result = ::Org::Allbinary::Logic::Communication::Sql::AbSqlTableUtil.getInstance().backupTable(::Org::Allbinary::DataPackage::Tables::Context::ModulePackage::Storefronts::StoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance())
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
    

    def generateSelect()
        begin
            success = ::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE
            storeNamesVector = ::Org::Allbinary::DataPackage::Tables::Context::ModulePackage::Storefronts::StoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance().getStoreFrontNames()
            storeSelect = ::Org::Allbinary::Logic::Visual::Dhtml::Html::Select::HtmlSelect.new(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, @commonPhoneStrings.ONE, ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().SELECTSTORENAME, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
            storeSelect.addAttribute(StoreFrontsHelper::CLASS, StoreFrontsHelper::TEXT)
            size = storeNamesVector.size()
            (0...size).each do |index|
                storeName = storeNamesVector.get(index)
                storeSelect.addOption(storeName)
            end
            success += (storeSelect).to_s
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "generateSelect()")
            end
            return success
        rescue StandardError => e
            error = "Failed to generate storefronts select"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "generateSelect()", e)
            end
            return error
        end
    end
    java_overload :generateSelect, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:CLASS, "class")
        const_set(:TEXT, "text")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "StoreFrontsHelper"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:CLASS, :TEXT].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Installer; autoload :Portion, "org/allbinary/business/installer/Portion" unless const_defined?(:Portion, false); end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module Context; module ModulePackage; module Storefronts; autoload :StoreFrontsEntityFactory, "org/allbinary/data/tables/context/module/storefronts/StoreFrontsEntityFactory" unless const_defined?(:StoreFrontsEntityFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Sql; autoload :AbSqlTableUtil, "org/allbinary/logic/communication/sql/AbSqlTableUtil" unless const_defined?(:AbSqlTableUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Html; module Select; autoload :HtmlSelect, "org/allbinary/logic/visual/dhtml/html/select/HtmlSelect" unless const_defined?(:HtmlSelect, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

begin
    StoreFrontsHelper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end

