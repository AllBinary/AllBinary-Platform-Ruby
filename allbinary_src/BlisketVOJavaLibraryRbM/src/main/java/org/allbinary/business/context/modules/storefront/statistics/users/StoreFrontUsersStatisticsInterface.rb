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
# package org.allbinary.business.context.modules.storefront.statistics.users

require "java/lang/JavaOverload"
require "org/allbinary/data/tables/TableMappingInterface"

module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Users

#import org.allbinary.business.user.commerce.money.Money;
module StoreFrontUsersStatisticsInterface
    include ::Org::Allbinary::DataPackage::Tables::TableMappingInterface
    

    def getNumberOfUsers()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getNumberOfUsers, 0
    

    def getNumberOfUsersByRole(role)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getNumberOfUsersByRole, 1
end

end; end; end; end; end; end; end; end

