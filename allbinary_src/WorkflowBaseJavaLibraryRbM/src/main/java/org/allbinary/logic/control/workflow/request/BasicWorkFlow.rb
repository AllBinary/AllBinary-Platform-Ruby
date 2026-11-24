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

require "java/lang/JavaClass"
# require "java/util/Set"
# require "javax/servlet/jsp/PageContext"

module ::Org; module Allbinary; module Logic; module ControlPackage; module Workflow; module Request

class BasicWorkFlow
    attr_accessor :logUtil, :commonStrings, :workFlowDoc, :workFlowName, :storeName

    def jfields_org_allbinary_logic_control_workflow_request_BasicWorkFlow
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @workFlowDoc = nil unless instance_variable_defined?(:@workFlowDoc)
        @workFlowName = nil unless instance_variable_defined?(:@workFlowName)
        @storeName = nil unless instance_variable_defined?(:@storeName)
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_logic_control_workflow_request_BasicWorkFlow_0(*args)
        when 2 then jnew_org_allbinary_logic_control_workflow_request_BasicWorkFlow_2(*args)
        when 1 then jnew_org_allbinary_logic_control_workflow_request_BasicWorkFlow_1(*args)
        else raise ArgumentError, "No constructor of BasicWorkFlow takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_logic_control_workflow_request_BasicWorkFlow_0()
        jfields_org_allbinary_logic_control_workflow_request_BasicWorkFlow
        @workFlowName = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @workFlowDoc = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create()
        workFlowNode = @workFlowDoc.createElement(::Org::Allbinary::Logic::ControlPackage::Workflow::WorkFlowData.getInstance().WORKFLOW)
        @workFlowDoc.appendChild(workFlowNode)
    end
    

    def jnew_org_allbinary_logic_control_workflow_request_BasicWorkFlow_2(hashMap, pageContext)
        jfields_org_allbinary_logic_control_workflow_request_BasicWorkFlow
        weblisketSession = ::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSession.new(hashMap, pageContext)
        @storeName = weblisketSession.getStoreName()
        requestHashMap = ::Org::Allbinary::Logic::Communication::Http::Request::RequestParams.new(pageContext).toHashMap()
        @workFlowName = requestHashMap.get(::Org::Allbinary::Logic::ControlPackage::Workflow::WorkFlowData.getInstance().NAME)
        @workFlowDoc = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(requestHashMap.get(::Org::Allbinary::Logic::ControlPackage::Workflow::WorkFlowData.getInstance().DATA))
    end
    

    def jnew_org_allbinary_logic_control_workflow_request_BasicWorkFlow_1(hashMap)
        jfields_org_allbinary_logic_control_workflow_request_BasicWorkFlow
        @workFlowName = hashMap.get(::Org::Allbinary::Logic::ControlPackage::Workflow::WorkFlowData.getInstance().NAME)
        @storeName = hashMap.get(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME)
        @workFlowDoc = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(hashMap.get(::Org::Allbinary::Logic::ControlPackage::Workflow::WorkFlowData.getInstance().DATA))
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
        values = ::Org::Allbinary::Util::BasicArrayListD.new()
        values.add(@workFlowName)
        values.add(@storeName)
        values.add(::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(@workFlowDoc))
        calendar = ::Java::Util::Calendar.getInstance()
        time = String.new(calendar.getTimeInMillis().to_s)
        values.add(time)
        values.add(time)
        return values
    end
    

    # throws Exception
    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        hashMap.put(::Org::Allbinary::Logic::ControlPackage::Workflow::WorkFlowData.getInstance().NAME, @workFlowName)
        hashMap.put(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME, @storeName)
        hashMap.put(::Org::Allbinary::Logic::ControlPackage::Workflow::WorkFlowData.getInstance().DATA, ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(@workFlowDoc))
        calendar = ::Java::Util::Calendar.getInstance()
        time = String.new(calendar.getTimeInMillis().to_s)
        hashMap.put(::Org::Allbinary::Business::Entry::EntryData.getInstance().LASTMODIFIED, time)
        return hashMap
    end
    

    def toXmlNode(document)
        begin
            hashMap = self.toHashMap()
            keySet = hashMap.keySet()
            node = document.createElement(::Org::Allbinary::Logic::ControlPackage::Workflow::WorkFlowData.getInstance().WORKFLOW)
            nameArray = keySet.toArray()
            size = nameArray.length
            (0...size).each do |index|
                name = nameArray[index]
                value = hashMap.get(name)
                node.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, name, value))
            end
            return node
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "toXmlNode()", e)
            end
            return nil
        end
    end
    

    def toXmlDoc()
        begin
            return @workFlowDoc
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to validate", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    def validationInfo()
        begin
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            if @workFlowName == nil
                stringBuffer.append("No WorkFlow name specified.")
            end
            return stringBuffer.to_s
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
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

module ::Java; module Util; autoload :Calendar, "java/util/Calendar" unless const_defined?(:Calendar, false); end; end
module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper" unless const_defined?(:XmlDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :RequestParams, "org/allbinary/logic/communication/http/request/RequestParams" unless const_defined?(:RequestParams, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSession, "org/allbinary/logic/communication/http/request/session/WeblisketSession" unless const_defined?(:WeblisketSession, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Workflow; autoload :WorkFlowData, "org/allbinary/logic/control/workflow/WorkFlowData" unless const_defined?(:WorkFlowData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end

