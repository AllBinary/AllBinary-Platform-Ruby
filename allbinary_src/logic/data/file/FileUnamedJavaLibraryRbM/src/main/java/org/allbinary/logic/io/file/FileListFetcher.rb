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


class FileListFetcher
    attr_accessor :subDirectory

    def initialize_fields
        @subDirectory = SubDirectory.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return FileListFetcher.instance
    end
    

    def getFiles(path)
        begin
            files = @subDirectory.search(AbFile.createAbFile(path))
            return files
        rescue StandardError => e
            puts(e.full_message)
            puts("Error: " + (e).to_s + "\nMsg: " + e.message)
        end
        return nil
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getFiles(path, includeExtensions)
        begin
            includeExtensionBasicArrayList = BasicArrayListD.new()
            size = includeExtensions.length
            (0...size).each do |index|
                includeExtensionBasicArrayList.add(includeExtensions[index])
            end
            visitorFileFilter = VisitorFileFilter.new(DirectoryOrIncludeFileExtensionBooleanFileVisitor.new(includeExtensionBasicArrayList))
            files = @subDirectory.search(visitorFileFilter, AbFile.createAbFile(path))
            return files
        rescue StandardError => e
            puts(e.full_message)
            puts("Error: " + (e).to_s + "\nMsg: " + e.message)
        end
        return nil
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getFiles(path, includeExtension)
        begin
            includeExtensionBasicArrayList = BasicArrayListD.new()
            includeExtensionBasicArrayList.add(includeExtension)
            visitorFileFilter = VisitorFileFilter.new(DirectoryOrIncludeFileExtensionBooleanFileVisitor.new(includeExtensionBasicArrayList))
            files = @subDirectory.search(visitorFileFilter, AbFile.createAbFile(path))
            return files
        rescue StandardError => e
            puts(e.full_message)
            puts("Error: " + (e).to_s + "\nMsg: " + e.message)
        end
        return nil
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getFiles(path, pathIncludes, includeExtension)
        begin
            includeExtensionBasicArrayList = BasicArrayListD.new()
            includeExtensionBasicArrayList.add(includeExtension)
            visitorFileFilter = VisitorFileFilter.new(DirectoryOrIncludeFileExtensionBooleanFileVisitor.new(includeExtensionBasicArrayList, pathIncludes))
            files = @subDirectory.search(visitorFileFilter, AbFile.createAbFile(path))
            return files
        rescue StandardError => e
            puts(e.full_message)
            puts("Error: " + (e).to_s + "\nMsg: " + e.message)
        end
        return nil
    end
    

    def getTrackedFiles(path, includeExtensions)
        begin
            includeExtensionBasicArrayList = BasicArrayListD.new()
            size = includeExtensions.length
            (0...size).each do |index|
                includeExtensionBasicArrayList.add(includeExtensions[index])
            end
            visitorFileFilter = VisitorFileFilter.new(DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor.new(includeExtensionBasicArrayList))
            files = @subDirectory.search(visitorFileFilter, AbFile.createAbFile(path))
            return files
        rescue StandardError => e
            puts(e.full_message)
            puts("Error: " + (e).to_s + "\nMsg: " + e.message)
        end
        return nil
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getTrackedFiles(path, includeExtension)
        begin
            includeExtensionBasicArrayList = BasicArrayListD.new()
            includeExtensionBasicArrayList.add(includeExtension)
            visitorFileFilter = VisitorFileFilter.new(DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor.new(includeExtensionBasicArrayList))
            files = @subDirectory.search(visitorFileFilter, AbFile.createAbFile(path))
            return files
        rescue StandardError => e
            puts(e.full_message)
            puts("Error: " + (e).to_s + "\nMsg: " + e.message)
        end
        return nil
    end
    

    def getDirectories(path)
        begin
            visitorFileFilter = VisitorFileFilter.new(DirectoryBooleanFileVisitor.new())
            files = @subDirectory.search(visitorFileFilter, AbFile.createAbFile(path))
            return files
        rescue StandardError => e
            puts(e.full_message)
            puts("Error: " + (e).to_s + "\nMsg: " + e.message)
        end
        return nil
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/io/file/directory/DirectoryBooleanFileVisitor"
require "org/allbinary/logic/io/file/directory/DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor"
require "org/allbinary/logic/io/file/directory/DirectoryOrIncludeFileExtensionBooleanFileVisitor"
require "org/allbinary/logic/io/file/directory/SubDirectory"
require "org/allbinary/logic/io/file/filter/VisitorFileFilter"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/io/file/AbFile"
require "java/lang/System"

class FileListFetcher
    @@instance = FileListFetcher.new()
end

