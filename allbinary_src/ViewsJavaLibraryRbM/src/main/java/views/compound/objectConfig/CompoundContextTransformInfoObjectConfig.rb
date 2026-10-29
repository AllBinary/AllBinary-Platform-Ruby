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
# package views.compound.objectConfig

# require "java/io/ByteArrayInputStream"
# require "java/io/InputStream"
require "org/allbinary/logic/visual/transform/info/objectConfig/GenericStoreTransformInfoObjectConfig"

class CompoundContextTransformInfoObjectConfig < GenericStoreTransformInfoObjectConfig
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end

    def initialize(*args)
        case args.length
        when 2 then constructor2(*args)
        when 3 then constructor3(*args)
        when 4 then constructor4(*args)
        end
    end
    

    def constructor2(abeClientInformation, transformInfoInterface)
        method(:initialize).super_method.call(abeClientInformation, transformInfoInterface)
        initialize_fields
    end
    

    def constructor3(abeClientInformation, transformInfoInterface, document)
        method(:initialize).super_method.call(abeClientInformation, transformInfoInterface, document)
        initialize_fields
        self.setDocument(self.generate(self.toXmlDoc()))
    end
    

    def constructor4(abeClientInformation, transformInfoInterface, name, type)
        method(:initialize).super_method.call(abeClientInformation, transformInfoInterface, name, type)
        initialize_fields
        self.setDocument(self.generate(self.toXmlDoc()))
    end
    

    # throws Exception
    def get()
        storeName = self.getTransformInfoInterface().getStoreName()
        httpTransformInfoInterface = self.getTransformInfoInterface()
        templateNameOverride = StringUtil.getInstance().getNonNull(httpTransformInfoInterface.getPropertiesHashMap().get(TransformInfoData.getInstance().PARTIAL))
        stringBuffer = StringMaker.new()
        stringBuffer.append(storeName)
        stringBuffer.append(templateNameOverride)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(RootTransformInfoData::NAME)
        rootComponentInterface = TransformFactory.getInstance().getInstance(@abeClientInformation, stringBuffer.to_s, self.getTransformInfoInterface())
        viewVector = self.getTransformDomNodes()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Root View Called with: " + (viewVector.size()).to_s, self, "get(transformInfoInterface)")
        end
        rootView = rootComponentInterface.view()
        startXMLHeader = "<xsl:text disable-output-escaping=\"yes\" ><![CDATA["
        endXMLHeader = "]]></xsl:text>"
        size = viewVector.size()
        (0...size).each do |index|
            objectConfigTransformInfoDomNode = viewVector.get(index)
            templateKey = objectConfigTransformInfoDomNode.getReplaceKey()
            componentInterface = TransformFactory.getInstance().getInstance(@abeClientInformation, objectConfigTransformInfoDomNode.getTransformInfoInterface().getName(), self.getTransformInfoInterface())
            replacementViewString = componentInterface.view()
            replacementViewString = DocumentToNode.convertDocumentToNodeString(replacementViewString)
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append(startXMLHeader)
            stringBuffer.append(replacementViewString)
            stringBuffer.append(endXMLHeader)
            templateValue = stringBuffer.to_s
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append("Replacing: ")
                stringBuffer.append(templateKey)
                stringBuffer.append(" with ")
                stringBuffer.append(templateValue)
                @logUtil.putF(stringBuffer.to_s, self, "get()")
            end
            replace = Replace.new(templateKey, templateValue)
            rootView = replace.all(rootView)
        end
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("End: Result of a compound view: " + rootView, self, "get()")
        end
        return rootView
    end
    

    # throws Exception
    def createInputStream()
        completeTemplateViewBytes = self.get().getBytes()
        bais = ByteArrayInputStream.new(completeTemplateViewBytes)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Template: " + completeTemplateViewBytes.pack("c*").force_encoding("UTF-8").to_s, self, "createInputStream()")
        end
        return bais
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/data/tree/dom/document/DocumentToNode"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/regex/replace/Replace"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/visual/transform/TransformFactory"
require "org/allbinary/logic/visual/transform/TransformInterface"
require "org/allbinary/logic/visual/transform/info/RootTransformInfoData"
require "org/allbinary/logic/visual/transform/info/TransformInfoData"
require "org/allbinary/logic/visual/transform/info/TransformInfoDomNode"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/string/CommonSeps"
require "org/w3c/dom/Document"

