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
require "java/lang/JavaOverload"
require "org/allbinary/business/init/db/DbConnectionInfo"

module ::Org; module Allbinary; module Business; module Init; module Db

#import org.allbinary.logic.communication.log.config.type.LogConfigTypes;
class DbInitInfo < DbConnectionInfo
    

    def initialize(initFileName, read)
        super()
    end
    

    def getUrl()
        url = DbInitInfo.superclass.java_super_method(:getUrl, 0).bind(self).call()
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("Url: " + url, self, "getUrl")
        return url
    end
    java_overload :getUrl, 0
    

    # throws Exception
    def write()
        java_monitor.synchronize do
        end
    end
    java_overload :write, 0
    

    # throws Exception
    def load()
        java_monitor.synchronize do
        end
    end
    java_overload :load, 0
    

    def setHasRead(value)
        java_monitor.synchronize do
        end
    end
    java_overload :setHasRead, 1
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end

end; end; end; end; end

