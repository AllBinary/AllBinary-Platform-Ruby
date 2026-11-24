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
# package org.allbinary.data.tables.user.quoterequest

require "java/lang/JavaOverload"
require "org/allbinary/data/tables/BasicDataTableInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Quoterequest

module QuoteRequestEntityInterface
    include ::Org::Allbinary::DataPackage::Tables::BasicDataTableInterface
    

    # throws Exception
    def get(userName, id)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :get, 2
    

    def getIds(userName)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getIds, 1
    

    def deleteWhere(key, value)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :deleteWhere, 2
    

    def insert(values)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :insert, 1
    

    def update(userName, updatedValues)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :update, 2
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module User; module Quoterequest; autoload :QuoteRequest, "org/allbinary/business/user/quoterequest/QuoteRequest" unless const_defined?(:QuoteRequest, false); end; end; end; end; end

end; end; end; end; end; end

