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

require "org/allbinary/logic/util/visitor/VisitorInterface"

class DirectoryBooleanFileVisitor
    include VisitorInterface
    

    def initialize()
    end
    

    def visit(anyType)
        return self.visit(anyType)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def visit(file)
        if file.isDirectory()
            return true
        end
        return false
    end
end

require "org/allbinary/logic/io/file/AbFile"

