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

require "java/lang/JavaOverload"
require "org/allbinary/logic/io/file/visitor/BooleanFileVisitor"

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Visitor

class IncludeFileExtensionsBooleanFileVisitor < BooleanFileVisitor
    

    def initialize(filterStringBasicArrayList)
        super(filterStringBasicArrayList)
    end
    

    def visit_j1(file)
        if self.getFilterStringBasicArrayList().size() == 0
            return false
        end
        return IncludeFileExtensionsBooleanFileVisitor.superclass.java_super_method(:visit, 1).bind(self).call(file)
    end
    

    def visit_j2(file, fileNameString)
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

    def visit(*java_overload_args)
        return visit_j1(*java_overload_args) if java_overload_args.length == 1
        return visit_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method visit takes #{java_overload_args.length} arguments"
    end
end

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

end; end; end; end; end; end

