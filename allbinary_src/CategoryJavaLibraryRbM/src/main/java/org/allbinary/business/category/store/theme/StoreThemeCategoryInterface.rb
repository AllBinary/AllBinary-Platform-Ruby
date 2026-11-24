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

require "java/lang/JavaOverload"
require "org/allbinary/business/category/CategoryInterface"
require "org/allbinary/data/tables/TableMappingInterface"
require "org/allbinary/logic/control/validate/ValidationInterface"
require "org/allbinary/logic/visual/transform/info/CompositeTransformInfoInterface"

module ::Org; module Allbinary; module Business; module Category; module Store; module Theme

module StoreThemeCategoryInterface
    include ::Org::Allbinary::Business::Category::CategoryInterface
    include ::Org::Allbinary::DataPackage::Tables::TableMappingInterface
    include ::Org::Allbinary::Logic::ControlPackage::Validate::ValidationInterface
    include ::Org::Allbinary::Logic::Visual::Transform::Info::CompositeTransformInfoInterface
    

    def addTheme(themeValidation)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :addTheme, 1
    

    def getThemes()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getThemes, 0
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Theme; autoload :ThemeValidation, "org/allbinary/logic/visual/theme/ThemeValidation" unless const_defined?(:ThemeValidation, false); end; end; end; end; end

end; end; end; end; end; end

