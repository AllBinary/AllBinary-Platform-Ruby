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
# package org.allbinary.business.user.commerce.inventory.item

# require "javax/servlet/http/HttpServletRequest"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item

class ItemFactoryUnused
    

    def initialize()
    end
    

    # throws MoneyException
    def self.getInstance_j1_1(hashMap)
        return Item.new(hashMap)
    end
    

    # throws Exception, MoneyException
    def self.getInstance_j1_2(request)
        return Item.new(::Org::Allbinary::Logic::Communication::Http::Request::RequestParams.new(request).toHashMap())
    end

    def self.getInstance(*java_overload_args)
        return getInstance_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method getInstance takes #{java_overload_args.length} arguments"
    end

    def self.getInstance_j1(*java_overload_args)
        return getInstance_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Java::Util::HashMap))
        return getInstance_j1_2(*java_overload_args)
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; autoload :MoneyException, "org/allbinary/business/user/commerce/money/MoneyException" unless const_defined?(:MoneyException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; autoload :TableMappingInterface, "org/allbinary/data/tables/TableMappingInterface" unless const_defined?(:TableMappingInterface, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :RequestParams, "org/allbinary/logic/communication/http/request/RequestParams" unless const_defined?(:RequestParams, false); end; end; end; end; end; end
autoload :Item, "org/allbinary/business/user/commerce/inventory/item/Item" unless const_defined?(:Item, false)

end; end; end; end; end; end; end

