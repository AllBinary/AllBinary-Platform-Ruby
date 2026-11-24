# 
# AllBinary Open License Version 1 
# Copyright (c) 2002 AllBinary 
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
# require "java/io/File"
# require "java/io/FileFilter"
require "org/allbinary/logic/util/visitor/VisitorInterface"

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Directory

class DirectoryFileVisitor
    include ::Org::Allbinary::Logic::Util::Visitor::VisitorInterface
    include FileFilter
    

    def initialize()
    end
    

    def accept(arg0)
        return (self.visit(arg0))
    end
    java_overload :accept, 1
    

    def visit(anyType)
        file = anyType
        index = 1
        aFile = file.getParentFile()
        while ((aFile = aFile.getParentFile())) != nil
            index += 1
        end
        if file.isDirectory() && index < 5
            return true
        end
        return false
    end
    java_overload :visit, 1
end

end; end; end; end; end; end

