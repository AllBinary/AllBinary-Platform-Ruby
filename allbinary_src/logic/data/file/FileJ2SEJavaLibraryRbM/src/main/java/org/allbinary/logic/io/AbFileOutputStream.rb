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
# package org.allbinary.logic.io

# require "java/io/FileNotFoundException"
# require "java/io/FileOutputStream"

class AbFileOutputStream < FileOutputStream
    

    # throws FileNotFoundException
    def self.createFromAbFile(file)
        return AbFileOutputStream.new(file.getPath(), false)
    end
    

    # throws FileNotFoundException
    def self.createFromAbFileAppend(file, append)
        return AbFileOutputStream.new(file.getPath(), append)
    end
    

    # throws FileNotFoundException
    def self.createFromFilePath(name)
        return AbFileOutputStream.new(name, false)
    end
    

    # throws FileNotFoundException
    def self.createFromFilePathAppend(name, append)
        return AbFileOutputStream.new(name, append)
    end
    

    def initialize(name, append)
        super(name, append)
    end
end

require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/AbFileNativeUtil"

