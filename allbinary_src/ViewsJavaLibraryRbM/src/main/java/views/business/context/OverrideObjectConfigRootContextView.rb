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
# package views.business.context

require "views/business/context/modules/storefront/HttpStoreComponentView"

class OverrideObjectConfigRootContextView < HttpStoreComponentView
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + transformInfoInterface.getName(), self, "OverrideObjectRootContextView()")
        end
    end
    

    # throws Exception
    def view()
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("View Name: " + self.getTransformInfoInterface().getName(), self, "view()")
            end
            rootTransformInfoInterface = TransformInfoHttp.new(self.getTransformInfoInterface())
            stringBuffer = StringMaker.new()
            stringBuffer.append(self.getTransformInfoInterface().getStoreName())
            stringBuffer.append(CommonSeps.getInstance().SPACE)
            nameStart = stringBuffer.to_s
            if self.getTransformInfoInterface().getName().indexOf(GeneratorTransformInfoData::NAME) > 0
                rootTransformInfoInterface.setName(nameStart + (GeneratorTransformInfoData::NAME).to_s)
            elsif self.getTransformInfoInterface().getName().indexOf(RootTransformInfoData::NAME) > 0
                rootTransformInfoInterface.setName(nameStart + (RootTransformInfoData::NAME).to_s)
            else
                raise StandardError.new("Override Currently Not Supported")
            end
            overrideObjectConfigDocument = self.getTransformInfoInterface().getObjectConfigInterface().toXmlDoc()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Retrieved OverrideObjectConfig: " + XmlDocumentHelper.toString(overrideObjectConfigDocument), self, "view()")
            end
            transformFactory = TransformFactory.getInstance()
            rootComponentInterface = transformFactory.getInstance(@abeClientInformation, rootTransformInfoInterface.getName(), rootTransformInfoInterface)
            transformTemplateInterface = rootComponentInterface
            componentInterface = transformFactory.getInstance(@abeClientInformation, transformTemplateInterface.getName(), rootComponentInterface.getTransformInfoInterface())
            transformInfoObjectConfigInterface = TransformInfoObjectConfigAndManipulatorFactory.getInstance().getInstance(@abeClientInformation, componentInterface.getTransformInfoInterface(), overrideObjectConfigDocument)
            componentInterface.getTransformInfoInterface().setObjectConfigInterface(transformInfoObjectConfigInterface)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Set OverrideObjectConfig: " + componentInterface.getTransformInfoInterface().getObjectConfigInterface().to_s, self, "view()")
            end
            return componentInterface.view()
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
end

require "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/visual/transform/TransformFactory"
require "org/allbinary/logic/visual/transform/TransformInterface"
require "org/allbinary/logic/visual/transform/info/GeneratorTransformInfoData"
require "org/allbinary/logic/visual/transform/info/RootTransformInfoData"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttp"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigAndManipulatorFactory"
require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface"
require "org/allbinary/logic/visual/transform/template/TransformTemplateInterface"
require "org/allbinary/string/CommonSeps"
require "org/w3c/dom/Document"

