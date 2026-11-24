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

require "java/lang/JavaOverload"
require "org/allbinary/business/user/modules/User"

module ::Org; module Allbinary; module Business; module User; module Modules; module Customer; module Affiliate

class AffiliateUser < ::Org::Allbinary::Business::User::Modules::User
    attr_accessor :affiliateSales

    def jfields_org_allbinary_business_user_modules_customer_affiliate_AffiliateUser
        @affiliateSales = nil unless instance_variable_defined?(:@affiliateSales)
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_business_user_modules_customer_affiliate_AffiliateUser_0(*args)
        when 1 then jnew_org_allbinary_business_user_modules_customer_affiliate_AffiliateUser_1(*args)
        else raise ArgumentError, "No constructor of AffiliateUser takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_business_user_modules_customer_affiliate_AffiliateUser_0()
        AffiliateUser.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_business_user_modules_customer_affiliate_AffiliateUser
        @affiliateSales = ::Org::Allbinary::Business::Advertisement::Affiliate::Sales::AffiliateSales.new()
    end
    

    def jnew_org_allbinary_business_user_modules_customer_affiliate_AffiliateUser_1(userHashMap)
        AffiliateUser.superclass.instance_method(:initialize).bind(self).call(userHashMap)
        jfields_org_allbinary_business_user_modules_customer_affiliate_AffiliateUser
        @affiliateSales = ::Org::Allbinary::Business::Advertisement::Affiliate::Sales::AffiliateSales.new()
    end
    

    def validateSession(weblisketSession)
        AffiliateUser.superclass.java_super_method(:validateSession, 1).bind(self).call(weblisketSession)
        self.updateSession(weblisketSession)
    end
    java_overload :validateSession, 1
    

    def updateSession(weblisketSession)
        weblisketSession.setStoreName(self.getPermissions())
    end
    java_overload :updateSession, 1
    

    def isSessionValid()
        return @affiliateSales.isValid()
    end
    java_overload :isSessionValid, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Advertisement; module Affiliate; module Sales; autoload :AffiliateSales, "org/allbinary/business/advertisement/affiliate/sales/AffiliateSales" unless const_defined?(:AffiliateSales, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSessionInterface, "org/allbinary/logic/communication/http/request/session/WeblisketSessionInterface" unless const_defined?(:WeblisketSessionInterface, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end

