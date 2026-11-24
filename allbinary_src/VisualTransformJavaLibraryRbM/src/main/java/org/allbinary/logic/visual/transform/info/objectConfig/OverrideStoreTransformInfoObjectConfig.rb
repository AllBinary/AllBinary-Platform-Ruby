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

require "java/lang/JavaOverload"
require "org/allbinary/logic/visual/transform/info/objectConfig/GenericStoreTransformInfoObjectConfig"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig

class OverrideStoreTransformInfoObjectConfig < GenericStoreTransformInfoObjectConfig

    def initialize(*args)
        case args.length
        when 2 then jnew_org_allbinary_logic_visual_transform_info_objectConfig_OverrideStoreTransformInfoObjectConfig_2(*args)
        when 3 then jnew_org_allbinary_logic_visual_transform_info_objectConfig_OverrideStoreTransformInfoObjectConfig_3(*args)
        when 4 then jnew_org_allbinary_logic_visual_transform_info_objectConfig_OverrideStoreTransformInfoObjectConfig_4(*args)
        else raise ArgumentError, "No constructor of OverrideStoreTransformInfoObjectConfig takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_objectConfig_OverrideStoreTransformInfoObjectConfig_2(abeClientInformation, transformInfoInterface)
        OverrideStoreTransformInfoObjectConfig.superclass.instance_method(:initialize).bind(self).call(abeClientInformation, transformInfoInterface)
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_objectConfig_OverrideStoreTransformInfoObjectConfig_3(abeClientInformation, transformInfoInterface, document)
        OverrideStoreTransformInfoObjectConfig.superclass.instance_method(:initialize).bind(self).call(abeClientInformation, transformInfoInterface, document)
        self.setDocument(self.generate(self.toXmlDoc()))
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_objectConfig_OverrideStoreTransformInfoObjectConfig_4(abeClientInformation, transformInfoInterface, name, type)
        OverrideStoreTransformInfoObjectConfig.superclass.instance_method(:initialize).bind(self).call(abeClientInformation, transformInfoInterface, name, type)
        self.setDocument(self.generate(self.toXmlDoc()))
    end
    

    # throws Exception
    def generate(objectConfigDocument)
        newObjectConfigDocument = OverrideStoreTransformInfoObjectConfig.superclass.java_super_method(:generate, 1).bind(self).call(objectConfigDocument)
        return newObjectConfigDocument
    end
    java_overload :generate, 1
end

module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end

end; end; end; end; end; end; end

