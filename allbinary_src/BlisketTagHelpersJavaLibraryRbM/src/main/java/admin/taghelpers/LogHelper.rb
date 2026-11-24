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

class LogHelper < BasicTable
    attr_accessor :logUtil, :portion

    def jfields_admin_taghelpers_LogHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @portion = nil unless instance_variable_defined?(:@portion)
    end
    

    def initialize(hashMap, pageContext)
        super()
        jfields_admin_taghelpers_LogHelper
        @portion = ::Org::Allbinary::Business::Installer::Portion.new(hashMap)
    end
    

    def drop()
        begin
            return ::Org::Allbinary::DataPackage::Tables::Log::LogTableEntityFactory.getInstance().getLogTableEntityInstance().dropTable()
        rescue StandardError => e
            error = "Failed to drop log table"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.DROP, e)
            end
            return error
        end
    end
    java_overload :drop, 0
    

    def create()
        begin
            return ::Org::Allbinary::DataPackage::Tables::Log::LogTableEntityFactory.getInstance().getLogTableEntityInstance().createTable()
        rescue StandardError => e
            error = "Failed to create new log table"
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
            logTableEntity = ::Org::Allbinary::DataPackage::Tables::Log::LogTableEntityFactory.getInstance().getLogTableEntityInstance()
            result = ::Org::Allbinary::Logic::Communication::Sql::AbSqlTableUtil.getInstance().restoreTable(logTableEntity, @portion)
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
            result = ::Org::Allbinary::Logic::Communication::Sql::AbSqlTableUtil.getInstance().backupTable(::Org::Allbinary::DataPackage::Tables::Log::LogTableEntityFactory.getInstance().getLogTableEntityInstance())
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
module ::Org; module Allbinary; module DataPackage; module Tables; module Log; autoload :LogTableEntity, "org/allbinary/data/tables/log/LogTableEntity" unless const_defined?(:LogTableEntity, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module Log; autoload :LogTableEntityFactory, "org/allbinary/data/tables/log/LogTableEntityFactory" unless const_defined?(:LogTableEntityFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Sql; autoload :AbSqlTableUtil, "org/allbinary/logic/communication/sql/AbSqlTableUtil" unless const_defined?(:AbSqlTableUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

