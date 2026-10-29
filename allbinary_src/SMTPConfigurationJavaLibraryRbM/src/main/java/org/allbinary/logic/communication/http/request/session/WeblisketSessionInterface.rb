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
# package org.allbinary.logic.communication.http.request.session


module WeblisketSessionInterface
    

    def clear()
        raise NotImplementedError
    end
    

    def getAttempts()
        raise NotImplementedError
    end
    

    def getAuthentication()
        raise NotImplementedError
    end
    

    def getCreationTime()
        raise NotImplementedError
    end
    

    def getId()
        raise NotImplementedError
    end
    

    def getLastAccessedTime()
        raise NotImplementedError
    end
    

    # throws Exception
    def getOrder()
        raise NotImplementedError
    end
    

    def getPassword()
        raise NotImplementedError
    end
    

    def getPaymentMethod()
        raise NotImplementedError
    end
    

    # throws Exception
    def getRole()
        raise NotImplementedError
    end
    

    def getStoreName()
        raise NotImplementedError
    end
    

    def getTimeout()
        raise NotImplementedError
    end
    

    def getUserName()
        raise NotImplementedError
    end
    

    def getWebAppPath()
        raise NotImplementedError
    end
    

    def removeBasket()
        raise NotImplementedError
    end
    

    def setAttempts(value)
        raise NotImplementedError
    end
    

    def setAuthenticated()
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def setAuthenticated(value)
        raise NotImplementedError
    end
    

    def setPassword(password)
        raise NotImplementedError
    end
    

    def setPaymentMethod(value)
        raise NotImplementedError
    end
    

    def setRole(aRole)
        raise NotImplementedError
    end
    

    def setStoreName(value)
        raise NotImplementedError
    end
    

    def setTimeout(value)
        raise NotImplementedError
    end
    

    def setUserName(userName)
        raise NotImplementedError
    end
end

require "org/allbinary/business/user/commerce/inventory/order/OrderInterface"
require "org/allbinary/business/user/role/UserRole"

