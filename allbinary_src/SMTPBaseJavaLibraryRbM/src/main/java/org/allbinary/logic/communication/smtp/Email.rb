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

module ::Org; module Allbinary; module Logic; module Communication; module Smtp

class Email
    include EmailInterface
    attr_accessor :logUtil, :commonStrings, :msg, :properties, :bs, :isDebug

    def jfields_org_allbinary_logic_communication_smtp_Email
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @msg = nil unless instance_variable_defined?(:@msg)
        @properties = nil unless instance_variable_defined?(:@properties)
        @bs = nil unless instance_variable_defined?(:@bs)
        @isDebug = nil unless instance_variable_defined?(:@isDebug)
    end

    def initialize(*args)
        case args.length
        when 7 then jnew_org_allbinary_logic_communication_smtp_Email_7(*args)
        when 8 then jnew_org_allbinary_logic_communication_smtp_Email_8(*args)
        else raise ArgumentError, "No constructor of Email takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_logic_communication_smtp_Email_7(from, to, subject, server, textBody, htmlAttachment, contentBase)
        jfields_org_allbinary_logic_communication_smtp_Email
        @isDebug = false
        self.init(from, to, subject, server, textBody, htmlAttachment, contentBase)
    end
    

    def jnew_org_allbinary_logic_communication_smtp_Email_8(from, to, subject, server, textBody, htmlAttachment, contentBase, isDebug)
        jfields_org_allbinary_logic_communication_smtp_Email
        @isDebug = isDebug
        self.init(from, to, subject, server, textBody, htmlAttachment, contentBase)
    end
    

    # throws Exception
    def init_j7(from, to, subject, server, textBody, htmlAttachment, contentBase)
        begin
            stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR)
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, "emailConstructor", e)
            end
            raise e
        end
    end
    

    # throws MessagingException
    def init_j8(server, authenticator, addresses_from, addresses_to, addresses_cc, addresses_bcc, subject, mimeBodyParts)
        @properties = Properties.new()
        @properties.put(SMTP_HOST, server)
        begin
            hostName = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
            if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(hostName)
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR)
                    @logUtil.putF("Unable to get HostName so using fake", self, "init()")
                end
                @properties.put(SMTP_LOCAL_HOST, "FakeHostName")
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR)
                @logUtil.put("Continuing on Exception: Unable to get HostName", self, "init()", e)
            end
            @properties.put(SMTP_LOCAL_HOST, "FakeHostName")
        end
        if @isDebug
            @properties.put(DEBUG, "true")
        end
        session = Session.getInstance(@properties, authenticator)
        if @isDebug
            session.setDebug(true)
            @bs = ::Java::Io::ByteArrayOutputStream.new()
            printStream = ::Java::Io::PrintStream.new(@bs)
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

    def init(*java_overload_args)
        return init_j7(*java_overload_args) if java_overload_args.length == 7
        return init_j8(*java_overload_args) if java_overload_args.length == 8
        raise ArgumentError, "No method init takes #{java_overload_args.length} arguments"
    end
    

    def getMimeMessage()
        return @msg
    end
    java_overload :getMimeMessage, 0
    

    def getDebugInfo()
        if @isDebug
            return "More Logging Before This To Standard Out: " + (String.new(@bs.to_s)).to_s
        else
            return "Debugging Is Off"
        end
    end
    java_overload :getDebugInfo, 0
    

    # throws Exception
    def log()
        return "\nHashMap: " + self.toHashMap().to_s
    end
    java_overload :log, 0
    

    # throws Exception
    def toHashMap()
        begin
            hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            hashMap.put(EmailData::SERVER, @properties.get(SMTP_HOST))
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "toHashMap()", e)
            end
            raise e
        end
    end
    java_overload :toHashMap, 0
    

    # throws Exception
    def toXmlNode(document)
        node = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, EmailData::NAME, self.toHashMap())
        return node
    end
    java_overload :toXmlNode, 1
    

    # throws Exception
    def toXmlDoc()
        raise StandardError.new(::Org::Allbinary::StringPackage::CommonStrings.getInstance().NOT_IMPLEMENTED)
    end
    java_overload :toXmlDoc, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:DEBUG, "mail.debug")
        const_set(:SMTP_HOST, "mail.smtp.host")
        const_set(:SMTP_PORT, "mail.smtp.port")
        const_set(:SMTP_USER, "mail.smtp.user")
        const_set(:SMTP_RETURN_ADDRESS, "mail.from")
        const_set(:SMTP_LOCAL_HOST, "mail.smtp.localhost")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "Email"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:DEBUG, :SMTP_HOST, :SMTP_PORT, :SMTP_USER, :SMTP_RETURN_ADDRESS, :SMTP_LOCAL_HOST].include?(name)
        end
        super
    end
end

module ::Java; module Io; autoload :ByteArrayOutputStream, "java/io/ByteArrayOutputStream" unless const_defined?(:ByteArrayOutputStream, false); end; end
module ::Java; module Io; autoload :PrintStream, "java/io/PrintStream" unless const_defined?(:PrintStream, false); end; end
module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :EmailData, "org/allbinary/logic/communication/smtp/EmailData" unless const_defined?(:EmailData, false)

begin
    Email.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

