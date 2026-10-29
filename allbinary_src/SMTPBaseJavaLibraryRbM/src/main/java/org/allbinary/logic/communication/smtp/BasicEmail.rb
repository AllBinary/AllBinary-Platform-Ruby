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

# require "javax/mail/internet/MimeMessage"
require "org/allbinary/logic/communication/smtp/EmailInterface"

class BasicEmail
    include EmailInterface
    attr_accessor :email

    def initialize_fields
        @email = nil
    end
    

    def initialize(emailInfo, to)
        initialize_fields
        basicEmailInfo = emailInfo.getBasicEmailInfo()
        @email = AbEmail.new(basicEmailInfo.getEmailServerConfigurationInterface().getSmtpServer(), basicEmailInfo.getEmailServerConfigurationInterface().getAccountName(), to, basicEmailInfo.getSubject(), basicEmailInfo.getTextBody(), emailInfo.getHtmlAttachment(), emailInfo.getContentBase())
    end
    

    def getEmail()
        return @email.getEmail()
    end
    

    def getMimeMessage()
        return @email.getMimeMessage()
    end
    

    def getDebugInfo()
        return @email.getDebugInfo()
    end
    

    # throws Exception
    def log()
        return @email.log()
    end
    

    # throws Exception
    def toHashMap()
        return @email.toHashMap()
    end
    

    # throws Exception
    def toXmlNode(document)
        return @email.toXmlNode(document)
    end
    

    # throws Exception
    def toXmlDoc()
        return @email.toXmlDoc()
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/communication/smtp/info/BasicEmailInfo"
require "org/allbinary/logic/communication/smtp/info/EmailInfo"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/logic/communication/smtp/AbEmail"
require "org/allbinary/logic/communication/smtp/Email"

