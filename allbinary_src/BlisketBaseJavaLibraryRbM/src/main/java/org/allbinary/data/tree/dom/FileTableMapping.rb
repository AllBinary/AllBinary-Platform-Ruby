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
# package org.allbinary.data.tree.dom

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/data/tables/TableMappingInterface"

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom

class FileTableMapping
    include ::Org::Allbinary::DataPackage::Tables::TableMappingInterface
    attr_accessor :file

    def jfields_org_allbinary_data_tree_dom_FileTableMapping
        @file = nil unless instance_variable_defined?(:@file)
    end
    

    def initialize(file)
        jfields_org_allbinary_data_tree_dom_FileTableMapping
        @file = file
    end
    

    # throws Exception
    def getKey()
        return @file.getPath()
    end
    java_overload :getKey, 0
    

    # throws Exception
    def toVector()
        filePropertyVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        filePropertyVector.add(@file.getAbsolutePath())
        filePropertyVector.add(@file.getCanonicalPath())
        filePropertyVector.add(@file.getName())
        filePropertyVector.add(@file.getParent())
        filePropertyVector.add(@file.getPath())
        return filePropertyVector
    end
    java_overload :toVector, 0
    

    # throws Exception
    def toHashMap()
        filePropertyHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        pathData = ::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance()
        pathUtil = ::Org::Allbinary::Logic::Io::Path::PathUtil.getInstance()
        rootFileName = pathData.getNameFromPath(pathUtil.getWithoutExtension(@file.getPath()))
        fileData = ::Org::Allbinary::Logic::Io::FilePackage::FileData.getInstance()
        filePropertyHashMap.put(fileData.ROOT_NAME, rootFileName)
        filePropertyHashMap.put(fileData.ISFILE, (@file.isFile()).to_s.to_s)
        filePropertyHashMap.put(fileData.ISDIRECTORY, (@file.isDirectory()).to_s.to_s)
        filePropertyHashMap.put(fileData.ISHIDDEN, (@file.isHidden()).to_s.to_s)
        filePropertyHashMap.put(fileData.ISABSOLUTE, (@file.isAbsolute()).to_s.to_s)
        filePropertyHashMap.put(fileData.ABSOLUTE_PATH, @file.getAbsolutePath())
        filePropertyHashMap.put(fileData.CANONICAL_PATH, @file.getCanonicalPath())
        filePropertyHashMap.put(fileData.NAME, @file.getName())
        filePropertyHashMap.put(fileData.PARENT, @file.getParent())
        filePropertyHashMap.put(fileData.PATH, @file.getPath())
        return filePropertyHashMap
    end
    java_overload :toHashMap, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileData, "org/allbinary/logic/io/file/FileData" unless const_defined?(:FileData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :PathUtil, "org/allbinary/logic/io/path/PathUtil" unless const_defined?(:PathUtil, false); end; end; end; end; end

end; end; end; end; end

