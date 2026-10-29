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
# package org.allbinary.logic.control.workflow.request

# require "java/util/Set"
# require "javax/servlet/jsp/PageContext"

class BasicWorkFlow
    attr_accessor :logUtil, :commonStrings, :workFlowDoc, :workFlowName, :storeName

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @workFlowDoc = nil
        @workFlowName = nil
        @storeName = nil
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 2 then constructor2(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        initialize_fields
        @workFlowName = StringUtil.getInstance().EMPTY_STRING
        @workFlowDoc = DomDocumentHelper.create()
        workFlowNode = @workFlowDoc.createElement(WorkFlowData.getInstance().WORKFLOW)
        @workFlowDoc.appendChild(workFlowNode)
    end
    

    def constructor2(hashMap, pageContext)
        initialize_fields
        weblisketSession = WeblisketSession.new(hashMap, pageContext)
        @storeName = weblisketSession.getStoreName()
        requestHashMap = RequestParams.new(pageContext).toHashMap()
        @workFlowName = requestHashMap.get(WorkFlowData.getInstance().NAME)
        @workFlowDoc = DomDocumentHelper.create(requestHashMap.get(WorkFlowData.getInstance().DATA))
    end
    

    def constructor1(hashMap)
        initialize_fields
        @workFlowName = hashMap.get(WorkFlowData.getInstance().NAME)
        @storeName = hashMap.get(StoreFrontData.getInstance().NAME)
        @workFlowDoc = DomDocumentHelper.create(hashMap.get(WorkFlowData.getInstance().DATA))
    end
    

    def getName()
        return @workFlowName
    end
    

    def getStoreName()
        return @storeName
    end
    

    def getKey()
        return self.getName()
    end
    

    # throws Exception
    def toVector()
        values = BasicArrayListD.new()
        values.add(@workFlowName)
        values.add(@storeName)
        values.add(XmlDocumentHelper.toString(@workFlowDoc))
        calendar = Calendar.getInstance()
        time = String.new(calendar.getTimeInMillis().to_s)
        values.add(time)
        values.add(time)
        return values
    end
    

    # throws Exception
    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(WorkFlowData.getInstance().NAME, @workFlowName)
        hashMap.put(StoreFrontData.getInstance().NAME, @storeName)
        hashMap.put(WorkFlowData.getInstance().DATA, XmlDocumentHelper.toString(@workFlowDoc))
        calendar = Calendar.getInstance()
        time = String.new(calendar.getTimeInMillis().to_s)
        hashMap.put(EntryData.getInstance().LASTMODIFIED, time)
        return hashMap
    end
    

    def toXmlNode(document)
        begin
            hashMap = self.toHashMap()
            keySet = hashMap.keySet()
            node = document.createElement(WorkFlowData.getInstance().WORKFLOW)
            nameArray = keySet.toArray()
            size = nameArray.length
            (0...size).each do |index|
                name = nameArray[index]
                value = hashMap.get(name)
                node.appendChild(ModDomHelper.createNameValueNodes(document, name, value))
            end
            return node
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "toXmlNode()", e)
            end
            return nil
        end
    end
    

    def toXmlDoc()
        begin
            return @workFlowDoc
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "toXmlDoc()", e)
            end
            return nil
        end
    end
    

    def isValid()
        begin
            returnBoolean = true
            if @workFlowName == nil
                returnBoolean = false
            end
            return returnBoolean
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to validate", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    def validationInfo()
        begin
            stringBuffer = StringMaker.new()
            if @workFlowName == nil
                stringBuffer.append("No WorkFlow name specified.")
            end
            return stringBuffer.to_s
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Getting Validation Info"
        end
    end
    

    def toValidationInfoDoc()
        return nil
    end
    

    def toValidationInfoNode(document)
        return nil
    end
end

require "java/util/Calendar"
require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/http/request/RequestParams"
require "org/allbinary/logic/communication/http/request/session/WeblisketSession"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/workflow/WorkFlowData"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

