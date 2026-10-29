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

class AbEmail
    include EmailInterface
    attr_accessor :email

    def initialize_fields
        @email = nil
    end
    

    def initialize(server, from, to, subject, textBody, htmlAttachment, contentBase)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR)
            @email = Email.new(from, to, subject, server, textBody, htmlAttachment, contentBase, true)
        else
            @email = Email.new(from, to, subject, server, textBody, htmlAttachment, contentBase)
        end
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
    

    def getEmail()
        return @email
    end
    

    # throws Exception
    def toXmlDoc()
        return @email.toXmlDoc()
    end
end

require "java/util/HashMap"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/logic/communication/smtp/Email"

