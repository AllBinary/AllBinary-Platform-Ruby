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

require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfig"

class NoTemplateTransformInfoObjectConfig < TransformInfoObjectConfig
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
    def generate(objectConfigDocument)
        docString = XmlDocumentHelper.toString(objectConfigDocument)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Initial ObjectConfig: " + docString, self, "generate()")
        end
        storeName = self.getTransformInfoInterface().getStoreName()
        viewName = self.getTransformInfoInterface().getName()
        hashMap = StdUtil.getInstance().createHashMap()
        _VARKEY = TransformInfoObjectConfigData.getInstance().VARKEY
        hashMap.put(_VARKEY + (StoreFrontData.getInstance().NAME).to_s, storeName)
        hashMap.put(_VARKEY + (TransformInfoData.getInstance().OWNER).to_s, viewName)
        pageName = TransformTemplateCustomizerUtil.getInstance().getPageNameHack(self.getTransformInfoInterface().getName(), self.getTransformInfoInterface().getStoreName())
        hashMap.put(_VARKEY + (TransformInfoData.getInstance().PARTIAL).to_s, pageName)
        replace = Replace.new(hashMap)
        newObjectConfigDocument = DomDocumentHelper.create(replace.all(docString))
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Final ObjectConfig: " + XmlDocumentHelper.toString(newObjectConfigDocument), self, "generate()")
        end
        return newObjectConfigDocument
    end
end

require "java/util/HashMap"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/regex/replace/Replace"
require "org/allbinary/logic/visual/transform/info/TransformInfoData"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData"
require "org/allbinary/logic/visual/transform/template/util/TransformTemplateCustomizerUtil"
require "org/w3c/dom/Document"

