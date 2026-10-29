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
# package org.allbinary.business.init.db

require "java/lang/Object"
require "org/allbinary/business/init/db/DbConnectionInfo"

#import org.allbinary.logic.communication.log.config.type.LogConfigTypes;
class DbInitInfo < DbConnectionInfo
    

    def initialize(initFileName, read)
        super()
    end
    

    def getUrl()
        url = super()
        PreLogUtil.put("Url: " + url, self, "getUrl")
        return url
    end
    

    # throws Exception
    def write()
        java_monitor.synchronize do
        end
    end
    

    # throws Exception
    def load()
        java_monitor.synchronize do
        end
    end
    

    def setHasRead(value)
        java_monitor.synchronize do
        end
    end
end

require "org/allbinary/logic/communication/log/PreLogUtil"

