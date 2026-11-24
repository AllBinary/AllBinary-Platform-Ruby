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
# package org.allbinary.business.category.hierarchy


module ::Org; module Allbinary; module Business; module Category; module Hierarchy

module CategoryHierarchyInterface
    

    def getLevel()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getLevelString()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getRoot()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getParent()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setLevel(level)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setRoot(categoryInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setParent(categoryInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Business; module Category; autoload :CategoryInterface, "org/allbinary/business/category/CategoryInterface" unless const_defined?(:CategoryInterface, false); end; end; end; end

end; end; end; end; end

