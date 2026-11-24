# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.osgi.framework


module ::Org; module Osgi; module Framework

class NullServiceReference
    

    def getProperty(key)
        return ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
    end
    

    def getPropertyKeys()
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().getArrayInstance()
    end
    

    def compareTo(o)
        raise RuntimeError.new()
    end
end

module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

end; end; end

