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


module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing

module AbeClientInformationInterface
    

    def init()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getOperatingSystemInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getName()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getSpecialName()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getVersion()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getLicenseId()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getLicenseServers()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getLicenseServer(index)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getNumberOfLicenseServers()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def toHashtable()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isSameId(alicenseId)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isLargerOrDifferentServerList(vector)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isHardSale()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def toShortString()
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Logic; module System; module Os; autoload :GenericOperatingSystem, "org/allbinary/logic/system/os/GenericOperatingSystem" unless const_defined?(:GenericOperatingSystem, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

end; end; end; end; end; end

