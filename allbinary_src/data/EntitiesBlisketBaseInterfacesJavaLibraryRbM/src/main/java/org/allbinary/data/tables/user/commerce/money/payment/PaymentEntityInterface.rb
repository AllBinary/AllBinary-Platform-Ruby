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
# package org.allbinary.data.tables.user.commerce.money.payment

require "java/lang/JavaOverload"
require "org/allbinary/data/tables/BasicDataTableInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Money; module Payment

module PaymentEntityInterface
    include ::Org::Allbinary::DataPackage::Tables::BasicDataTableInterface
    

    def getLastId(userName)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getLastId, 1
    

    def setDefault(userName, index)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setDefault, 2
    

    def getDefault(userName)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getDefault, 1
    

    def get(userName)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :get, 1
    

    def add(userName, paymentInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :add, 2
    

    def remove(userName, index)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :remove, 2
    

    def insert(values)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :insert, 1
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; autoload :PaymentInterface, "org/allbinary/business/user/commerce/money/payment/PaymentInterface" unless const_defined?(:PaymentInterface, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end; end

