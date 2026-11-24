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


module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session

module WeblisketSessionInterface
    

    def clear()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getAttempts()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getAuthentication()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getCreationTime()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getId()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getLastAccessedTime()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def getOrder()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getPassword()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getPaymentMethod()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def getRole()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getStoreName()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getTimeout()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getUserName()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getWebAppPath()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def removeBasket()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setAttempts(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setAuthenticated_j0()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setAuthenticated_j1(value)
        return super if defined?(super)
        raise NotImplementedError
    end

    def setAuthenticated(*java_overload_args)
        return setAuthenticated_j0(*java_overload_args) if java_overload_args.length == 0
        return setAuthenticated_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method setAuthenticated takes #{java_overload_args.length} arguments"
    end
    

    def setPassword(password)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setPaymentMethod(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setRole(aRole)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setStoreName(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setTimeout(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setUserName(userName)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderInterface, "org/allbinary/business/user/commerce/inventory/order/OrderInterface" unless const_defined?(:OrderInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :UserRole, "org/allbinary/business/user/role/UserRole" unless const_defined?(:UserRole, false); end; end; end; end; end

end; end; end; end; end; end; end

