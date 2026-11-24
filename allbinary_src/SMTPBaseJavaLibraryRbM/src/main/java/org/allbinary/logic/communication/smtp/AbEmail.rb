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
# require "javax/mail/internet/MimeMessage"
require "org/allbinary/logic/communication/smtp/EmailInterface"

module ::Org; module Allbinary; module Logic; module Communication; module Smtp

class AbEmail
    include EmailInterface
    attr_accessor :email

    def jfields_org_allbinary_logic_communication_smtp_AbEmail
        @email = nil unless instance_variable_defined?(:@email)
    end
    

    def initialize(server, from, to, subject, textBody, htmlAttachment, contentBase)
        jfields_org_allbinary_logic_communication_smtp_AbEmail
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR)
            @email = Email.new(from, to, subject, server, textBody, htmlAttachment, contentBase, true)
        else
            @email = Email.new(from, to, subject, server, textBody, htmlAttachment, contentBase)
        end
    end
    

    def getMimeMessage()
        return @email.getMimeMessage()
    end
    java_overload :getMimeMessage, 0
    

    def getDebugInfo()
        return @email.getDebugInfo()
    end
    java_overload :getDebugInfo, 0
    

    # throws Exception
    def log()
        return @email.log()
    end
    java_overload :log, 0
    

    # throws Exception
    def toHashMap()
        return @email.toHashMap()
    end
    java_overload :toHashMap, 0
    

    # throws Exception
    def toXmlNode(document)
        return @email.toXmlNode(document)
    end
    java_overload :toXmlNode, 1
    

    def getEmail()
        return @email
    end
    java_overload :getEmail, 0
    

    # throws Exception
    def toXmlDoc()
        return @email.toXmlDoc()
    end
    java_overload :toXmlDoc, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :Email, "org/allbinary/logic/communication/smtp/Email" unless const_defined?(:Email, false)

end; end; end; end; end

