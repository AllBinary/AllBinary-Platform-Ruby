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
# package org.allbinary.log

require "java/lang/Object"
# require "java/io/BufferedReader"
# require "java/io/BufferedWriter"
# require "java/io/File"
# require "java/io/FileReader"
# require "java/io/FileWriter"
# require "java/io/RandomAccessFile"

class FileLog
    

    def initialize()
    end
    

    def self.createLogFile()
        java_monitor.synchronize do
        begin
            FileLog.logFile = File.new(@@logPath, @@fileName)
            if !FileLog.firstTime
                FileLog.fileOut = BufferedWriter.new(FileWriter.new(@@logFile))
            else
                FileLog.firstTime = false
                raFile = RandomAccessFile.new(@@logFile, "rw")
                raFile.seek(raFile.length())
                FileLog.fileOut = BufferedWriter.new(FileWriter.new(raFile.getFD()))
            end
            canWrite = FileLog.logFile.canWrite()
            return canWrite
        rescue StandardError => e
            puts("Error Creating Log: " + (e).to_s)
            return false
        end
        end
    end
    

    def self.createLogFileBackup()
        java_monitor.synchronize do
        begin
            stringMaker = StringMaker.new()
            FileLog.logFileBak = File.new(@@logPath, stringMaker.append(@@backupFileName).append(CommonSeps.getInstance().PERIOD).appendint(@@backupIndex).to_s)
            while FileLog.logFileBak.isFile()
                FileLog.backupIndex += 1
                stringMaker.delete(0, stringMaker.length())
                FileLog.logFileBak = File.new(@@logPath, stringMaker.append(@@backupFileName).append(CommonSeps.getInstance().PERIOD).appendint(@@backupIndex).to_s)
            end
            line = ""
            tmpOut = BufferedWriter.new(FileWriter.new(@@logFileBak))
            tmpIn = BufferedReader.new(FileReader.new(@@logFile))
            while ((line = tmpIn.readLine())) != nil
                tmpOut.write(line, 0, line.length)
                tmpOut.newLine()
            end
            tmpOut.flush()
            tmpOut.close()
            tmpIn.close()
            FileLog.logFile.delete()
            return true
        rescue StandardError => e
            puts("Error Creating Backup: " + (e).to_s)
            return false
        end
        end
    end
    

    def self.put(specialMessage, anyType, functionName)
        java_monitor.synchronize do
        return FileLog.put(specialMessage, anyType, functionName, nil)
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def self.put(specialMessage, anyType, functionName, exception)
        java_monitor.synchronize do
        begin
            if FileLog.firstTime == true
                FileLog.createLogFileBackup()
                if FileLog.createLogFile() == false
                    return String.new("Log File Creation Error")
                end
            end
            length = FileLog.logFile.length()
            if length > FileLog.logLength
                if !(FileLog.createLogFileBackup()) || FileLog.createLogFile() == false
                    return String.new("Couldn't Create a Backup file")
                end
            end
            className = String.new(@@stringUtil.NULL_STRING)
            if functionName == nil
                functionName = String.new(FileLog.stringUtil.NULL_STRING)
            end
            if specialMessage == nil
                specialMessage = String.new(FileLog.stringUtil.NULL_STRING)
            end
            if anyType.class.name != nil
                className = String.new(anyType.class.name)
            end
            message = LogFormatUtil.getInstance().get(className, functionName, specialMessage, exception)
            FileLog.fileOut.write(message, 0, message.length)
            FileLog.fileOut.newLine()
            FileLog.fileOut.flush()
            return String.new((FileLog::ORG_ALLBINARY).to_s + message)
        rescue StandardError => e
            return String.new("Error: " + (e).to_s)
        end
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def self.put(specialMessage, className, functionName)
        java_monitor.synchronize do
        return FileLog.put(specialMessage, className, functionName, nil)
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def self.put(specialMessage, className, functionName, exception)
        java_monitor.synchronize do
        begin
            if FileLog.firstTime == true
                FileLog.createLogFileBackup()
                if FileLog.createLogFile() == false
                    return String.new("Log File Creation Error")
                end
            end
            length = FileLog.logFile.length()
            if length > FileLog.logLength
                if !(FileLog.createLogFileBackup()) || FileLog.createLogFile() == false
                    return String.new("Couldn't Create a Backup file")
                end
            end
            if functionName == nil
                functionName = String.new(FileLog.stringUtil.NULL_STRING)
            end
            if specialMessage == nil
                specialMessage = String.new(FileLog.stringUtil.NULL_STRING)
            end
            message = LogFormatUtil.getInstance().get(className, functionName, specialMessage, exception)
            FileLog.fileOut.write(message, 0, message.length)
            FileLog.fileOut.newLine()
            FileLog.fileOut.flush()
            return String.new((FileLog::ORG_ALLBINARY).to_s + message)
        rescue StandardError => e
            return String.new("Error: " + (e).to_s)
        end
        end
    end
    

    def self.getFilePath()
        return FileLog.logPath + FileLog.fileName
    end

    def self.stringUtil()
        return defined?(@@stringUtil) ? @@stringUtil : nil
    end

    def self.stringUtil=(value)
        @@stringUtil = value
    end

    def self.logLength()
        return defined?(@@logLength) ? @@logLength : nil
    end

    def self.logLength=(value)
        @@logLength = value
    end

    def self.logPath()
        return defined?(@@logPath) ? @@logPath : nil
    end

    def self.logPath=(value)
        @@logPath = value
    end

    def self.extension()
        return defined?(@@extension) ? @@extension : nil
    end

    def self.extension=(value)
        @@extension = value
    end

    def self.fileName()
        return defined?(@@fileName) ? @@fileName : nil
    end

    def self.fileName=(value)
        @@fileName = value
    end

    def self.backupFileName()
        return defined?(@@backupFileName) ? @@backupFileName : nil
    end

    def self.backupFileName=(value)
        @@backupFileName = value
    end

    def self.firstTime()
        return defined?(@@firstTime) ? @@firstTime : nil
    end

    def self.firstTime=(value)
        @@firstTime = value
    end

    def self.logFile()
        return defined?(@@logFile) ? @@logFile : nil
    end

    def self.logFile=(value)
        @@logFile = value
    end

    def self.logFileBak()
        return defined?(@@logFileBak) ? @@logFileBak : nil
    end

    def self.logFileBak=(value)
        @@logFileBak = value
    end

    def self.fileOut()
        return defined?(@@fileOut) ? @@fileOut : nil
    end

    def self.fileOut=(value)
        @@fileOut = value
    end

    def self.backupIndex()
        return defined?(@@backupIndex) ? @@backupIndex : nil
    end

    def self.backupIndex=(value)
        @@backupIndex = value
    end
end

require "org/allbinary/string/CommonSeps"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/communication/log/LogFormatUtil"
require "org/allbinary/logic/string/StringMaker"
require "java/lang/System"

class FileLog
    @@stringUtil = StringUtil.getInstance()
    @@logLength = 33000000
    @@logPath = "g:\\log\\"
    @@extension = String.new("dat")
    @@fileName = String.new("log." + (FileLog.extension).to_s)
    @@backupFileName = FileLog.fileName.concat(".bak")
    ORG_ALLBINARY = "org.allbinary: "
    @@firstTime = true
    @@logFile = File.new(FileLog.logPath, FileLog.fileName)
    @@logFileBak = nil
    @@fileOut = nil
    @@backupIndex = 0
end

