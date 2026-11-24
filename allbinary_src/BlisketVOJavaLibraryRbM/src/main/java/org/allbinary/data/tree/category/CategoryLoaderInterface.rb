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
# package org.allbinary.data.tree.category

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/category/CategoryModifierTreeInterface"

module ::Org; module Allbinary; module DataPackage; module Tree; module Category

module CategoryLoaderInterface
    include CategoryModifierTreeInterface
    

    def getDoc(categoryInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getDoc, 1
    

    def get(categoryInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :get, 1
    

    def getAll(categoryInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getAll, 1
end

module ::Org; module Allbinary; module Business; module Category; autoload :CategoryInterface, "org/allbinary/business/category/CategoryInterface" unless const_defined?(:CategoryInterface, false); end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end

end; end; end; end; end

