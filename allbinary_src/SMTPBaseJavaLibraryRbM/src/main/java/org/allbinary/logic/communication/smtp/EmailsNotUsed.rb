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
# package org.allbinary.logic.communication.smtp

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Logic; module Communication; module Smtp

class EmailsNotUsed
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil, :commonStrings, :emailInfoVector

    def jfields_org_allbinary_logic_communication_smtp_EmailsNotUsed
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @emailInfoVector = nil unless instance_variable_defined?(:@emailInfoVector)
    end
    

    def initialize()
        jfields_org_allbinary_logic_communication_smtp_EmailsNotUsed
        @emailInfoVector = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    # throws Exception
    def toXmlNode(document)
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PAYMENT)
                @logUtil.putF(@commonStrings.START, self, "toXmlNode")
            end
            node = document.createElement(EmailData::NAME)
            size = @emailInfoVector.size()
            (0...size).each do |index|
                email = @emailInfoVector.get(index)
                emailNode = email.toXmlNode(document)
                if emailNode != nil
                    node.appendChild(emailNode)
                end
            end
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PAYMENT)
                @logUtil.putF(@commonStrings.END_, self, "toXmlNode()")
            end
            return node
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "toXmlNode()", e)
            end
            error = "Error Processing Order.  Please contact us if error persists.<p/>"
            return ::Org::Allbinary::DataPackage::Tree::Dom::BasicErrorNodeUtil.get(document, error)
        end
    end
    java_overload :toXmlNode, 1
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :BasicErrorNodeUtil, "org/allbinary/data/tree/dom/BasicErrorNodeUtil" unless const_defined?(:BasicErrorNodeUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :Email, "org/allbinary/logic/communication/smtp/Email" unless const_defined?(:Email, false)
autoload :EmailData, "org/allbinary/logic/communication/smtp/EmailData" unless const_defined?(:EmailData, false)

end; end; end; end; end

