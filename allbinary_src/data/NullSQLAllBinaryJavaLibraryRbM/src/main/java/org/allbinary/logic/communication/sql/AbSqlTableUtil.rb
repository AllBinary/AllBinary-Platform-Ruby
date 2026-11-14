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

class AbSqlTableUtil
    attr_accessor :TABLE_LABEL, :stringUtil, :commonStrings, :commonSeps, :sqlStrings

    def initialize_fields
        @TABLE_LABEL = "Table: "
        @stringUtil = StringUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @commonSeps = CommonSeps.getInstance()
        @sqlStrings = SqlStrings.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return AbSqlTableUtil.instance
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
        stringBuffer = StringMaker.new()
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

autoload :Portion, "org/allbinary/business/installer/Portion"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :AbSqlTable, "org/allbinary/logic/communication/sql/AbSqlTable"
autoload :SqlStrings, "org/allbinary/logic/communication/sql/SqlStrings"

begin
    AbSqlTableUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

