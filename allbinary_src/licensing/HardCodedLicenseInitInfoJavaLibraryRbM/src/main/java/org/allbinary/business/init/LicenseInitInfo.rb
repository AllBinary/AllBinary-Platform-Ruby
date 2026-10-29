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


class LicenseInitInfo
    attr_accessor :id, :serverList

    def initialize_fields
        @id = StringUtil.getInstance().EMPTY_STRING
        @serverList = BasicArrayListD.new()
    end
    

    def initialize()
        initialize_fields
    end
    

    def getLicenseId()
        return @id
    end
    

    def getServer(index)
        return @serverList.get(index)
    end
    

    def getNumberOfServers()
        return @serverList.size()
    end
    

    def setLicenseId(value)
        @id = value
    end
    

    def clearServers()
        @serverList.clear()
    end
    

    def setServer(value, index)
        @serverList.addAt(index, value)
    end
    

    def addServer(value)
        @serverList.add(value)
    end
    

    def getServerList()
        return @serverList
    end
    

    def setServerList(servers)
        if DebugFactory.getInstance() == NoDebug.getInstance()
            @serverList = servers
        end
    end
end

require "org/allbinary/debug/DebugFactory"
require "org/allbinary/debug/NoDebug"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

