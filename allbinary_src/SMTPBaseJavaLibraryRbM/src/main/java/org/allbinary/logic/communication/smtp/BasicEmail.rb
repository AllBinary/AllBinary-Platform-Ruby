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

class BasicEmail
    include EmailInterface
    attr_accessor :email

    def jfields_org_allbinary_logic_communication_smtp_BasicEmail
        @email = nil unless instance_variable_defined?(:@email)
    end
    

    def initialize(emailInfo, to)
        jfields_org_allbinary_logic_communication_smtp_BasicEmail
        basicEmailInfo = emailInfo.getBasicEmailInfo()
        @email = AbEmail.new(basicEmailInfo.getEmailServerConfigurationInterface().getSmtpServer(), basicEmailInfo.getEmailServerConfigurationInterface().getAccountName(), to, basicEmailInfo.getSubject(), basicEmailInfo.getTextBody(), emailInfo.getHtmlAttachment(), emailInfo.getContentBase())
    end
    

    def getEmail()
        return @email.getEmail()
    end
    java_overload :getEmail, 0
    

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
    

    # throws Exception
    def toXmlDoc()
        return @email.toXmlDoc()
    end
    java_overload :toXmlDoc, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info; autoload :BasicEmailInfo, "org/allbinary/logic/communication/smtp/info/BasicEmailInfo" unless const_defined?(:BasicEmailInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info; autoload :EmailInfo, "org/allbinary/logic/communication/smtp/info/EmailInfo" unless const_defined?(:EmailInfo, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :AbEmail, "org/allbinary/logic/communication/smtp/AbEmail" unless const_defined?(:AbEmail, false)
autoload :Email, "org/allbinary/logic/communication/smtp/Email" unless const_defined?(:Email, false)

end; end; end; end; end

