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

require "org/allbinary/logic/io/file/visitor/IncludeFileExtensionsBooleanFileVisitor"

class DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor < IncludeFileExtensionsBooleanFileVisitor
    attr_accessor :trackedStrings, :gitProcessHelper, :includesString

    def initialize_fields
        @trackedStrings = TrackedStrings.getInstance()
        @gitProcessHelper = GitProcessHelper.getInstance()
        @includesString = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 2 then constructor2(*args)
        end
    end
    

    def constructor1(filterStringBasicArrayList)
        method(:initialize).super_method.call(filterStringBasicArrayList)
        initialize_fields
        @includesString = nil
    end
    

    def constructor2(filterStringBasicArrayList, includesString)
        method(:initialize).super_method.call(filterStringBasicArrayList)
        initialize_fields
        @includesString = includesString
    end
    

    def visit(file)
        if file.isDirectory()
            return true
        end
        if @includesString == nil || file.getAbsolutePath().indexOf(@includesString) >= 0
            return super(file)
        else
            return false
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def visit(file, fileNameString)
        filePath = file.getPath()
        if super(file, fileNameString)
            if !(filePath.include?(@trackedStrings.APPLICATION) || filePath.include?(@trackedStrings.APP) || filePath.include?(@trackedStrings.HTML_TEMP))
                if !(filePath.include?(@trackedStrings.TARGET_PATH_WINDOWS) || filePath.include?(@trackedStrings.TARGET_PATH_UNIX))
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
    

    def self.main(args)
        commonFileStrings = CommonDataFileStrings.getInstance()
        list = BasicArrayListD.new()
        list.add(commonFileStrings.JAVA)
        filePath = "G:\\mnt\\bc\\mydev\\games\\ZeptoRacer\\platform\\j2se\\ZeptoRacerStaticPathsJ2SEM\\target\\dependency\\org\\allbinary\\logic\\system\\security\\licensing\\ZeptoRacerPCClientInformation.java"
        result = DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor.new(list).visit(AbFile.createAbFileFromRawPath(filePath))
        puts(filePath + " is Tracked: " + (result).to_s)
    end
end

require "org/allbinary/java/runtime/process/git/GitProcessHelper"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/CommonDataFileStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/io/file/directory/TrackedStrings"
require "java/lang/System"

