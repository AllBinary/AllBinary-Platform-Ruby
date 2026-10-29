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

class BasicFileFilterUtil
    

    def initialize()
    end
    

    def self.getInstance(extension)
        vector = BasicArrayListD.new()
        vector.add(extension)
        includeFileExtensionsBooleanFileVisitor = IncludeFileExtensionsBooleanFileVisitor.new(vector)
        return VisitorFileFilter.new(includeFileExtensionsBooleanFileVisitor)
    end
end

require "org/allbinary/logic/io/file/visitor/IncludeFileExtensionsBooleanFileVisitor"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/io/file/filter/VisitorFileFilter"

