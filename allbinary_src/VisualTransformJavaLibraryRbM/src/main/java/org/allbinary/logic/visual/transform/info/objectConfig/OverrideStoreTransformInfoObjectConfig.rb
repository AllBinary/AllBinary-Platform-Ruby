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
# package org.allbinary.logic.visual.transform.info.objectConfig

require "org/allbinary/logic/visual/transform/info/objectConfig/GenericStoreTransformInfoObjectConfig"

class OverrideStoreTransformInfoObjectConfig < GenericStoreTransformInfoObjectConfig

    def initialize(*args)
        case args.length
        when 2 then constructor2(*args)
        when 3 then constructor3(*args)
        when 4 then constructor4(*args)
        end
    end
    

    def constructor2(abeClientInformation, transformInfoInterface)
        method(:initialize).super_method.call(abeClientInformation, transformInfoInterface)
    end
    

    def constructor3(abeClientInformation, transformInfoInterface, document)
        method(:initialize).super_method.call(abeClientInformation, transformInfoInterface, document)
        self.setDocument(self.generate(self.toXmlDoc()))
    end
    

    def constructor4(abeClientInformation, transformInfoInterface, name, type)
        method(:initialize).super_method.call(abeClientInformation, transformInfoInterface, name, type)
        self.setDocument(self.generate(self.toXmlDoc()))
    end
    

    # throws Exception
    def generate(objectConfigDocument)
        newObjectConfigDocument = super(objectConfigDocument)
        return newObjectConfigDocument
    end
end

require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/w3c/dom/Document"

