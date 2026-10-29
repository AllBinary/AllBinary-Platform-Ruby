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
# package org.allbinary.logic.io.file.visitor

require "org/allbinary/logic/io/file/visitor/BooleanFileVisitor"

class IncludeFileExtensionsBooleanFileVisitor < BooleanFileVisitor
    

    def initialize(filterStringBasicArrayList)
        super(filterStringBasicArrayList)
    end
    

    def visit(file)
        if self.getFilterStringBasicArrayList().size() == 0
            return false
        end
        return super(file)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def visit(file, fileNameString)
        fileNameAndExtension = file.getPath()
        if fileNameAndExtension.length > fileNameString.length
            startIndex = fileNameAndExtension.length - fileNameString.length
            fileName = fileNameAndExtension[startIndex..]
            if (fileName <=> fileNameString) == 0
                return true
            end
        end
        return false
    end
end

require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/util/BasicArrayList"

