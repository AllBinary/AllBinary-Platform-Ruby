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
# package org.allbinary.logic.io.file


#Used to correct user input for paths
class FilePathUtil
    

    def initialize()
    end
    

    def self.adjust(path)
        abPathData = AbPathData.getInstance()
        stringValidationUtil = StringValidationUtil.getInstance()
        filePathData = FilePathData.getInstance()
        if stringValidationUtil.isEmpty(path)
            return filePathData.PATH_START
        end
        path = path.gsub(abPathData.SEPARATORCHAR, filePathData.SEPARATORCHAR)
        return path
    end
end

require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/io/file/FilePathData"

