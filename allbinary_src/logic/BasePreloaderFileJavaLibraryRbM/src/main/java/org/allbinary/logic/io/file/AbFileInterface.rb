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

# require "java/io/FilenameFilter"
# require "java/io/IOException"
# require "java/net/URI"

module AbFileInterface
    

    def canRead()
        raise NotImplementedError
    end
    

    def canWrite()
        raise NotImplementedError
    end
    

    # throws IOException
    def createNewFile()
        raise NotImplementedError
    end
    

    # throws IOException
    def delete()
        raise NotImplementedError
    end
    

    def deleteOnExit()
        raise NotImplementedError
    end
    

    def exists()
        raise NotImplementedError
    end
    

    def getAbsolutePath()
        raise NotImplementedError
    end
    

    # throws IOException
    def getCanonicalPath()
        raise NotImplementedError
    end
    

    def getParent()
        raise NotImplementedError
    end
    

    def getPath()
        raise NotImplementedError
    end
    

    def isAbsolute()
        raise NotImplementedError
    end
    

    def isDirectory()
        raise NotImplementedError
    end
    

    def isFile()
        raise NotImplementedError
    end
    

    def isHidden()
        raise NotImplementedError
    end
    

    def lastModified()
        raise NotImplementedError
    end
    

    def length()
        raise NotImplementedError
    end
    

    def list()
        raise NotImplementedError
    end
    

    def listWithFilter(filter)
        raise NotImplementedError
    end
    

    def mkdir()
        raise NotImplementedError
    end
    

    def mkdirs()
        raise NotImplementedError
    end
    

    def setLastModified(time)
        raise NotImplementedError
    end
    

    def setReadOnly()
        raise NotImplementedError
    end
    

    def toString()
        raise NotImplementedError
    end
    alias_method :to_s, :toString
    

    def toURI()
        raise NotImplementedError
    end
end

