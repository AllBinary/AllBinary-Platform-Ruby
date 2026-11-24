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
require "org/allbinary/logic/util/visitor/VisitorInterface"

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Directory

class DirectoryBooleanFileVisitor
    include ::Org::Allbinary::Logic::Util::Visitor::VisitorInterface
    

    def initialize()
    end
    

    def visit_j1_1(anyType)
        return self.visit(anyType)
    end
    

    def visit_j1_2(file)
        if file.isDirectory()
            return true
        end
        return false
    end

    def visit(*java_overload_args)
        return visit_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method visit takes #{java_overload_args.length} arguments"
    end

    def visit_j1(*java_overload_args)
        return visit_j1_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::Io::FilePackage::AbFile))
        return visit_j1_1(*java_overload_args)
    end
end

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end

end; end; end; end; end; end

