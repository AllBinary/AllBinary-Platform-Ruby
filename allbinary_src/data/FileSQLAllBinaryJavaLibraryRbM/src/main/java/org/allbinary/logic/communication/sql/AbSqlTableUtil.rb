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
# require "java/sql/ResultSet"
# require "java/sql/ResultSetMetaData"
# require "java/io/OutputStream"

class AbSqlTableUtil
    attr_accessor :logUtil, :EXTENSION, :END, :SAVING_BACKUP_PATH, :FILE_LABEL, :METHOD_RESTORE_TABLE, :METHOD_BACKUP_TABLE, :METHOD_BACKUP_FILE, :METHOD_GET_OUTPUT_STREAM, :TABLE_CREATION_SUCCESS, :DROPPED_SUCCESS, :SAVING, :APPENDING, :TABLE_LABEL, :BACKUP_SUCCESS, :ERROR_CREATING, :TOTAL_LABEL, :SECTION_LABEL, :DASH, :PORTION_RESTORED, :specialCharArray, :NEW_LINE, :stringUtil, :commonStrings, :commonSeps, :sqlStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
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
    

    def getOutputStream(backupPath, tableName)
        java_monitor.synchronize do
        begin
            fileName = tableName + @EXTENSION
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@SAVING + tableName, self, @METHOD_GET_OUTPUT_STREAM)
            end
            backupFilePath = AbPath.new(backupPath, fileName)
            backupFile = AbFile.createAbFile(backupFilePath)
            if backupFile.exists()
                self.backupFile(backupFilePath, backupPath, tableName)
                backupFile.delete()
            end
            backupFile.createNewFile()
            outputStream = AbFileOutputStream.new(backupFile)
            return outputStream
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put("Create File", self, @METHOD_GET_OUTPUT_STREAM, e)
            end
            return nil
        end
        end
    end
    

    def backupFile(path, backupPath, tableName)
        java_monitor.synchronize do
        begin
            calendar = Calendar.getInstance()
            timeLong = calendar.getTimeInMillis()
            time = timeLong.to_s
            stringBuffer = StringMaker.new()
            fileName = tableName + @EXTENSION
            stringBuffer.append(backupPath)
            stringBuffer.append(AbPathData.getInstance().SEPARATOR)
            stringBuffer.append(time)
            backupAbPath = AbPath.new(stringBuffer.to_s)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(@SAVING_BACKUP_PATH)
                stringBuffer.append(backupAbPath.toFileSystemString())
                stringBuffer.append(@FILE_LABEL)
                stringBuffer.append(fileName)
                @logUtil.putF(stringBuffer.to_s, self, @METHOD_BACKUP_FILE)
            end
            Directory.create(backupAbPath)
            backupFileBak = AbFile.createAbFile(backupAbPath.toFileSystemString())
            backupFileBak.createNewFile()
            FileUtil.getInstance().copy(path, backupAbPath)
            return true
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @METHOD_BACKUP_FILE, e)
            end
            return false
        end
        end
    end
    

    def convertNewLines(value)
        stringBuffer = StringMaker.new()
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
            path = org.allbinary.globals.URLGLOBALS.getMainPath() + PATH_GLOBALS.getInstance().BACKUP_PATH
            if !Directory.create(AbPath.new(path))
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF(@ERROR_CREATING + (path).to_s, self, @METHOD_BACKUP_TABLE)
                end
            end
            rset = abSqlTable.executeSQLStatement(sqlStatement)
            rsmd = rset.getMetaData()
            colNum = rsmd.getColumnCount()
            _QUERY_START = String.new().append(@sqlStrings.INSERT_INTO).append(tableName).append(@sqlStrings.VALUES).to_s
            stringBuffer = StringMaker.new()
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
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF(@APPENDING + sqlStatementLine, self, @METHOD_BACKUP_TABLE)
                end
                outputStream.write(sqlStatementLine.bytes)
            end
            StreamUtil.getInstance().close(outputStream)
            return @TABLE_LABEL + tableName + @BACKUP_SUCCESS
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
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
            path = org.allbinary.globals.URLGLOBALS.getMainPath() + PATH_GLOBALS.getInstance().BACKUP_PATH
            current = portion.getCurrent().to_i
            if current == 0
                if Directory.create(AbPath.new(path))
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                        @logUtil.putF(@ERROR_CREATING + (path).to_s, self, @METHOD_RESTORE_TABLE)
                    end
                end
            end
            backupFile = AbFile.createAbFile(path, tableName + @EXTENSION)
            bufferedLineReader = BufferedLineReader.new(backupFile)
            size = bufferedLineReader.getSize()
            section = size / portion.getTotal().to_i + 1
            start = section * current
            end_ = start + section
            if end_ > size
                end_ = size
            end
            stringBuffer = StringMaker.new()
            stringBuffer.append(@TOTAL_LABEL)
            stringBuffer.append(size)
            stringBuffer.append(@SECTION_LABEL)
            stringBuffer.append(start)
            stringBuffer.append(@DASH)
            stringBuffer.append(end_)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(stringBuffer.to_s, self, @METHOD_RESTORE_TABLE)
            end
            bufferedLineReader.readUpToLines(start)
            line = @stringUtil.EMPTY_STRING
            while bufferedLineReader.getCurrent() < end_ && ((line = bufferedLineReader.readLine())) != nil
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
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put("Restore Table Failed\nSQL Statement", self, @METHOD_RESTORE_TABLE, e)
            end
            stringBuffer = StringMaker.new()
            stringBuffer.append(@TABLE_LABEL)
            stringBuffer.append(tableName)
            stringBuffer.append(" Restoration Failed")
            return stringBuffer.to_s
        end
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/string/StringMaker"
require "java/util/Calendar"
require "org/allbinary/business/installer/Portion"
require "org/allbinary/logic/io/AbFileOutputStream"
require "org/allbinary/logic/io/BufferedLineReader"
require "org/allbinary/logic/io/StreamUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/FileUtil"
require "org/allbinary/logic/io/file/directory/Directory"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/globals/PATH_GLOBALS"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/communication/sql/AbSqlTable"
require "org/allbinary/logic/communication/sql/SqlStrings"

class AbSqlTableUtil
    @@instance = AbSqlTableUtil.new()
end

