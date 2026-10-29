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
# package org.allbinary.logic.visual.transform.info.dom


class TransformInfoPropertiesDocument
    attr_accessor :logUtil, :document

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @document = nil
    end
    

    def initialize(filePath)
        initialize_fields
        xmlFile = AbFile.createAbFile(filePath)
        @document = DomDocumentFileHelper.createDocument(xmlFile)
    end
    

    def toTransformInfoPropertiesHashMap()
        begin
            transformInfoPropertiesHashMap = StdUtil.getInstance().createHashMap()
            transformInfosNode = @document.getElementsByTagName(TransformInfosData.getInstance().NAME).item(0)
            transformInfosChildNodeList = transformInfosNode.getChildNodes()
            transformInfoNodeVector = DomSearchHelper.getAllNodes(TransformInfoData.getInstance().NAME, transformInfosChildNodeList)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Size: " + (transformInfoNodeVector.size()).to_s, self, "toTransformInfoPropertiesHashMap()")
            end
            size = transformInfoNodeVector.size()
            node = nil
            transformInfoProperties = nil
            (0...size).each do |index|
                node = transformInfoNodeVector.get(index)
                transformInfoProperties = TransformInfoPropertiesFactory.getInstance().getInstance(node)
                transformInfoPropertiesHashMap.put(transformInfoProperties.getName(), transformInfoProperties)
            end
            return transformInfoPropertiesHashMap
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                commonStrings = CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, "toTransformInfoPropertiesHashMap()", e)
            end
            return nil
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/data/tree/dom/document/DomDocumentFileHelper"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/visual/transform/info/TransformInfoData"
require "org/allbinary/logic/visual/transform/info/TransformInfoProperties"
require "org/allbinary/logic/visual/transform/info/TransformInfoPropertiesFactory"
require "org/allbinary/logic/visual/transform/info/TransformInfosData"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"

