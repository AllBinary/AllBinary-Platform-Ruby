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
# package org.allbinary.logic.visual.transform.template.customizer.widgets.logo

# require "java/io/ByteArrayInputStream"

class LogoImageFileUtil
    attr_accessor :directory, :fileName, :imageFileAbPath

    def initialize_fields
        @directory = Directory.getInstance()
        @fileName = nil
        @imageFileAbPath = nil
    end
    

    def initialize(imageAbPath, imageFile)
        initialize_fields
        @fileName = imageFile
        @imageFileAbPath = imageAbPath
    end
    

    # throws Exception
    def saveFiles(fileItem)
        if @fileName == nil
            raise StandardError.new("Image File Name Was Null")
        end
        if !@directory.create(@imageFileAbPath)
            raise StandardError.new("Unable to save file to non creatable directory")
        end
        originalImageFile = AbFile.createAbFile(@imageFileAbPath.to_s + @fileName)
        originalImageFile.createNewFile()
        FileUtil.getInstance().write(ByteArrayInputStream.new(fileItem.get()), originalImageFile)
    end
end

require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/FileUtil"
require "org/allbinary/logic/io/file/directory/Directory"
require "org/allbinary/logic/io/path/AbPath"
require "org/apache/commons/fileupload/FileItem"

