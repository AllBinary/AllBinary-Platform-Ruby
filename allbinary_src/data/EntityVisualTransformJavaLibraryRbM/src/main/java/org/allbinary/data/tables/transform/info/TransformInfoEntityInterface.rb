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
# package org.allbinary.data.tables.transform.info

require "java/lang/JavaOverload"
# require "javax/servlet/jsp/PageContext"
require "org/allbinary/data/tables/BasicDataTableInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module Transform; module Info

module TransformInfoEntityInterface
    include ::Org::Allbinary::DataPackage::Tables::BasicDataTableInterface
    

    # throws Exception
    def get(name, propertiesHashMap, pageContext)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :get, 3
    

    # throws Exception
    def getObjectConfigs(storeName)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getObjectConfigs, 1
    

    # throws Exception
    def getNames(storeName)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getNames, 1
    

    def delete(name)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :delete, 1
    

    def insert(values)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :insert, 1
    

    def update(updatedValues)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :update, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end

end; end; end; end; end; end

