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
# package org.allbinary.logic.system.security.licensing


module ThirdPartyInApplicationPurchaseInterface
    

    def isPurchased(lockableFeature)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def onCreate(anyType, stateObject)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def onDestroy()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def onStart()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def onActivityResult(requestCode, resultCode, dataObject)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def onSaveInstanceState(anyType)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def onStop()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def requestPurchase(lockableFeature)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def requestReceipts()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def add(lockableFeature)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getUserName()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isEnabled()
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :LockableFeature, "org/allbinary/logic/system/security/licensing/LockableFeature"

