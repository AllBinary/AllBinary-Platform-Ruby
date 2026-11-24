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
# package org.allbinary.logic.visual.transform.data

require "java/lang/JavaOverload"
require "org/allbinary/logic/visual/transform/data/TransformDocumentInterface"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module DataPackage

class TransformDocument
    include TransformDocumentInterface
    attr_accessor :logUtil, :commonStrings, :baseNode, :document

    def jfields_org_allbinary_logic_visual_transform_data_TransformDocument
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @baseNode = nil unless instance_variable_defined?(:@baseNode)
        @document = nil unless instance_variable_defined?(:@document)
    end
    

    def initialize()
        jfields_org_allbinary_logic_visual_transform_data_TransformDocument
        begin
            @document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create()
            allbinaryNode = @document.createElement("allbinary")
            @baseNode = allbinaryNode
            @document.appendChild(@baseNode)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.putF(self.log(), self, @commonStrings.CONSTRUCTOR)
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
            end
            raise e
        end
    end
    

    def getBaseNode()
        return @baseNode
    end
    java_overload :getBaseNode, 0
    

    def getDoc()
        return @document
    end
    java_overload :getDoc, 0
    

    # throws Exception
    def log()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        if @baseNode != nil
            stringBuffer.append("BaseNode: ")
            stringBuffer.append(@baseNode.getNodeName())
        else
            stringBuffer.append("Log-Error: BaseNode is Null")
        end
        stringBuffer.append("\nDocument: ")
        stringBuffer.append(::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(@document))
        return stringBuffer.to_s
    end
    java_overload :log, 0
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper" unless const_defined?(:XmlDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end

