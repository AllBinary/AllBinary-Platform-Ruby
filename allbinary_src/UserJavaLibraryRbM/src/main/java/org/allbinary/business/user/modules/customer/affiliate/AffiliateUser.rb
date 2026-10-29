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
# package org.allbinary.business.user.modules.customer.affiliate

require "org/allbinary/business/user/modules/User"

class AffiliateUser < User
    attr_accessor :affiliateSales

    def initialize_fields
        @affiliateSales = nil
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        method(:initialize).super_method.call()
        initialize_fields
        @affiliateSales = AffiliateSales.new()
    end
    

    def constructor1(userHashMap)
        method(:initialize).super_method.call(userHashMap)
        initialize_fields
        @affiliateSales = AffiliateSales.new()
    end
    

    def validateSession(weblisketSession)
        super(weblisketSession)
        self.updateSession(weblisketSession)
    end
    

    def updateSession(weblisketSession)
        weblisketSession.setStoreName(self.getPermissions())
    end
    

    def isSessionValid()
        return @affiliateSales.isValid()
    end
end

require "java/util/HashMap"
require "org/allbinary/business/advertisement/affiliate/sales/AffiliateSales"
require "org/allbinary/logic/communication/http/request/session/WeblisketSessionInterface"

