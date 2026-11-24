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
# package org.allbinary.logic.visual.transform.info

require "java/lang/JavaOverload"
# require "javax/servlet/jsp/PageContext"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpStore"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info

class TransformInfoHttpStoreNoManipulation < TransformInfoHttpStore
    

    def initialize(propertiesHashMap, pageContext)
        super(propertiesHashMap, pageContext)
    end
    

    # throws Exception
    def setObjectConfigFile(value)
        self.setObjectConfigFileName(value)
        self.setObjectConfigInterface(::Org::Allbinary::Logic::Visual::Transform::Info::ObjectConfig::TransformInfoObjectConfigNoManipulationFactory.getInstance().getInstance(self, self.getObjectConfigFilePath()))
    end
    java_overload :setObjectConfigFile, 1
    

    # throws Exception
    def setObjectConfig(value)
        raise StandardError.new("Should not set from config")
    end
    java_overload :setObjectConfig, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; autoload :TransformInfoObjectConfigNoManipulationFactory, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigNoManipulationFactory" unless const_defined?(:TransformInfoObjectConfigNoManipulationFactory, false); end; end; end; end; end; end; end

end; end; end; end; end; end

