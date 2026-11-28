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
require "java/lang/JavaString"
# require "java/sql/ResultSet"
# require "java/sql/ResultSetMetaData"

module ::Org; module Allbinary; module Logic; module Communication; module Sql

class AbSqlTableUtil
    attr_accessor :logUtil, :EXTENSION, :END, :SAVING_BACKUP_PATH, :FILE_LABEL, :METHOD_RESTORE_TABLE, :METHOD_BACKUP_TABLE, :METHOD_BACKUP_FILE, :METHOD_GET_OUTPUT_STREAM, :TABLE_CREATION_SUCCESS, :DROPPED_SUCCESS, :SAVING, :APPENDING, :TABLE_LABEL, :BACKUP_SUCCESS, :ERROR_CREATING, :TOTAL_LABEL, :SECTION_LABEL, :DASH, :PORTION_RESTORED, :specialCharArray, :NEW_LINE, :stringUtil, :commonStrings, :commonSeps, :sqlStrings

    def jfields_org_allbinary_logic_communication_sql_AbSqlTableUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @EXTENSION = ".adb"
        @END = "')\n"
        @SAVING_BACKUP_PATH = "Saving Backup: Path: "
        @FILE_LABEL = " File: "
        @METHOD_RESTORE_TABLE = "restoreTable()"
        @METHOD_BACKUP_TABLE = "backupTable()"
        @METHOD_BACKUP_FILE = "backupFile()"
        @METHOD_GET_OUTPUT_STREAM = "getOutputStream()"
        @TABLE_CREATION_SUCCESS = "Table Creation Successful: "
        @DROPPED_SUCCESS = " Dropped Successfully"
        @SAVING = "Saving: "
        @APPENDING = "Appending: "
        @TABLE_LABEL = "Table: "
        @BACKUP_SUCCESS = " Backup Success"
        @ERROR_CREATING = "Error Creating: "
        @TOTAL_LABEL = " Total: "
        @SECTION_LABEL = " Section: "
        @DASH = " - "
        @PORTION_RESTORED = " Portion Restored"
        @specialCharArray = ["\n", "\f", "\r"]
        @NEW_LINE = "\\n"
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
    

    def getOutputStream(backupPath, tableName)
        java_monitor.synchronize do
        begin
            fileName = tableName + @EXTENSION
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@SAVING + tableName, self, @METHOD_GET_OUTPUT_STREAM)
            end
            backupFilePath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(backupPath, fileName)
            backupFile = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(backupFilePath)
            if backupFile.exists()
                self.backupFile(backupFilePath, backupPath, tableName)
                backupFile.delete()
            end
            backupFile.createNewFile()
            outputStream = ::Org::Allbinary::Logic::Io::AbFileOutputStream.new(backupFile)
            return outputStream
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put("Create File", self, @METHOD_GET_OUTPUT_STREAM, e)
            end
            return nil
        end
        end
    end
    

    def backupFile(path, backupPath, tableName)
        java_monitor.synchronize do
        begin
            calendar = ::Java::Util::Calendar.getInstance()
            timeLong = calendar.getTimeInMillis()
            time = timeLong.to_s
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            fileName = tableName + @EXTENSION
            stringBuffer.append(backupPath)
            stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
            stringBuffer.append(time)
            backupAbPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(stringBuffer.to_s)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(@SAVING_BACKUP_PATH)
                stringBuffer.append(backupAbPath.toFileSystemString())
                stringBuffer.append(@FILE_LABEL)
                stringBuffer.append(fileName)
                @logUtil.putF(stringBuffer.to_s, self, @METHOD_BACKUP_FILE)
            end
            ::Org::Allbinary::Logic::Io::FilePackage::Directory::Directory.create(backupAbPath)
            backupFileBak = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(backupAbPath.toFileSystemString())
            backupFileBak.createNewFile()
            ::Org::Allbinary::Logic::Io::FilePackage::FileUtil.getInstance().copy(path, backupAbPath)
            return true
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @METHOD_BACKUP_FILE, e)
            end
            return false
        end
        end
    end
    

    def convertNewLines(value)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        index = 0
        lastIndex = 0
        while index < value.length
            index = (value.index(@specialCharArray[0], lastIndex) || -1)
            if index != -1
                nextLine = value[lastIndex...index - 1]
                stringBuffer.append(nextLine)
                stringBuffer.append(@NEW_LINE)
                lastIndex = index + 1
            else
                break
            end
        end
        if lastIndex < value.length
            stringBuffer.append(value[lastIndex...value.length])
        end
        return stringBuffer.to_s
    end
    

    def backupTable(abSqlTable)
        java_monitor.synchronize do
        tableName = abSqlTable.getTableName()
        begin
            count = 0
            sqlStatement = (@sqlStrings.SELECT_ALL_FROM).to_s + tableName
            path = ::Org::Allbinary::Globals::URLGLOBALS.getMainPath() + ::Org::Allbinary::Globals::PATH_GLOBALS.getInstance().BACKUP_PATH
            if !::Org::Allbinary::Logic::Io::FilePackage::Directory::Directory.create(::Org::Allbinary::Logic::Io::Path::AbPath.new(path))
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF(@ERROR_CREATING + (path).to_s, self, @METHOD_BACKUP_TABLE)
                end
            end
            rset = abSqlTable.executeSQLStatement(sqlStatement)
            rsmd = rset.getMetaData()
            colNum = rsmd.getColumnCount()
            _QUERY_START = String.new().append(@sqlStrings.INSERT_INTO).append(tableName).append(@sqlStrings.VALUES).to_s
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            outputStream = self.getOutputStream(path, tableName)
            while rset.next_()
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(_QUERY_START)
                (1...colNum).each do |i|
                    value = rset.getString(i)
                    stringBuffer.append(self.convertNewLines(value))
                    stringBuffer.append(@sqlStrings.SINGLE_QUOTE_COMMA_SEP)
                end
                stringBuffer.append(rset.getString(colNum))
                stringBuffer.append(@END)
                sqlStatementLine = stringBuffer.to_s
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF(@APPENDING + sqlStatementLine, self, @METHOD_BACKUP_TABLE)
                end
                outputStream.write(sqlStatementLine.bytes)
            end
            ::Org::Allbinary::Logic::Io::StreamUtil.getInstance().close(outputStream)
            return @TABLE_LABEL + tableName + @BACKUP_SUCCESS
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put("Backup Table Failed\nSQL Statement", self, @METHOD_BACKUP_TABLE, e)
            end
            return @TABLE_LABEL + tableName + " Backup Failed"
        end
        end
    end
    

    def restoreTable(abSqlTable, portion)
        java_monitor.synchronize do
        tableName = abSqlTable.getTableName()
        begin
            path = ::Org::Allbinary::Globals::URLGLOBALS.getMainPath() + ::Org::Allbinary::Globals::PATH_GLOBALS.getInstance().BACKUP_PATH
            current = portion.getCurrent().to_i
            if current == 0
                if ::Org::Allbinary::Logic::Io::FilePackage::Directory::Directory.create(::Org::Allbinary::Logic::Io::Path::AbPath.new(path))
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                        @logUtil.putF(@ERROR_CREATING + (path).to_s, self, @METHOD_RESTORE_TABLE)
                    end
                end
            end
            backupFile = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(path, tableName + @EXTENSION)
            bufferedLineReader = ::Org::Allbinary::Logic::Io::BufferedLineReader.new(backupFile)
            size = bufferedLineReader.getSize()
            section = size / portion.getTotal().to_i + 1
            start = section * current
            end_ = start + section
            if end_ > size
                end_ = size
            end
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append(@TOTAL_LABEL)
            stringBuffer.append(size)
            stringBuffer.append(@SECTION_LABEL)
            stringBuffer.append(start)
            stringBuffer.append(@DASH)
            stringBuffer.append(end_)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(stringBuffer.to_s, self, @METHOD_RESTORE_TABLE)
            end
            bufferedLineReader.readUpToLines(start)
            line = @stringUtil.EMPTY_STRING
            while bufferedLineReader.getCurrent() < end_ && bufferedLineReader.ready()
                line = bufferedLineReader.readLine()
                if line.length > 1
                    abSqlTable.executeSQLStatement(line)
                end
            end
            stringBuffer.append(@commonSeps.SPACE)
            stringBuffer.append(@TABLE_LABEL)
            stringBuffer.append(tableName)
            stringBuffer.append(@PORTION_RESTORED)
            return stringBuffer.to_s
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put("Restore Table Failed\nSQL Statement", self, @METHOD_RESTORE_TABLE, e)
            end
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append(@TABLE_LABEL)
            stringBuffer.append(tableName)
            stringBuffer.append(" Restoration Failed")
            return stringBuffer.to_s
        end
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

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Java; module Util; autoload :Calendar, "java/util/Calendar" unless const_defined?(:Calendar, false); end; end
module ::Org; module Allbinary; module Business; module Installer; autoload :Portion, "org/allbinary/business/installer/Portion" unless const_defined?(:Portion, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbFileOutputStream, "org/allbinary/logic/io/AbFileOutputStream" unless const_defined?(:AbFileOutputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :BufferedLineReader, "org/allbinary/logic/io/BufferedLineReader" unless const_defined?(:BufferedLineReader, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :StreamUtil, "org/allbinary/logic/io/StreamUtil" unless const_defined?(:StreamUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileUtil, "org/allbinary/logic/io/file/FileUtil" unless const_defined?(:FileUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Directory; autoload :Directory, "org/allbinary/logic/io/file/directory/Directory" unless const_defined?(:Directory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :PATH_GLOBALS, "org/allbinary/globals/PATH_GLOBALS" unless const_defined?(:PATH_GLOBALS, false); end; end; end
module ::Java; module Io; autoload :OutputStream, "java/io/OutputStream" unless const_defined?(:OutputStream, false); end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :AbSqlTable, "org/allbinary/logic/communication/sql/AbSqlTable" unless const_defined?(:AbSqlTable, false)
autoload :SqlStrings, "org/allbinary/logic/communication/sql/SqlStrings" unless const_defined?(:SqlStrings, false)

begin
    AbSqlTableUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

