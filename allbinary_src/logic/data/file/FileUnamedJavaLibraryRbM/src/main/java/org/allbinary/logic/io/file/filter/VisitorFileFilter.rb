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

require "java/lang/JavaOverload"
# require "java/io/File"
# require "java/io/FileFilter"

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Filter

class VisitorFileFilter
    include FileFilter
    attr_accessor :booleanVisitorInterface

    def jfields_org_allbinary_logic_io_file_filter_VisitorFileFilter
        @booleanVisitorInterface = nil unless instance_variable_defined?(:@booleanVisitorInterface)
    end
    

    def initialize(booleanVisitorInterface)
        jfields_org_allbinary_logic_io_file_filter_VisitorFileFilter
        @booleanVisitorInterface = booleanVisitorInterface
    end
    

    def accept_j1_1(file)
        abFile = ::Org::Allbinary::Logic::Io::FilePackage::FileWrapperUtil.wrapFile(file)
        isFileAcceptable = (@booleanVisitorInterface.visit(abFile))
        return isFileAcceptable || file.isDirectory()
    end
    

    def accept_j1_2(file)
        isFileAcceptable = (@booleanVisitorInterface.visit(file))
        return isFileAcceptable || file.isDirectory()
    end

    def accept(*java_overload_args)
        return accept_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method accept takes #{java_overload_args.length} arguments"
    end

    def accept_j1(*java_overload_args)
        return accept_j1_1(*java_overload_args) if true && !(java_overload_args[0].is_a?(::Numeric) || java_overload_args[0] == true || java_overload_args[0] == false || java_overload_args[0].is_a?(::Array))
        return accept_j1_2(*java_overload_args)
    end
end

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileWrapperUtil, "org/allbinary/logic/io/file/FileWrapperUtil" unless const_defined?(:FileWrapperUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Visitor; autoload :VisitorInterface, "org/allbinary/logic/util/visitor/VisitorInterface" unless const_defined?(:VisitorInterface, false); end; end; end; end; end

end; end; end; end; end; end

