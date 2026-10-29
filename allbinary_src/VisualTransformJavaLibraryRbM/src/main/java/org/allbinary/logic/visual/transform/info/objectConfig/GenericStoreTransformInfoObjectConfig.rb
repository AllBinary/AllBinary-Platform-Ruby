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

require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfig"

class GenericStoreTransformInfoObjectConfig < TransformInfoObjectConfig
    attr_accessor :logUtil, :abeClientInformation

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @abeClientInformation = nil
    end

    def initialize(*args)
        case args.length
        when 2 then constructor2(*args)
        when 3 then constructor3(*args)
        when 4 then constructor4(*args)
        end
    end
    

    def constructor2(abeClientInformation, transformInfoInterface)
        method(:initialize).super_method.call(transformInfoInterface)
        initialize_fields
        @abeClientInformation = abeClientInformation
    end
    

    def constructor3(abeClientInformation, transformInfoInterface, document)
        method(:initialize).super_method.call(transformInfoInterface, document)
        initialize_fields
        @abeClientInformation = abeClientInformation
        self.setDocument(self.generate(self.toXmlDoc()))
    end
    

    def constructor4(abeClientInformation, transformInfoInterface, name, type)
        method(:initialize).super_method.call(transformInfoInterface, name, type)
        initialize_fields
        @abeClientInformation = abeClientInformation
        self.setDocument(self.generate(self.toXmlDoc()))
    end
    

    # throws Exception
    def generate(objectConfigDocument)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            stringBuffer = StringMaker.new()
            stringBuffer.append("TransformInfo: ")
            if self.getTransformInfoInterface() != nil
                stringBuffer.append(self.getTransformInfoInterface().getName())
            else
                stringBuffer.append("No Owner!?#@")
            end
            @logUtil.putF(stringBuffer.to_s, self, "generate()")
        end
        transformInfoHttpStoreInterface = self.getTransformInfoInterface()
        objectConfigDocumentString = XmlDocumentHelper.toString(objectConfigDocument)
        replaceHashMap = self.createReplaceHashMap(transformInfoHttpStoreInterface, objectConfigDocumentString)
        return self.generate(objectConfigDocumentString, replaceHashMap)
    end
    

    # throws Exception
    def createReplaceHashMap(transformInfoHttpStoreInterface, objectConfigDocumentString)
        storeName = transformInfoHttpStoreInterface.getStoreName()
        hashMap = self.createHashMap(transformInfoHttpStoreInterface, objectConfigDocumentString)
        transformInfoObjectConfigData = TransformInfoObjectConfigData.getInstance()
        hashMap.put(transformInfoObjectConfigData.VARKEY + StoreFrontData.getInstance().NAME, storeName)
        pageName = TransformTemplateCustomizerUtil.getInstance().getPageNameHack(self.getTransformInfoInterface().getName(), storeName)
        hashMap.put(transformInfoObjectConfigData.VARKEY + TransformInfoData.getInstance().PARTIAL, pageName)
        return hashMap
    end
    

    # throws Exception
    def createHashMap(transformInfoHttpStoreInterface, objectConfigDocumentString)
        hashMap = StdUtil.getInstance().createHashMap()
        storeName = transformInfoHttpStoreInterface.getStoreName()
        propertiesHashMap = transformInfoHttpStoreInterface.getPropertiesHashMap()
        templateNameOverride = StringUtil.getInstance().getNonNull(propertiesHashMap.get(TransformInfoData.getInstance().PARTIAL))
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("TemplateNameOverride: " + templateNameOverride, self, "generate()")
        end
        templateNameStringBuffer = StringMaker.new()
        templateNameStringBuffer.append(storeName)
        templateNameStringBuffer.append(templateNameOverride)
        templateNameStringBuffer.append(CommonSeps.getInstance().SPACE)
        templateNameStringBuffer.append(RootTransformInfoData::NAME)
        templateNameKey = TransformInfoObjectConfigData.getInstance().VARKEY + TransformInfoData.getInstance().OWNER
        if (objectConfigDocumentString.index(templateNameKey) || -1) != -1
            templateInterface = TransformTemplateFactory.getInstance().getInstance(@abeClientInformation, templateNameStringBuffer.to_s, transformInfoHttpStoreInterface.getPropertiesHashMap(), transformInfoHttpStoreInterface.getPageContext())
            selectedTemplate = templateInterface.getName()
            hashMap.put(templateNameKey, selectedTemplate)
        end
        return hashMap
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def generate(objectConfigDocumentString, hashMap)
        replace = Replace.new(hashMap)
        newObjectConfigDocument = DomDocumentHelper.create(replace.all(objectConfigDocumentString))
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
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/regex/replace/Replace"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/visual/transform/info/RootTransformInfoData"
require "org/allbinary/logic/visual/transform/info/TransformInfoData"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttp"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/logic/visual/transform/template/TransformTemplateFactory"
require "org/allbinary/logic/visual/transform/template/TransformTemplateInterface"
require "org/allbinary/logic/visual/transform/template/util/TransformTemplateCustomizerUtil"
require "org/allbinary/string/CommonSeps"
require "org/w3c/dom/Document"
require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData"

