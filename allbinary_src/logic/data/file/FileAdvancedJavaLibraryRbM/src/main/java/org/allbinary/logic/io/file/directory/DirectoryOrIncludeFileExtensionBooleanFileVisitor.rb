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

class DirectoryOrIncludeFileExtensionBooleanFileVisitor < ::Org::Allbinary::Logic::Io::FilePackage::Visitor::IncludeFileExtensionsBooleanFileVisitor
    attr_accessor :includesString

    def jfields_org_allbinary_logic_io_file_directory_DirectoryOrIncludeFileExtensionBooleanFileVisitor
        @includesString = nil unless instance_variable_defined?(:@includesString)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_logic_io_file_directory_DirectoryOrIncludeFileExtensionBooleanFileVisitor_1(*args)
        when 2 then jnew_org_allbinary_logic_io_file_directory_DirectoryOrIncludeFileExtensionBooleanFileVisitor_2(*args)
        else raise ArgumentError, "No constructor of DirectoryOrIncludeFileExtensionBooleanFileVisitor takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_logic_io_file_directory_DirectoryOrIncludeFileExtensionBooleanFileVisitor_1(filterStringBasicArrayList)
        DirectoryOrIncludeFileExtensionBooleanFileVisitor.superclass.instance_method(:initialize).bind(self).call(filterStringBasicArrayList)
        jfields_org_allbinary_logic_io_file_directory_DirectoryOrIncludeFileExtensionBooleanFileVisitor
        @includesString = nil
    end
    

    def jnew_org_allbinary_logic_io_file_directory_DirectoryOrIncludeFileExtensionBooleanFileVisitor_2(filterStringBasicArrayList, includesString)
        DirectoryOrIncludeFileExtensionBooleanFileVisitor.superclass.instance_method(:initialize).bind(self).call(filterStringBasicArrayList)
        jfields_org_allbinary_logic_io_file_directory_DirectoryOrIncludeFileExtensionBooleanFileVisitor
        @includesString = includesString
    end
    

    def visit(file)
        if file.isDirectory()
            return true
        end
        if @includesString == nil || file.getAbsolutePath().indexOf(@includesString) >= 0
            return DirectoryOrIncludeFileExtensionBooleanFileVisitor.superclass.java_super_method(:visit, 1).bind(self).call(file)
        else
            return false
        end
    end
    java_overload :visit, 1
end

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

end; end; end; end; end; end

