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
require "org/allbinary/logic/util/visitor/VisitorInterface"

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Visitor

class BooleanFileVisitor
    include ::Org::Allbinary::Logic::Util::Visitor::VisitorInterface
    attr_accessor :commonStrings, :filterStringBasicArrayList

    def jfields_org_allbinary_logic_io_file_visitor_BooleanFileVisitor
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @filterStringBasicArrayList = nil unless instance_variable_defined?(:@filterStringBasicArrayList)
    end
    

    def initialize(filterStringBasicArrayList)
        jfields_org_allbinary_logic_io_file_visitor_BooleanFileVisitor
        self.setFilterStringBasicArrayList(filterStringBasicArrayList)
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("Filter BasicArrayList: " + self.getFilterStringBasicArrayList().to_s, self, @commonStrings.CONSTRUCTOR)
    end
    

    def visit_j1_1(anyType)
        return self.visit(anyType)
    end
    

    def visit_j1_2(file)
        list = self.getFilterStringBasicArrayList()
        size = list.size()
        nextFileFilterString = nil
        (0...size).each do |index|
            nextFileFilterString = list.get(index)
            if self.visit(file, nextFileFilterString)
                return true
            end
        end
        return false
    end
    

    def getFilterStringBasicArrayList()
        return @filterStringBasicArrayList
    end
    java_overload :getFilterStringBasicArrayList, 0
    

    def setFilterStringBasicArrayList(filterStringBasicArrayList)
        @filterStringBasicArrayList = filterStringBasicArrayList
    end
    java_overload :setFilterStringBasicArrayList, 1
    

    def visit_j2(file, fileNameString)
        return false
    end

    def visit(*java_overload_args)
        return visit_j1(*java_overload_args) if java_overload_args.length == 1
        return visit_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method visit takes #{java_overload_args.length} arguments"
    end

    def visit_j1(*java_overload_args)
        return visit_j1_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::Io::FilePackage::AbFile))
        return visit_j1_1(*java_overload_args)
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

end; end; end; end; end; end

