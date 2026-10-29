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


class FileStreamFactory
    

    def self.getInstance()
        if FileStreamFactory::SINGLETON == NullUtil.getInstance().NULL_OBJECT
            FileStreamFactory::SINGLETON = FileStreamFactory.new()
        end
        return FileStreamFactory::SINGLETON
    end
    

    def initialize()
    end
    

    # throws Exception
    def getFileInputStreamInstance(path, fileName)
        _FILEABPATH = AbPath.new(path, fileName)
        file = AbFile.createAbFileFromAbPath(_FILEABPATH)
        return AbFileInputStream.new(file)
    end
    

    # throws Exception
    def getFileOutputStreamInstance(path, fileName)
        _FILEABPATH = AbPath.new(path, fileName)
        file = AbFile.createAbFileFromAbPath(_FILEABPATH)
        if file.exists()
            file.delete()
            file.createNewFile()
        end
        return AbFileOutputStream.createFromAbFile(file)
    end
    

    # throws Exception
    def delete(path, fileName)
        _FILEABPATH = AbPath.new(path, fileName)
        file = AbFile.createAbFileFromAbPath(_FILEABPATH)
        file.delete()
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/io/AbFileInputStream"
require "org/allbinary/logic/io/AbFileOutputStream"

class FileStreamFactory
    SINGLETON = NullUtil.getInstance().NULL_OBJECT
end

