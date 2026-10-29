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
# package org.allbinary.business.init.db


module DatabaseConnectionInfoInterface
    

    def getUrl()
        raise NotImplementedError
    end
    

    def getJdbcDriver()
        raise NotImplementedError
    end
    

    def getName()
        raise NotImplementedError
    end
    

    def getUserName()
        raise NotImplementedError
    end
    

    def getPassword()
        raise NotImplementedError
    end
    

    def getHost()
        raise NotImplementedError
    end
    

    def getSchema()
        raise NotImplementedError
    end
    

    def getServer()
        raise NotImplementedError
    end
    

    def getPort()
        raise NotImplementedError
    end
    

    def setJdbcDriver(value)
        raise NotImplementedError
    end
    

    def setName(value)
        raise NotImplementedError
    end
    

    def setUserName(value)
        raise NotImplementedError
    end
    

    def setPassword(value)
        raise NotImplementedError
    end
    

    def setSchema(value)
        raise NotImplementedError
    end
    

    def setServer(value)
        raise NotImplementedError
    end
    

    def setPort(value)
        raise NotImplementedError
    end
    

    def getUserNameKey()
        raise NotImplementedError
    end
    

    def getPasswordKey()
        raise NotImplementedError
    end
end

