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
# package org.allbinary.business.init


module ::Org; module Allbinary; module Business; module Init

class LicenseInitInfo
    attr_accessor :id, :serverVector

    def jfields_org_allbinary_business_init_LicenseInitInfo
        @id = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @serverVector = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def initialize()
        jfields_org_allbinary_business_init_LicenseInitInfo
    end
    

    def getLicenseId()
        return @id
    end
    

    def getServer(index)
        return @serverVector.objectArray[index]
    end
    

    def getNumberOfServers()
        return @serverVector.size()
    end
    

    def setLicenseId(value)
        @id = value
    end
    

    def clearServers()
        @serverVector = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def setServer(value, index)
        @serverVector.addAt(index, value)
    end
    

    def addServer(value)
        @serverVector.add(value)
    end
    

    def getServerList()
        return @serverVector
    end
    

    def setServerList(servers)
        if ::Org::Allbinary::Debug::DebugFactory.getInstance() == ::Org::Allbinary::Debug::NoDebug.getInstance()
            @serverVector = servers
        end
    end
end

module ::Org; module Allbinary; module Debug; autoload :DebugFactory, "org/allbinary/debug/DebugFactory" unless const_defined?(:DebugFactory, false); end; end; end
module ::Org; module Allbinary; module Debug; autoload :NoDebug, "org/allbinary/debug/NoDebug" unless const_defined?(:NoDebug, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

end; end; end; end

