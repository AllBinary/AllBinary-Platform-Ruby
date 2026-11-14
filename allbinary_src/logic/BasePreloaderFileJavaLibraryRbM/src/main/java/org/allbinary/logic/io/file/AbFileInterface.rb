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
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def canWrite()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws IOException
    def createNewFile()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws IOException
    def delete()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def deleteOnExit()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def exists()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getAbsolutePath()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws IOException
    def getCanonicalPath()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getParent()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getPath()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isAbsolute()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isDirectory()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isFile()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isHidden()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def lastModified()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def length()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def list()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def listWithFilter(filter)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def mkdir()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def mkdirs()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setLastModified(time)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setReadOnly()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def toString()
        return super if defined?(super)
        raise NotImplementedError
    end
    alias_method :to_s, :toString
    

    def toURI()
        return super if defined?(super)
        raise NotImplementedError
    end
end

