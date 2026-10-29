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
# package org.allbinary.logic.communication.ftp.configuration

require "org/allbinary/data/tree/dom/DomNodeInterface"

class FtpConfigurationView
    include DomNodeInterface
    attr_accessor :ftpConfigurationInterface

    def initialize_fields
        @ftpConfigurationInterface = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor1(node)
        initialize_fields
        self.setFtpConfigurationInterface(FtpConfiguration.new())
        chileNodeList = node.getChildNodes()
        server = DomNodeHelper.getTextNodeValue(FtpConfigurationData::SERVER, chileNodeList)
        self.getFtpConfigurationInterface().setServer(server)
        userName = DomNodeHelper.getTextNodeValue(FtpConfigurationData::USERNAME, chileNodeList)
        self.getFtpConfigurationInterface().setUserName(userName)
        password = DomNodeHelper.getTextNodeValue(FtpConfigurationData::PASSWORD, chileNodeList)
        self.getFtpConfigurationInterface().setPassword(password)
        path = DomNodeHelper.getTextNodeValue(FtpConfigurationData::PATH, chileNodeList)
        self.getFtpConfigurationInterface().setPath(path)
    end
    

    def constructor1(ftpConfigurationInterface)
        initialize_fields
        self.setFtpConfigurationInterface(ftpConfigurationInterface)
    end
    

    # throws Exception
    def toXmlNode(document)
        ftpConfigurationMapping = FtpConfigurationMapping.new(self.getFtpConfigurationInterface())
        hashMap = ftpConfigurationMapping.toHashMap()
        node = ModDomHelper.createNameValueNodes(document, FtpConfigurationData::NAME, hashMap)
        return node
    end
    

    def getFtpConfigurationInterface()
        return @ftpConfigurationInterface
    end
    

    def setFtpConfigurationInterface(ftpConfigurationInterface)
        @ftpConfigurationInterface = ftpConfigurationInterface
    end
end

require "java/util/HashMap"
require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"
require "org/allbinary/logic/communication/ftp/configuration/FtpConfiguration"
require "org/allbinary/logic/communication/ftp/configuration/FtpConfigurationData"
require "org/allbinary/logic/communication/ftp/configuration/FtpConfigurationInterface"
require "org/allbinary/logic/communication/ftp/configuration/FtpConfigurationMapping"

