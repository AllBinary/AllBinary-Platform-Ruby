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

require "org/allbinary/logic/visual/transform/template/TransformTemplateInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

class RootContextView < HttpStoreComponentView
    include TransformTemplateInterface
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + transformInfoInterface.getName(), self, "RootContextView()")
        end
    end
    

    # throws Exception
    def view()
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("View Name: " + self.getTransformInfoInterface().getName(), self, "view()")
            end
            viewName = self.getName()
            componentInterface = TransformFactory.getInstance().getInstance(@abeClientInformation, viewName, self.getTransformInfoInterface())
            return componentInterface.view()
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
    

    # throws Exception
    def getName()
        begin
            objectConfig = NoTemplateTransformInfoObjectConfig.new(self.getTransformInfoInterface(), self.getTransformInfoInterface().getObjectConfigInterface().toXmlDoc())
            componentsVector = objectConfig.getTransforms()
            if componentsVector.size() == 0
                raise StandardError.new("Template View Not Set - No Components")
            end
            if componentsVector.size() > 1
                raise StandardError.new("To Many Root Template Views: " + (componentsVector.size()).to_s)
            end
            transformInfoInterface = componentsVector.get(0)
            viewName = transformInfoInterface.getName()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Root Template With View Name: " + viewName, self, "getName()")
            end
            if StringValidationUtil.getInstance().isEmpty(viewName)
                raise StandardError.new("Template View Not Set - No View Name")
            end
            return viewName
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getName()", e)
            end
            raise e
        end
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/visual/transform/TransformFactory"
require "org/allbinary/logic/visual/transform/TransformInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfo"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "views/business/context/modules/storefront/customizer/template/objectConfig/NoTemplateTransformInfoObjectConfig"

