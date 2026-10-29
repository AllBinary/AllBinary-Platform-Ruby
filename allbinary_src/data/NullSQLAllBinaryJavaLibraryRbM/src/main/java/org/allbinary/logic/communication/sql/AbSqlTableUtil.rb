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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/business/installer/Portion"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/sql/AbSqlTable"
require "org/allbinary/logic/communication/sql/SqlStrings"

class AbSqlTableUtil
    @@instance = AbSqlTableUtil.new()
end

