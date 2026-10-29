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

require "org/allbinary/data/tables/TableMappingInterface"

class FileTableMapping
    include TableMappingInterface
    attr_accessor :file

    def initialize_fields
        @file = nil
    end
    

    def initialize(file)
        initialize_fields
        @file = file
    end
    

    # throws Exception
    def getKey()
        return @file.getPath()
    end
    

    # throws Exception
    def toVector()
        filePropertyVector = BasicArrayListD.new()
        filePropertyVector.add(@file.getAbsolutePath())
        filePropertyVector.add(@file.getCanonicalPath())
        filePropertyVector.add(@file.getName())
        filePropertyVector.add(@file.getParent())
        filePropertyVector.add(@file.getPath())
        return filePropertyVector
    end
    

    # throws Exception
    def toHashMap()
        filePropertyHashMap = StdUtil.getInstance().createHashMap()
        pathData = AbPathData.getInstance()
        pathUtil = PathUtil.getInstance()
        rootFileName = pathData.getNameFromPath(pathUtil.getWithoutExtension(@file.getPath()))
        fileData = FileData.getInstance()
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
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/FileData"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/io/path/PathUtil"

