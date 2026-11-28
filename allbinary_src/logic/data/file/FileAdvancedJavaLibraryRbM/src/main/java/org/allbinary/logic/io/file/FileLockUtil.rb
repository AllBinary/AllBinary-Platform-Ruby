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
# package org.allbinary.logic.io.file

# require "java/nio/channels/FileChannel"
# require "java/nio/channels/FileLock"

module ::Org; module Allbinary; module Logic; module Io; module FilePackage

class FileLockUtil
    attr_accessor :logUtil

    def jfields_org_allbinary_logic_io_file_FileLockUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_io_file_FileLockUtil
    end
    

    # throws Exception
    def getAll(vector, isReturnOnFailure)
        fileLockVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        size = vector.size()
        (0...size).each do |index|
            file = vector.get(index)
            fileLock = self.getLock(file)
            if fileLock != nil
                @logUtil.putF("File Lock Obtained: " + (file.getAbsolutePath()).to_s, self, "getAll")
                fileLockVector.add(fileLock)
            elsif isReturnOnFailure
                @logUtil.putF("Total Locks Obtained: " + (fileLockVector.size()).to_s, self, "getAll")
                return fileLockVector
            end
        end
        @logUtil.putF("Total Locks Obtained: " + (fileLockVector.size()).to_s, self, "getAll")
        return fileLockVector
    end
    

    # throws Exception
    def getAllPossible(vector)
        return self.getAll(vector, false)
    end
    

    # throws Exception
    def getAllOrNone(vector)
        fileLockVector = self.getAll(vector, true)
        if vector.size() != fileLockVector.size()
            return ::Org::Allbinary::Util::BasicArrayListD.new()
        else
            return fileLockVector
        end
    end
    

    # throws Exception
    def getLock_j1_1(file)
        begin
            return self.getLock(::Org::Allbinary::Logic::Io::AbFileOutputStream.createFromAbFileAppend(file, true))
        rescue StandardError => e
            @logUtil.put("Exception returns null", self, "getLock", e)
            return nil
        ensure
        end
    end
    

    # throws Exception
    def getLock_j1_2(fileOutputStream)
        begin
            fileLock = self.getLock(fileOutputStream.getChannel())
            return fileLock
        rescue StandardError => e
            @logUtil.put("Exception returns null", self, "getLock", e)
            return nil
        ensure
            @logUtil.putF("Finally - Closing FileOutputStream", self, "getLock")
            ::Org::Allbinary::Logic::Io::StreamUtil.getInstance().close(fileOutputStream)
        end
    end
    

    # throws Exception
    def getLock_j1_3(fileChannel)
        begin
            fileLock = fileChannel.tryLock()
            return fileLock
        rescue StandardError => e
            @logUtil.put("Exception returns null", self, "getLock", e)
            return nil
        ensure
            @logUtil.putF("Finally - Closing FileChannel", self, "getLock")
            fileChannel.close()
        end
    end

    def getLock(*java_overload_args)
        return getLock_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method getLock takes #{java_overload_args.length} arguments"
    end

    def getLock_j1(*java_overload_args)
        return getLock_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(AbFile))
        return getLock_j1_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::Io::AbFileOutputStream))
        return getLock_j1_3(*java_overload_args)
    end

    def self.instance()
        FileLockUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        FileLockUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = FileLockUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "FileLockUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbFileOutputStream, "org/allbinary/logic/io/AbFileOutputStream" unless const_defined?(:AbFileOutputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :StreamUtil, "org/allbinary/logic/io/StreamUtil" unless const_defined?(:StreamUtil, false); end; end; end; end
autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false)

begin
    FileLockUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

