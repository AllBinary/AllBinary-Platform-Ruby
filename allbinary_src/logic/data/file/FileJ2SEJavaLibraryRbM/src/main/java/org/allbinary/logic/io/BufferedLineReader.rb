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

# require "java/io/BufferedReader"
# require "java/io/FileReader"

class BufferedLineReader
    attr_accessor :tmpIn

    def initialize_fields
        @tmpIn = nil
    end
    

    def initialize(file)
        initialize_fields
        @tmpIn = BufferedReader.new(FileReader.new(AbFileNativeUtil.get(file)))
    end
    

    def readUpToLines(readAheadIndex)
    end
    

    # throws Exception
    def readLine()
        return @tmpIn.readLine()
    end
    

    def getSize()
        return 0
    end
    

    def getCurrent()
        return 0
    end
end

require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/AbFileNativeUtil"

