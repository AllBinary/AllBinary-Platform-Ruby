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

require "java/lang/JavaOverload"
require "org/allbinary/logic/system/security/licensing/ThirdPartyInApplicationPurchaseInterface"

module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing

class ThirdPartyInApplicationPurchase
    include ThirdPartyInApplicationPurchaseInterface
    

    def isPurchased(lockableFeature)
        return false
    end
    java_overload :isPurchased, 1
    

    def onCreate(anyType, stateObject)
    end
    java_overload :onCreate, 2
    

    def onDestroy()
    end
    java_overload :onDestroy, 0
    

    def onStart()
    end
    java_overload :onStart, 0
    

    def onActivityResult(requestCode, resultCode, dataObject)
    end
    java_overload :onActivityResult, 3
    

    def onSaveInstanceState(anyType)
    end
    java_overload :onSaveInstanceState, 1
    

    def onStop()
    end
    java_overload :onStop, 0
    

    def requestPurchase(lockableFeature)
    end
    java_overload :requestPurchase, 1
    

    def requestReceipts()
    end
    java_overload :requestReceipts, 0
    

    def add(lockableFeature)
    end
    java_overload :add, 1
    

    def getUserName()
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    java_overload :getUserName, 0
    

    def isEnabled()
        return false
    end
    java_overload :isEnabled, 0
    

    def requestProducts()
    end
    java_overload :requestProducts, 0
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :LockableFeature, "org/allbinary/logic/system/security/licensing/LockableFeature" unless const_defined?(:LockableFeature, false)

end; end; end; end; end; end

