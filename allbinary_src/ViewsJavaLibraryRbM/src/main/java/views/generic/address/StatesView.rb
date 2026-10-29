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
# package views.generic.address

require "org/allbinary/data/tree/dom/DomNodeInterface"

class StatesView
    include DomNodeInterface
    attr_accessor :logUtil, :commonStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
    end
    

    def initialize()
        initialize_fields
    end
    

    def toXmlNode(document)
        begin
            node = document.createElement(StreetAddressData::STATES)
            statesFile = (URLGLOBALS.getMainPath() + FREEBLISKET_PATH_GLOBALS.getInstance().LINEDATAPATH).to_s + "states.txt"
            lineReader = LineReader.new(statesFile)
            while lineReader.hasNext()
                option = lineReader.next_()
                node.appendChild(ModDomHelper.createNameValueNodes(document, StreetAddressData::STATE, option))
            end
            return node
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "toXmlNode", e)
            end
            return nil
        end
    end
end

require "org/allbinary/business/user/address/StreetAddressData"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/LineReader"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

