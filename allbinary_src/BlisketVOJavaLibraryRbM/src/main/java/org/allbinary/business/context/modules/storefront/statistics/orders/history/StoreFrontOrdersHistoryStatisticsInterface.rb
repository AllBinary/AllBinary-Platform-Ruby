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
# package org.allbinary.business.context.modules.storefront.statistics.orders.history

require "java/lang/JavaOverload"
require "org/allbinary/data/tables/TableMappingInterface"

module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Orders; module History

module StoreFrontOrdersHistoryStatisticsInterface
    include ::Org::Allbinary::DataPackage::Tables::TableMappingInterface
    

    def getNumberOfOrders()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getNumberOfOrders, 0
    

    def getSubTotal()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getSubTotal, 0
    

    def getShippingCost()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getShippingCost, 0
    

    def getTaxes()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getTaxes, 0
    

    def getTotal()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getTotal, 0
end

module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; autoload :Money, "org/allbinary/business/user/commerce/money/Money" unless const_defined?(:Money, false); end; end; end; end; end; end

end; end; end; end; end; end; end; end; end

