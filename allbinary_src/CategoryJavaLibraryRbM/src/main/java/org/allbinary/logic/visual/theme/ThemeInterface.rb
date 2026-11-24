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
# package org.allbinary.logic.visual.theme

require "java/lang/JavaOverload"
require "org/allbinary/data/tables/TableMappingInterface"

module ::Org; module Allbinary; module Logic; module Visual; module Theme

module ThemeInterface
    include ::Org::Allbinary::DataPackage::Tables::TableMappingInterface
    

    def getName()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getName, 0
    

    def getPath()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getPath, 0
    

    def getPreviewImageName()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getPreviewImageName, 0
    

    def getPreviewImagePath()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getPreviewImagePath, 0
end

end; end; end; end; end

