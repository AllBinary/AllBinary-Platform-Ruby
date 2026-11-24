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
# package org.allbinary.business.user.modules.customer.subscriber

require "java/lang/JavaOverload"
require "org/allbinary/business/user/modules/User"

module ::Org; module Allbinary; module Business; module User; module Modules; module Customer; module Subscriber

class SubscriberUser < ::Org::Allbinary::Business::User::Modules::User
    attr_accessor :subscription

    def jfields_org_allbinary_business_user_modules_customer_subscriber_SubscriberUser
        @subscription = nil unless instance_variable_defined?(:@subscription)
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_business_user_modules_customer_subscriber_SubscriberUser_0(*args)
        when 1 then jnew_org_allbinary_business_user_modules_customer_subscriber_SubscriberUser_1(*args)
        else raise ArgumentError, "No constructor of SubscriberUser takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_business_user_modules_customer_subscriber_SubscriberUser_0()
        SubscriberUser.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_business_user_modules_customer_subscriber_SubscriberUser
        @subscription = ::Org::Allbinary::Business::User::Subscription::Subscription.new()
    end
    

    def jnew_org_allbinary_business_user_modules_customer_subscriber_SubscriberUser_1(userHashMap)
        SubscriberUser.superclass.instance_method(:initialize).bind(self).call(userHashMap)
        jfields_org_allbinary_business_user_modules_customer_subscriber_SubscriberUser
        @subscription = ::Org::Allbinary::Business::User::Subscription::Subscription.new()
    end
    

    def validateSession(weblisketSession)
        SubscriberUser.superclass.java_super_method(:validateSession, 1).bind(self).call(weblisketSession)
        self.updateSession(weblisketSession)
    end
    java_overload :validateSession, 1
    

    def updateSession(weblisketSession)
        weblisketSession.setStoreName(self.getPermissions())
    end
    java_overload :updateSession, 1
    

    def isSessionValid()
        return @subscription.isSubscribed()
    end
    java_overload :isSessionValid, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module User; module Subscription; autoload :Subscription, "org/allbinary/business/user/subscription/Subscription" unless const_defined?(:Subscription, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSessionInterface, "org/allbinary/logic/communication/http/request/session/WeblisketSessionInterface" unless const_defined?(:WeblisketSessionInterface, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end

