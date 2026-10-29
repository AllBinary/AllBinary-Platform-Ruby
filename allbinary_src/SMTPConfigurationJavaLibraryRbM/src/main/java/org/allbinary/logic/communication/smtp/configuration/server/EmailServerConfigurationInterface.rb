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
# package org.allbinary.logic.communication.smtp.configuration.server


module EmailServerConfigurationInterface
    

    def setSmtpServer(value)
        raise NotImplementedError
    end
    

    def getSmtpServer()
        raise NotImplementedError
    end
    

    def getAccountName()
        raise NotImplementedError
    end
    

    def setAccountName(accountName)
        raise NotImplementedError
    end
    

    def getPassword()
        raise NotImplementedError
    end
    

    def setPassword(password)
        raise NotImplementedError
    end
    

    def log()
        raise NotImplementedError
    end
    

    def toString()
        raise NotImplementedError
    end
    alias_method :to_s, :toString
end

