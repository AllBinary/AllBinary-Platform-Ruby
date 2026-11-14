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
# package org.allbinary.logic.visual.transform

# require "javax/xml/transform/URIResolver"
require "org/allbinary/logic/visual/transform/BasicTransformer"

class TransformInfoCustomUriTransformer < BasicTransformer
    

    def initialize(abeClientInformation, transformInfoInterface)
        super(abeClientInformation, transformInfoInterface)
        transformInfoObjectConfigInterface = TransformInfoObjectConfigAndManipulatorFactory.getInstance().getInstance(abeClientInformation, transformInfoInterface)
        self.setURIResolver(CustomUriResolver.new(transformInfoObjectConfigInterface.getImportUriPath(), self.getURIResolver()))
    end
end

autoload :BasicUriResolver, "org/allbinary/data/tree/dom/BasicUriResolver"
autoload :CustomUriResolver, "org/allbinary/data/tree/dom/CustomUriResolver"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :TransformInfoObjectConfigAndManipulatorFactory, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigAndManipulatorFactory"
autoload :TransformInfoObjectConfigInterface, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface"

