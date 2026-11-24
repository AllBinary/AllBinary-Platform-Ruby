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
# package org.allbinary.logic.io

# require "java/io/BufferedWriter"
# require "java/io/FileWriter"

module ::Org; module Allbinary; module Logic; module Io

class BufferedWriterUtil
    attr_accessor :logUtil, :commonStrings, :commonLabels, :REMOVING_OLD

    def jfields_org_allbinary_logic_io_BufferedWriterUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @commonLabels = ::Org::Allbinary::StringPackage::CommonLabels.getInstance()
        @REMOVING_OLD = "Remove old for overwriting: "
    end

    def initialize
        jfields_org_allbinary_logic_io_BufferedWriterUtil
    end
    

    def self.getInstance()
        return BufferedWriterUtil.instance
    end
    

    # throws Exception
    def overwrite_j2_1(path, data)
        abFile = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(path)
        if abFile.exists()
            @logUtil.putF(@REMOVING_OLD + path, self, @commonStrings.CREATE)
            abFile.delete()
        else
            name = ::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().removeNameFromPath(path)
            abFileDirectory = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(name)
            if abFileDirectory.exists()
            else
                stringBuilder = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                @logUtil.putF(stringBuilder.append(@commonStrings.CREATE).append(@commonLabels.COLON_SEP).append(name).to_s, self, @commonStrings.CREATE)
                result = abFileDirectory.mkdirs()
                stringBuilder.delete(0, stringBuilder.length())
                @logUtil.putF(stringBuilder.append(@commonLabels.RESULT_).appendboolean(result).to_s, self, @commonStrings.CREATE)
            end
        end
        self.write(abFile, data)
    end
    

    # throws Exception
    def overwrite_j2_2(abFile, data)
        if abFile.exists()
            @logUtil.putF(@REMOVING_OLD + (abFile.getPath()).to_s, self, @commonStrings.CREATE)
            abFile.delete()
        else
            name = ::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().removeNameFromPath(abFile.getAbsolutePath())
            abFileDirectory = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(name)
            if abFileDirectory.exists()
            else
                stringBuilder = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                @logUtil.putF(stringBuilder.append(@commonStrings.CREATE).append(@commonLabels.COLON_SEP).append(name).to_s, self, @commonStrings.CREATE)
                result = abFileDirectory.mkdirs()
                stringBuilder.delete(0, stringBuilder.length())
                @logUtil.putF(stringBuilder.append(@commonLabels.RESULT_).appendboolean(result).to_s, self, @commonStrings.CREATE)
            end
        end
        self.write(abFile, data)
    end

    def overwrite(*java_overload_args)
        return overwrite_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method overwrite takes #{java_overload_args.length} arguments"
    end

    def overwrite_j2(*java_overload_args)
        return overwrite_j2_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::String))
        return overwrite_j2_2(*java_overload_args)
    end
    

    # throws Exception
    def write(abFile, data)
        fileOut = BufferedWriter.new(FileWriter.new(::Org::Allbinary::Logic::Io::FilePackage::AbFileNativeUtil.get(abFile)))
        fileOut.write(data, 0, data.length)
        fileOut.newLine()
        fileOut.flush()
    end

    def self.instance()
        BufferedWriterUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BufferedWriterUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = BufferedWriterUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BufferedWriterUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFileNativeUtil, "org/allbinary/logic/io/file/AbFileNativeUtil" unless const_defined?(:AbFileNativeUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    BufferedWriterUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

