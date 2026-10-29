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

# require "java/io/ByteArrayOutputStream"
# require "java/io/PrintStream"
# require "java/util/Properties"
# require "javax/mail/Address"
# require "javax/mail/Authenticator"
# require "javax/mail/Message"
# require "javax/mail/MessagingException"
# require "javax/mail/Session"
# require "javax/mail/internet/InternetAddress"
# require "javax/mail/internet/InternetHeaders"
# require "javax/mail/internet/MimeBodyPart"
# require "javax/mail/internet/MimeMessage"
# require "javax/mail/internet/MimeMultipart"
require "org/allbinary/logic/communication/smtp/EmailInterface"

class Email
    include EmailInterface
    attr_accessor :logUtil, :commonStrings, :msg, :properties, :bs, :isDebug

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @msg = nil
        @properties = nil
        @bs = nil
        @isDebug = nil
    end

    def initialize(*args)
        case args.length
        when 7 then constructor7(*args)
        when 8 then constructor8(*args)
        end
    end
    

    def constructor7(from, to, subject, server, textBody, htmlAttachment, contentBase)
        initialize_fields
        @isDebug = false
        self.init(from, to, subject, server, textBody, htmlAttachment, contentBase)
    end
    

    def constructor8(from, to, subject, server, textBody, htmlAttachment, contentBase, isDebug)
        initialize_fields
        @isDebug = isDebug
        self.init(from, to, subject, server, textBody, htmlAttachment, contentBase)
    end
    

    # throws Exception
    def init(from, to, subject, server, textBody, htmlAttachment, contentBase)
        begin
            stringValidationUtil = StringValidationUtil.getInstance()
            mimeBodyParts = Array.new((!stringValidationUtil.isEmpty(htmlAttachment) ? 2 : 1), nil)
            mimeBodyParts[0] = MimeBodyPart.new()
            mimeBodyParts[0].setText(textBody)
            if !stringValidationUtil.isEmpty(htmlAttachment)
                internetHeaders = InternetHeaders.new()
                internetHeaders.addHeader("Content-Type", "text/html")
                if !stringValidationUtil.isEmpty(contentBase)
                    internetHeaders.addHeader("Content-Base", contentBase)
                end
                mimeBodyParts[1] = MimeBodyPart.new(internetHeaders, htmlAttachment.bytes)
            end
            self.init(server, nil, [InternetAddress.new(from)], [InternetAddress.new(to)], nil, nil, subject, mimeBodyParts)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR)
                commonStrings = CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, "emailConstructor", e)
            end
            raise e
        end
    end
    

    # throws MessagingException
    # Java overloaded method: Ruby keeps the last definition
    def init(server, authenticator, addresses_from, addresses_to, addresses_cc, addresses_bcc, subject, mimeBodyParts)
        @properties = Properties.new()
        @properties.put(Email::SMTP_HOST, server)
        begin
            hostName = StringUtil.getInstance().EMPTY_STRING
            if StringValidationUtil.getInstance().isEmpty(hostName)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR)
                    @logUtil.putF("Unable to get HostName so using fake", self, "init()")
                end
                @properties.put(Email::SMTP_LOCAL_HOST, "FakeHostName")
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR)
                @logUtil.put("Continuing on Exception: Unable to get HostName", self, "init()", e)
            end
            @properties.put(Email::SMTP_LOCAL_HOST, "FakeHostName")
        end
        if @isDebug
            @properties.put(Email::DEBUG, "true")
        end
        session = Session.getInstance(@properties, authenticator)
        if @isDebug
            session.setDebug(true)
            @bs = ByteArrayOutputStream.new()
            printStream = PrintStream.new(@bs)
            session.setDebugOut(printStream)
        end
        @msg = MimeMessage.new(session)
        @msg.addFrom(addresses_from)
        @msg.setRecipients(Message::RecipientType.TO, addresses_to)
        @msg.setRecipients(Message::RecipientType.CC, addresses_cc)
        @msg.setRecipients(Message::RecipientType.BCC, addresses_bcc)
        @msg.setSubject(subject)
        mimeMultipart = MimeMultipart.new()
        (0...mimeBodyParts.length).each do |i|
            mimeMultipart.addBodyPart(mimeBodyParts[i])
        end
        @msg.setContent(mimeMultipart)
    end
    

    def getMimeMessage()
        return @msg
    end
    

    def getDebugInfo()
        if @isDebug
            return "More Logging Before This To Standard Out: " + (String.new(@bs.to_s)).to_s
        else
            return "Debugging Is Off"
        end
    end
    

    # throws Exception
    def log()
        return "\nHashMap: " + self.toHashMap().to_s
    end
    

    # throws Exception
    def toHashMap()
        begin
            hashMap = StdUtil.getInstance().createHashMap()
            hashMap.put(EmailData::SERVER, @properties.get(Email::SMTP_HOST))
            addresses = @msg.getFrom()
            if addresses != nil
                (0...addresses.length).each do |index|
                    hashMap.put(EmailData::FROM, addresses[index].to_s)
                end
            end
            addresses = @msg.getRecipients(Message::RecipientType.TO)
            if addresses != nil
                (0...addresses.length).each do |index|
                    hashMap.put(EmailData::TO, addresses[index].to_s)
                end
            end
            addresses = @msg.getRecipients(Message::RecipientType.CC)
            if addresses != nil
                (0...addresses.length).each do |index|
                    hashMap.put(EmailData::CC, addresses[index].to_s)
                end
            end
            addresses = @msg.getRecipients(Message::RecipientType.BCC)
            if addresses != nil
                (0...addresses.length).each do |index|
                    hashMap.put(EmailData::BCC, addresses[index].to_s)
                end
            end
            hashMap.put(EmailData::SUBJECT, @msg.getSubject())
            mimeMultipart = @msg.getContent()
            if mimeMultipart != nil
                (0...mimeMultipart.getCount()).each do |index|
                    content = mimeMultipart.getBodyPart(index).getContent()
                    hashMap.put(EmailData::CONTENT, content)
                end
            end
            return hashMap
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "toHashMap()", e)
            end
            raise e
        end
    end
    

    # throws Exception
    def toXmlNode(document)
        node = ModDomHelper.createNameValueNodes(document, EmailData::NAME, self.toHashMap())
        return node
    end
    

    # throws Exception
    def toXmlDoc()
        raise StandardError.new(CommonStrings.getInstance().NOT_IMPLEMENTED)
    end
end

require "java/util/HashMap"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/logic/communication/smtp/EmailData"

class Email
    DEBUG = "mail.debug"
    SMTP_HOST = "mail.smtp.host"
    SMTP_PORT = "mail.smtp.port"
    SMTP_USER = "mail.smtp.user"
    SMTP_RETURN_ADDRESS = "mail.from"
    SMTP_LOCAL_HOST = "mail.smtp.localhost"
end

