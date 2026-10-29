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
# require "java/io/BufferedWriter"
# require "java/io/FileReader"
# require "java/io/FileWriter"

class BufferedIOUtil
    

    # throws Exception
    def self.copy(backupFile, backupFileBak)
        line = StringUtil.getInstance().EMPTY_STRING
        tmpOut = BufferedWriter.new(FileWriter.new(AbFileNativeUtil.get(backupFileBak)))
        tmpIn = BufferedReader.new(FileReader.new(AbFileNativeUtil.get(backupFile)))
        while true
            line = tmpIn.readLine()
            if line == nil
                break
            end
            tmpOut.write(line, 0, line.length)
            tmpOut.newLine()
        end
        tmpOut.flush()
    end
end

require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/AbFileNativeUtil"
require "org/allbinary/logic/string/StringUtil"

