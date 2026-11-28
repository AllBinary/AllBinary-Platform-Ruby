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


module ::Org; module Allbinary; module Logic; module Io; module FilePackage

class FileListFetcher
    attr_accessor :subDirectory

    def jfields_org_allbinary_logic_io_file_FileListFetcher
        @subDirectory = ::Org::Allbinary::Logic::Io::FilePackage::Directory::SubDirectory.getInstance()
    end

    def initialize
        jfields_org_allbinary_logic_io_file_FileListFetcher
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def getFiles_j1(path)
        begin
            files = @subDirectory.search(AbFile.createAbFile(path))
            return files
        rescue StandardError => e
            puts(e.full_message)
            puts("Error: " + (e).to_s + "\nMsg: " + e.message)
        end
        return nil
    end
    

    def getFiles_j2_1(path, includeExtensions)
        begin
            includeExtensionBasicArrayList = ::Org::Allbinary::Util::BasicArrayListD.new()
            size = includeExtensions.length
            (0...size).each do |index|
                includeExtensionBasicArrayList.add(includeExtensions[index])
            end
            visitorFileFilter = ::Org::Allbinary::Logic::Io::FilePackage::Filter::VisitorFileFilter.new(::Org::Allbinary::Logic::Io::FilePackage::Directory::DirectoryOrIncludeFileExtensionBooleanFileVisitor.new(includeExtensionBasicArrayList))
            files = @subDirectory.search(visitorFileFilter, AbFile.createAbFile(path))
            return files
        rescue StandardError => e
            puts(e.full_message)
            puts("Error: " + (e).to_s + "\nMsg: " + e.message)
        end
        return nil
    end
    

    def getFiles_j2_2(path, includeExtension)
        begin
            includeExtensionBasicArrayList = ::Org::Allbinary::Util::BasicArrayListD.new()
            includeExtensionBasicArrayList.add(includeExtension)
            visitorFileFilter = ::Org::Allbinary::Logic::Io::FilePackage::Filter::VisitorFileFilter.new(::Org::Allbinary::Logic::Io::FilePackage::Directory::DirectoryOrIncludeFileExtensionBooleanFileVisitor.new(includeExtensionBasicArrayList))
            files = @subDirectory.search(visitorFileFilter, AbFile.createAbFile(path))
            return files
        rescue StandardError => e
            puts(e.full_message)
            puts("Error: " + (e).to_s + "\nMsg: " + e.message)
        end
        return nil
    end
    

    def getFiles_j3(path, pathIncludes, includeExtension)
        begin
            includeExtensionBasicArrayList = ::Org::Allbinary::Util::BasicArrayListD.new()
            includeExtensionBasicArrayList.add(includeExtension)
            visitorFileFilter = ::Org::Allbinary::Logic::Io::FilePackage::Filter::VisitorFileFilter.new(::Org::Allbinary::Logic::Io::FilePackage::Directory::DirectoryOrIncludeFileExtensionBooleanFileVisitor.new(includeExtensionBasicArrayList, pathIncludes))
            files = @subDirectory.search(visitorFileFilter, AbFile.createAbFile(path))
            return files
        rescue StandardError => e
            puts(e.full_message)
            puts("Error: " + (e).to_s + "\nMsg: " + e.message)
        end
        return nil
    end

    def getFiles(*java_overload_args)
        return getFiles_j1(*java_overload_args) if java_overload_args.length == 1
        return getFiles_j2(*java_overload_args) if java_overload_args.length == 2
        return getFiles_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method getFiles takes #{java_overload_args.length} arguments"
    end

    def getFiles_j2(*java_overload_args)
        return getFiles_j2_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String)) && (java_overload_args[1].nil? || (java_overload_args[1].is_a?(::Array) && (java_overload_args[1].empty? || (java_overload_args[1][0].nil? || java_overload_args[1][0].is_a?(::String)))))
        return getFiles_j2_2(*java_overload_args)
    end
    

    def getTrackedFiles_j2_1(path, includeExtensions)
        begin
            includeExtensionBasicArrayList = ::Org::Allbinary::Util::BasicArrayListD.new()
            size = includeExtensions.length
            (0...size).each do |index|
                includeExtensionBasicArrayList.add(includeExtensions[index])
            end
            visitorFileFilter = ::Org::Allbinary::Logic::Io::FilePackage::Filter::VisitorFileFilter.new(::Org::Allbinary::Logic::Io::FilePackage::Directory::DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor.new(includeExtensionBasicArrayList))
            files = @subDirectory.search(visitorFileFilter, AbFile.createAbFile(path))
            return files
        rescue StandardError => e
            puts(e.full_message)
            puts("Error: " + (e).to_s + "\nMsg: " + e.message)
        end
        return nil
    end
    

    def getTrackedFiles_j2_2(path, includeExtension)
        begin
            includeExtensionBasicArrayList = ::Org::Allbinary::Util::BasicArrayListD.new()
            includeExtensionBasicArrayList.add(includeExtension)
            visitorFileFilter = ::Org::Allbinary::Logic::Io::FilePackage::Filter::VisitorFileFilter.new(::Org::Allbinary::Logic::Io::FilePackage::Directory::DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor.new(includeExtensionBasicArrayList))
            files = @subDirectory.search(visitorFileFilter, AbFile.createAbFile(path))
            return files
        rescue StandardError => e
            puts(e.full_message)
            puts("Error: " + (e).to_s + "\nMsg: " + e.message)
        end
        return nil
    end

    def getTrackedFiles(*java_overload_args)
        return getTrackedFiles_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method getTrackedFiles takes #{java_overload_args.length} arguments"
    end

    def getTrackedFiles_j2(*java_overload_args)
        return getTrackedFiles_j2_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String)) && (java_overload_args[1].nil? || (java_overload_args[1].is_a?(::Array) && (java_overload_args[1].empty? || (java_overload_args[1][0].nil? || java_overload_args[1][0].is_a?(::String)))))
        return getTrackedFiles_j2_2(*java_overload_args)
    end
    

    def getDirectories(path)
        begin
            visitorFileFilter = ::Org::Allbinary::Logic::Io::FilePackage::Filter::VisitorFileFilter.new(::Org::Allbinary::Logic::Io::FilePackage::Directory::DirectoryBooleanFileVisitor.new())
            files = @subDirectory.search(visitorFileFilter, AbFile.createAbFile(path))
            return files
        rescue StandardError => e
            puts(e.full_message)
            puts("Error: " + (e).to_s + "\nMsg: " + e.message)
        end
        return nil
    end

    def self.instance()
        FileListFetcher.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        FileListFetcher.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = FileListFetcher.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "FileListFetcher"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Directory; autoload :DirectoryBooleanFileVisitor, "org/allbinary/logic/io/file/directory/DirectoryBooleanFileVisitor" unless const_defined?(:DirectoryBooleanFileVisitor, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Directory; autoload :DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor, "org/allbinary/logic/io/file/directory/DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor" unless const_defined?(:DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Directory; autoload :DirectoryOrIncludeFileExtensionBooleanFileVisitor, "org/allbinary/logic/io/file/directory/DirectoryOrIncludeFileExtensionBooleanFileVisitor" unless const_defined?(:DirectoryOrIncludeFileExtensionBooleanFileVisitor, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Directory; autoload :SubDirectory, "org/allbinary/logic/io/file/directory/SubDirectory" unless const_defined?(:SubDirectory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Filter; autoload :VisitorFileFilter, "org/allbinary/logic/io/file/filter/VisitorFileFilter" unless const_defined?(:VisitorFileFilter, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false)
require "java/lang/System"

begin
    FileListFetcher.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

