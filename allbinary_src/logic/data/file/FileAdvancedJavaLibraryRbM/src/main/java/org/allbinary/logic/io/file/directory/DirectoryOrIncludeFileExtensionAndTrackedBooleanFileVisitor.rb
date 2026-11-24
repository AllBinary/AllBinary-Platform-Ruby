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
# package org.allbinary.logic.io.file.directory

require "java/lang/JavaOverload"
require "org/allbinary/logic/io/file/visitor/IncludeFileExtensionsBooleanFileVisitor"

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Directory

class DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor < ::Org::Allbinary::Logic::Io::FilePackage::Visitor::IncludeFileExtensionsBooleanFileVisitor
    attr_accessor :trackedStrings, :gitProcessHelper, :includesString

    def jfields_org_allbinary_logic_io_file_directory_DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor
        @trackedStrings = TrackedStrings.getInstance()
        @gitProcessHelper = ::Org::Allbinary::Java::Runtime::ProcessPackage::Git::GitProcessHelper.getInstance()
        @includesString = nil unless instance_variable_defined?(:@includesString)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_logic_io_file_directory_DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_1(*args)
        when 2 then jnew_org_allbinary_logic_io_file_directory_DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_2(*args)
        else raise ArgumentError, "No constructor of DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_logic_io_file_directory_DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_1(filterStringBasicArrayList)
        DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor.superclass.instance_method(:initialize).bind(self).call(filterStringBasicArrayList)
        jfields_org_allbinary_logic_io_file_directory_DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor
        @includesString = nil
    end
    

    def jnew_org_allbinary_logic_io_file_directory_DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_2(filterStringBasicArrayList, includesString)
        DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor.superclass.instance_method(:initialize).bind(self).call(filterStringBasicArrayList)
        jfields_org_allbinary_logic_io_file_directory_DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor
        @includesString = includesString
    end
    

    def visit_j1(file)
        if file.isDirectory()
            return true
        end
        if @includesString == nil || file.getAbsolutePath().indexOf(@includesString) >= 0
            return DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor.superclass.java_super_method(:visit, 1).bind(self).call(file)
        else
            return false
        end
    end
    

    def visit_j2(file, fileNameString)
        filePath = file.getPath()
        if DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor.superclass.java_super_method(:visit, 2).bind(self).call(file, fileNameString)
            if !filePath.include?(@trackedStrings.APPLICATION) || filePath.include?(@trackedStrings.APP) || filePath.include?(@trackedStrings.HTML_TEMP)
                if !filePath.include?(@trackedStrings.TARGET_PATH_WINDOWS) || filePath.include?(@trackedStrings.TARGET_PATH_UNIX)
                    if @gitProcessHelper.isTracked(file)
                        return true
                    else
                    end
                else
                end
            else
            end
        end
        return false
    end

    def visit(*java_overload_args)
        return visit_j1(*java_overload_args) if java_overload_args.length == 1
        return visit_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method visit takes #{java_overload_args.length} arguments"
    end
    

    def self.main(args)
        commonFileStrings = ::Org::Allbinary::Logic::Io::FilePackage::CommonDataFileStrings.getInstance()
        list = ::Org::Allbinary::Util::BasicArrayListD.new()
        list.add(commonFileStrings.JAVA)
        filePath = "G:\\mnt\\bc\\mydev\\games\\ZeptoRacer\\platform\\j2se\\ZeptoRacerStaticPathsJ2SEM\\target\\dependency\\org\\allbinary\\logic\\system\\security\\licensing\\ZeptoRacerPCClientInformation.java"
        result = DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor.new(list).visit(::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFileFromRawPath(filePath))
        puts(filePath + " is Tracked: " + (result).to_s)
    end
end

module ::Org; module Allbinary; module Java; module Runtime; module ProcessPackage; module Git; autoload :GitProcessHelper, "org/allbinary/java/runtime/process/git/GitProcessHelper" unless const_defined?(:GitProcessHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :CommonDataFileStrings, "org/allbinary/logic/io/file/CommonDataFileStrings" unless const_defined?(:CommonDataFileStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :TrackedStrings, "org/allbinary/logic/io/file/directory/TrackedStrings" unless const_defined?(:TrackedStrings, false)
require "java/lang/System"

end; end; end; end; end; end

