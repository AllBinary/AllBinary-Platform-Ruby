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

require "org/allbinary/business/category/hierarchy/CategoryHierarchyInterface"

class CategoryHierarchy
    include CategoryHierarchyInterface
    attr_accessor :rootCategoryInterface, :parentCategoryInterface, :level

    def initialize_fields
        @rootCategoryInterface = nil
        @parentCategoryInterface = nil
        @level = nil
    end

    def initialize(*args)
        case args.length
        when 2 then constructor2(*args)
        when 3 then constructor3(*args)
        when 3 then constructor3(*args)
        end
    end
    

    def constructor2(rootCategoryInterface, parentCategoryInterface)
        initialize_fields
        @level = 0
        self.setRoot(rootCategoryInterface)
        self.setParent(parentCategoryInterface)
    end
    

    def constructor3(rootCategoryInterface, parentCategoryInterface, level)
        initialize_fields
        @level = level
        self.setRoot(rootCategoryInterface)
        self.setParent(parentCategoryInterface)
    end
    

    def constructor3(rootCategoryInterface, parentCategoryInterface, categoryPropertiesHashMap)
        initialize_fields
        levelString = StringUtil.getInstance().getNonNull(categoryPropertiesHashMap.get(CategoryData.getInstance().LEVEL))
        @level = (levelString).to_s.to_i
        self.setRoot(rootCategoryInterface)
        self.setParent(parentCategoryInterface)
    end
    

    def getLevel()
        return @level
    end
    

    def getLevelString()
        return (@level).to_s
    end
    

    def setLevel(level)
        @level = level
    end
    

    def setParent(categoryInterface)
        @parentCategoryInterface = categoryInterface
    end
    

    def setRoot(categoryInterface)
        @rootCategoryInterface = categoryInterface
    end
    

    def getRoot()
        return @rootCategoryInterface
    end
    

    def getParent()
        return @parentCategoryInterface
    end
end

require "java/util/HashMap"
require "org/allbinary/business/category/CategoryData"
require "org/allbinary/business/category/CategoryInterface"
require "org/allbinary/logic/string/StringUtil"

