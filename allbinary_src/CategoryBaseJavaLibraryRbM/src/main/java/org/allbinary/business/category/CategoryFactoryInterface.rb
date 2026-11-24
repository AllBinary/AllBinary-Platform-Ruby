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
# package org.allbinary.business.category


module ::Org; module Allbinary; module Business; module Category

module CategoryFactoryInterface
    

    def getRootInstance_j0()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getRootInstance_j1(categoryPath)
        return super if defined?(super)
        raise NotImplementedError
    end

    def getRootInstance(*java_overload_args)
        return getRootInstance_j0(*java_overload_args) if java_overload_args.length == 0
        return getRootInstance_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method getRootInstance takes #{java_overload_args.length} arguments"
    end
    

    def getRootInstanceFromNode(node)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getInstance_j3_1(rootCategoryInterface, parentCategoryInterface, name)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getInstance_j3_2(rootCategoryInterface, parentCategoryInterface, node)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getInstance_j3_3(rootCategoryInterface, parentCategoryInterface, categoryPropertiesHashMap)
        return super if defined?(super)
        raise NotImplementedError
    end

    def getInstance(*java_overload_args)
        return getInstance_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method getInstance takes #{java_overload_args.length} arguments"
    end

    def getInstance_j3(*java_overload_args)
        return getInstance_j3_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(CategoryInterface)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(CategoryInterface)) && (java_overload_args[2].nil? || java_overload_args[2].is_a?(::String))
        return getInstance_j3_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(CategoryInterface)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(CategoryInterface)) && (java_overload_args[2].nil? || java_overload_args[2].is_a?(::Org::W3c::Dom::Node))
        return getInstance_j3_3(*java_overload_args)
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :CategoryInterface, "org/allbinary/business/category/CategoryInterface" unless const_defined?(:CategoryInterface, false)

end; end; end; end

