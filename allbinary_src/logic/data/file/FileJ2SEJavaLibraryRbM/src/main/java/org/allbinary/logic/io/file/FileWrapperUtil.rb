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

# require "java/io/File"

class FileWrapperUtil
    

    def self.wrapFiles(files)
        begin
            abFileArray = Array.new(files.length, nil)
            (files.length - 1).step(0, -(1)) do |index|
                abFileArray[index] = AbFile.new(files[index])
            end
            return abFileArray
        rescue StandardError => e
            PreLogUtil.putSE("Exception Wrapping Files", "FileWrapperUtil", "wrapFiles", e)
            return Array.new(0, nil)
        end
    end
    

    def self.wrapFile(file)
        begin
            return AbFile.new(file)
        rescue StandardError => e
            PreLogUtil.putSE("Exception Wrapping File", "FileWrapperUtil", "wrapFile", e)
            return AbFile::NULL_FILE
        end
    end
end

require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/io/file/AbFile"

