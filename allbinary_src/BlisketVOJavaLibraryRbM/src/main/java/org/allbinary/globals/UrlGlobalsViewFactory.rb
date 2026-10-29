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
# package org.allbinary.globals


class UrlGlobalsViewFactory
    

    def initialize()
    end
    

    def self.getInstance()
        logUtil = LogUtil.getInstance()
        begin
            return UrlGlobalsView.new()
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().FACTORYERROR)
                logUtil.put(commonStrings.EXCEPTION, "GlobalsViewFactory", commonStrings.GET_INSTANCE, e)
            end
            return nil
        end
    end
end

require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/globals/UrlGlobalsView"

