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
# package org.allbinary.logic.io.file.filter

# require "java/io/File"
# require "java/io/FileFilter"

class VisitorFileFilter
    include FileFilter
    attr_accessor :booleanVisitorInterface

    def initialize_fields
        @booleanVisitorInterface = nil
    end
    

    def initialize(booleanVisitorInterface)
        initialize_fields
        @booleanVisitorInterface = booleanVisitorInterface
    end
    

    def accept(file)
        abFile = FileWrapperUtil.wrapFile(file)
        isFileAcceptable = (@booleanVisitorInterface.visit(abFile))
        return isFileAcceptable || file.isDirectory()
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def accept(file)
        isFileAcceptable = (@booleanVisitorInterface.visit(file))
        return isFileAcceptable || file.isDirectory()
    end
end

require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/FileWrapperUtil"
require "org/allbinary/logic/util/visitor/VisitorInterface"

