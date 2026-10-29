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
# package views.business.context.modules.storefront.customizer.template.objectConfig

require "views/business/context/modules/storefront/customizer/template/objectConfig/NoTemplateTransformInfoObjectConfig"

class InsertTemplateCustomizerTransformInfoObjectConfig < NoTemplateTransformInfoObjectConfig
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 2 then constructor2(*args)
        when 3 then constructor3(*args)
        end
    end
    

    def constructor1(transformInfoInterface)
        method(:initialize).super_method.call(transformInfoInterface)
        initialize_fields
    end
    

    def constructor2(transformInfoInterface, document)
        method(:initialize).super_method.call(transformInfoInterface, document)
        initialize_fields
        self.setDocument(self.generate(self.toXmlDoc()))
    end
    

    def constructor3(transformInfoInterface, name, type)
        method(:initialize).super_method.call(transformInfoInterface, name, type)
        initialize_fields
        self.setDocument(self.generate(self.toXmlDoc()))
    end
    

    # throws Exception
    def set(aParentViewName)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Setting: " + aParentViewName, self, "set()")
        end
        document = self.toXmlDoc()
        parentComponentsNodeList = document.getElementsByTagName(TransformInfosData.getInstance().NAME)
        if parentComponentsNodeList != nil && parentComponentsNodeList.getLength() > 0
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Replacing", self, "set()")
            end
            componentNode = parentComponentsNodeList.item(0).getChildNodes().item(0)
            if componentNode != nil
                document.removeChild(componentNode)
            end
            parentComponentsNodeList.item(0).appendChild(TransformInfoDomNodeView.new(aParentViewName).toXmlNode(document))
        else
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Setting", self, "set()")
            end
            objectConfigNode = document.getElementsByTagName(TransformInfoObjectConfigData.getInstance().NAME).item(0)
            parentComponentsNode = document.createElement(TransformInfosData.getInstance().NAME)
            objectConfigNode.appendChild(parentComponentsNode)
            transformInfoDomNodeView = TransformInfoDomNodeView.new(aParentViewName)
            parentComponentsNode.appendChild(transformInfoDomNodeView.toXmlNode(document))
        end
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/visual/transform/info/TransformInfoDomNodeView"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfosData"
require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"

