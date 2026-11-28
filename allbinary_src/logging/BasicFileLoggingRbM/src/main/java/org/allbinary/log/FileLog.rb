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
require "java/lang/JavaClass"
# require "java/io/BufferedReader"
# require "java/io/BufferedWriter"
# require "java/io/File"
# require "java/io/FileReader"
# require "java/io/FileWriter"
# require "java/io/RandomAccessFile"

module ::Org; module Allbinary; module Log

class FileLog
    

    def initialize()
    end
    

    def self.createLogFile()
        java_monitor.synchronize do
        begin
            @@logFile = File.new(@@logPath, @@fileName)
            if !@@firstTime
                @@fileOut = BufferedWriter.new(FileWriter.new(@@logFile))
            else
                @@firstTime = false
                raFile = RandomAccessFile.new(@@logFile, "rw")
                raFile.seek(raFile.length())
                @@fileOut = BufferedWriter.new(FileWriter.new(raFile.getFD()))
            end
            canWrite = @@logFile.canWrite()
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
            stringMaker = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            @@logFileBak = File.new(@@logPath, stringMaker.append(@@backupFileName).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().PERIOD).appendint(@@backupIndex).to_s)
            while @@logFileBak.isFile()
                @@backupIndex += 1
                stringMaker.delete(0, stringMaker.length())
                @@logFileBak = File.new(@@logPath, stringMaker.append(@@backupFileName).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().PERIOD).appendint(@@backupIndex).to_s)
            end
            line = ""
            tmpOut = BufferedWriter.new(FileWriter.new(@@logFileBak))
            tmpIn = BufferedReader.new(FileReader.new(@@logFile))
            while tmpIn.ready()
                line = tmpIn.readLine()
                tmpOut.write(line, 0, line.length)
                tmpOut.newLine()
            end
            tmpOut.flush()
            tmpOut.close()
            tmpIn.close()
            @@logFile.delete()
            return true
        rescue StandardError => e
            puts("Error Creating Backup: " + (e).to_s)
            return false
        end
        end
    end
    

    def self.put_j3_1(specialMessage, anyType, functionName)
        java_monitor.synchronize do
        return FileLog.put(specialMessage, anyType, functionName, nil)
        end
    end
    

    def self.put_j4_1(specialMessage, anyType, functionName, exception)
        java_monitor.synchronize do
        begin
            if @@firstTime == true
                FileLog.createLogFileBackup()
                if FileLog.createLogFile() == false
                    return String.new("Log File Creation Error")
                end
            end
            length = @@logFile.length()
            if length > @@logLength
                if !FileLog.createLogFileBackup() || FileLog.createLogFile() == false
                    return String.new("Couldn't Create a Backup file")
                end
            end
            className = String.new(@@stringUtil.NULL_STRING)
            if functionName == nil
                functionName = String.new(@@stringUtil.NULL_STRING)
            end
            if specialMessage == nil
                specialMessage = String.new(@@stringUtil.NULL_STRING)
            end
            if anyType.class.java_name != nil
                className = String.new(anyType.class.java_name)
            end
            message = ::Org::Allbinary::Logic::Communication::Log::LogFormatUtil.getInstance().get(className, functionName, specialMessage, exception)
            @@fileOut.write(message, 0, message.length)
            @@fileOut.newLine()
            @@fileOut.flush()
            return String.new((ORG_ALLBINARY).to_s + message)
        rescue StandardError => e
            return String.new("Error: " + (e).to_s)
        end
        end
    end
    

    def self.put_j3_2(specialMessage, className, functionName)
        java_monitor.synchronize do
        return FileLog.put(specialMessage, className, functionName, nil)
        end
    end
    

    def self.put_j4_2(specialMessage, className, functionName, exception)
        java_monitor.synchronize do
        begin
            if @@firstTime == true
                FileLog.createLogFileBackup()
                if FileLog.createLogFile() == false
                    return String.new("Log File Creation Error")
                end
            end
            length = @@logFile.length()
            if length > @@logLength
                if !FileLog.createLogFileBackup() || FileLog.createLogFile() == false
                    return String.new("Couldn't Create a Backup file")
                end
            end
            if functionName == nil
                functionName = String.new(@@stringUtil.NULL_STRING)
            end
            if specialMessage == nil
                specialMessage = String.new(@@stringUtil.NULL_STRING)
            end
            message = ::Org::Allbinary::Logic::Communication::Log::LogFormatUtil.getInstance().get(className, functionName, specialMessage, exception)
            @@fileOut.write(message, 0, message.length)
            @@fileOut.newLine()
            @@fileOut.flush()
            return String.new((ORG_ALLBINARY).to_s + message)
        rescue StandardError => e
            return String.new("Error: " + (e).to_s)
        end
        end
    end

    def self.put(*java_overload_args)
        return put_j3(*java_overload_args) if java_overload_args.length == 3
        return put_j4(*java_overload_args) if java_overload_args.length == 4
        raise ArgumentError, "No method put takes #{java_overload_args.length} arguments"
    end

    def self.put_j3(*java_overload_args)
        return put_j3_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::String)) && (java_overload_args[2].nil? || java_overload_args[2].is_a?(::String))
        return put_j3_1(*java_overload_args)
    end

    def self.put_j4(*java_overload_args)
        return put_j4_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::String)) && (java_overload_args[2].nil? || java_overload_args[2].is_a?(::String)) && !(java_overload_args[3].is_a?(::Numeric) || java_overload_args[3] == true || java_overload_args[3] == false || java_overload_args[3].is_a?(::Array))
        return put_j4_1(*java_overload_args)
    end
    

    def self.getFilePath()
        return @@logPath + @@fileName
    end

    def self.stringUtil()
        FileLog.java_static_fields unless @java_static_fields_started
        return defined?(@@stringUtil) ? @@stringUtil : nil
    end

    def self.stringUtil=(value)
        FileLog.java_static_fields unless @java_static_fields_started
        @@stringUtil = value
    end

    def self.logLength()
        FileLog.java_static_fields unless @java_static_fields_started
        return defined?(@@logLength) ? @@logLength : nil
    end

    def self.logLength=(value)
        FileLog.java_static_fields unless @java_static_fields_started
        @@logLength = value
    end

    def self.logPath()
        FileLog.java_static_fields unless @java_static_fields_started
        return defined?(@@logPath) ? @@logPath : nil
    end

    def self.logPath=(value)
        FileLog.java_static_fields unless @java_static_fields_started
        @@logPath = value
    end

    def self.extension()
        FileLog.java_static_fields unless @java_static_fields_started
        return defined?(@@extension) ? @@extension : nil
    end

    def self.extension=(value)
        FileLog.java_static_fields unless @java_static_fields_started
        @@extension = value
    end

    def self.fileName()
        FileLog.java_static_fields unless @java_static_fields_started
        return defined?(@@fileName) ? @@fileName : nil
    end

    def self.fileName=(value)
        FileLog.java_static_fields unless @java_static_fields_started
        @@fileName = value
    end

    def self.backupFileName()
        FileLog.java_static_fields unless @java_static_fields_started
        return defined?(@@backupFileName) ? @@backupFileName : nil
    end

    def self.backupFileName=(value)
        FileLog.java_static_fields unless @java_static_fields_started
        @@backupFileName = value
    end

    def self.firstTime()
        FileLog.java_static_fields unless @java_static_fields_started
        return defined?(@@firstTime) ? @@firstTime : nil
    end

    def self.firstTime=(value)
        FileLog.java_static_fields unless @java_static_fields_started
        @@firstTime = value
    end

    def self.logFile()
        FileLog.java_static_fields unless @java_static_fields_started
        return defined?(@@logFile) ? @@logFile : nil
    end

    def self.logFile=(value)
        FileLog.java_static_fields unless @java_static_fields_started
        @@logFile = value
    end

    def self.logFileBak()
        FileLog.java_static_fields unless @java_static_fields_started
        return defined?(@@logFileBak) ? @@logFileBak : nil
    end

    def self.logFileBak=(value)
        FileLog.java_static_fields unless @java_static_fields_started
        @@logFileBak = value
    end

    def self.fileOut()
        FileLog.java_static_fields unless @java_static_fields_started
        return defined?(@@fileOut) ? @@fileOut : nil
    end

    def self.fileOut=(value)
        FileLog.java_static_fields unless @java_static_fields_started
        @@fileOut = value
    end

    def self.backupIndex()
        FileLog.java_static_fields unless @java_static_fields_started
        return defined?(@@backupIndex) ? @@backupIndex : nil
    end

    def self.backupIndex=(value)
        FileLog.java_static_fields unless @java_static_fields_started
        @@backupIndex = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        @@logLength = 33000000
        @@logPath = "g:\\log\\"
        const_set(:ORG_ALLBINARY, "org.allbinary: ")
        @@firstTime = true
        begin
            @@stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
            @@extension = String.new("dat")
            @@fileName = String.new("log." + (@@extension).to_s)
            @@backupFileName = @@fileName.concat(".bak")
            @@logFile = File.new(@@logPath, @@fileName)
            @@logFileBak = nil
            @@fileOut = nil
            @@backupIndex = 0
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "FileLog"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:ORG_ALLBINARY].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogFormatUtil, "org/allbinary/logic/communication/log/LogFormatUtil" unless const_defined?(:LogFormatUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
require "java/lang/System"

begin
    FileLog.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

