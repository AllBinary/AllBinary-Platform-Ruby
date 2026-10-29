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

class DirectoryOrIncludeFileExtensionBooleanFileVisitor < IncludeFileExtensionsBooleanFileVisitor
    attr_accessor :includesString

    def initialize_fields
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
end

require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/util/BasicArrayList"

