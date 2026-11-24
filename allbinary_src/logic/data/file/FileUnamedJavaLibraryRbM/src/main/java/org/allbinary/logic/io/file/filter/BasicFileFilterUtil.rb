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

# require "java/io/FileFilter"

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Filter

class BasicFileFilterUtil
    

    def initialize()
    end
    

    def self.getInstance(extension)
        vector = ::Org::Allbinary::Util::BasicArrayListD.new()
        vector.add(extension)
        includeFileExtensionsBooleanFileVisitor = ::Org::Allbinary::Logic::Io::FilePackage::Visitor::IncludeFileExtensionsBooleanFileVisitor.new(vector)
        return VisitorFileFilter.new(includeFileExtensionsBooleanFileVisitor)
    end
end

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Visitor; autoload :IncludeFileExtensionsBooleanFileVisitor, "org/allbinary/logic/io/file/visitor/IncludeFileExtensionsBooleanFileVisitor" unless const_defined?(:IncludeFileExtensionsBooleanFileVisitor, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :VisitorFileFilter, "org/allbinary/logic/io/file/filter/VisitorFileFilter" unless const_defined?(:VisitorFileFilter, false)

end; end; end; end; end; end

