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
# package org.allbinary.logic.communication.sql

require "java/lang/Object"

module ::Org; module Allbinary; module Logic; module Communication; module Sql

class AbSqlTableUtil
    attr_accessor :TABLE_LABEL, :stringUtil, :commonStrings, :commonSeps, :sqlStrings

    def jfields_org_allbinary_logic_communication_sql_AbSqlTableUtil
        @TABLE_LABEL = "Table: "
        @stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        @sqlStrings = SqlStrings.getInstance()
    end

    def initialize
        jfields_org_allbinary_logic_communication_sql_AbSqlTableUtil
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def backupTable(abSqlTable)
        java_monitor.synchronize do
        tableName = abSqlTable.getTableName()
        return @TABLE_LABEL + tableName + " Backup Failed"
        end
    end
    

    def restoreTable(abSqlTable, portion)
        java_monitor.synchronize do
        tableName = abSqlTable.getTableName()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@TABLE_LABEL)
        stringBuffer.append(tableName)
        stringBuffer.append(" Restoration Failed")
        return stringBuffer.to_s
        end
    end

    def self.instance()
        AbSqlTableUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AbSqlTableUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AbSqlTableUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AbSqlTableUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Business; module Installer; autoload :Portion, "org/allbinary/business/installer/Portion" unless const_defined?(:Portion, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :AbSqlTable, "org/allbinary/logic/communication/sql/AbSqlTable" unless const_defined?(:AbSqlTable, false)
autoload :SqlStrings, "org/allbinary/logic/communication/sql/SqlStrings" unless const_defined?(:SqlStrings, false)

begin
    AbSqlTableUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

