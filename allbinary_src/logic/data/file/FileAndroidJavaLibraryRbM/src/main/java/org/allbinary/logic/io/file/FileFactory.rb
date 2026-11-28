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

# require "java/io/FileNotFoundException"

module ::Org; module Allbinary; module Logic; module Io; module FilePackage

class FileFactory
    attr_accessor :context

    def jfields_org_allbinary_logic_io_file_FileFactory
        @context = nil unless instance_variable_defined?(:@context)
    end
    

    def initialize(context)
        jfields_org_allbinary_logic_io_file_FileFactory
        @context = context
    end
    

    def self.getInstance()
        return SINGLETON
    end
    

    # throws Exception
    def isFile(path)
        begin
            @context.openFileInput(path)
            return true
        rescue FileNotFoundException => e
            return false
        end
    end
    

    def getContext()
        return @context
    end
    

    # throws Exception
    def getFile(filePath)
        return AbFile.createAbFileFromRawPath(filePath)
    end
    

    # throws Exception
    def getInstance(file, childFilePath)
        return AbFile.createAbFileWithChild(file, childFilePath)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, FileFactory.new(::Org::Allbinary::DataPackage::Resource::ResourceUtil.getInstance().getContext()))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "FileFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

module ::Android; module Content; autoload :Context, "android/content/Context" unless const_defined?(:Context, false); end; end
module ::Org; module Allbinary; module DataPackage; module Resource; autoload :ResourceUtil, "org/allbinary/data/resource/ResourceUtil" unless const_defined?(:ResourceUtil, false); end; end; end; end
autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false)

begin
    FileFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

