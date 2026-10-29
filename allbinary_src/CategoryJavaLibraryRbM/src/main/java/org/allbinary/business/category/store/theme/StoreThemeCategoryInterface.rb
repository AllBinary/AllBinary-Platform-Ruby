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
# package org.allbinary.business.category.store.theme

require "org/allbinary/business/category/CategoryInterface"
require "org/allbinary/data/tables/TableMappingInterface"
require "org/allbinary/logic/control/validate/ValidationInterface"
require "org/allbinary/logic/visual/transform/info/CompositeTransformInfoInterface"

module StoreThemeCategoryInterface
    include CategoryInterface
    include TableMappingInterface
    include ValidationInterface
    include CompositeTransformInfoInterface
    

    def addTheme(themeValidation)
        raise NotImplementedError
    end
    

    def getThemes()
        raise NotImplementedError
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/visual/theme/ThemeValidation"

