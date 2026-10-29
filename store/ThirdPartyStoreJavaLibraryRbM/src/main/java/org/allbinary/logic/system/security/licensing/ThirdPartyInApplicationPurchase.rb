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

require "org/allbinary/logic/system/security/licensing/ThirdPartyInApplicationPurchaseInterface"

class ThirdPartyInApplicationPurchase
    include ThirdPartyInApplicationPurchaseInterface
    

    def isPurchased(lockableFeature)
        return false
    end
    

    def onCreate(anyType, stateObject)
    end
    

    def onDestroy()
    end
    

    def onStart()
    end
    

    def onActivityResult(requestCode, resultCode, dataObject)
    end
    

    def onSaveInstanceState(anyType)
    end
    

    def onStop()
    end
    

    def requestPurchase(lockableFeature)
    end
    

    def requestReceipts()
    end
    

    def add(lockableFeature)
    end
    

    def getUserName()
        return StringUtil.getInstance().EMPTY_STRING
    end
    

    def isEnabled()
        return false
    end
    

    def requestProducts()
    end
end

require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/system/security/licensing/LockableFeature"

