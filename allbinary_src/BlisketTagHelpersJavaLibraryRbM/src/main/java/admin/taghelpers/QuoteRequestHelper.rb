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
# package admin.taghelpers

# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/ModifyTable"

#TWB - Am I missing the correct Quote Request? Probably not
class QuoteRequestHelper < ModifyTable
    attr_accessor :logUtil, :weblisketSession, :storeFrontInterface, :quoteRequest

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @weblisketSession = nil
        @storeFrontInterface = nil
        @quoteRequest = nil
    end
    

    def initialize(hashMap, pageContext)
        super()
        initialize_fields
        request = pageContext.getRequest()
        @weblisketSession = WeblisketSession.new(hashMap, pageContext)
        @quoteRequest = QuoteRequest.new(@weblisketSession.getUserName(), request)
        storeName = hashMap.get(StoreFrontData.getInstance().NAME)
        if storeName != nil
            @storeFrontInterface = StoreFrontFactory.getInstance(storeName)
        end
    end
    

    def isValid()
        return @quoteRequest.isValid()
    end
    

    def validationInfo()
        return @quoteRequest.validationInfo()
    end
    

    def insert()
        begin
            values = @quoteRequest.toVector()
            QuoteRequestEntityFactory.getInstance().getQuoteRequestEntityInstance().insert(values)
            success = "New QuoteRequest Successfully added to the QuoteRequest Table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "add()")
            end
            return success
        rescue StandardError => e
            error = "Failed to add QuoteRequest"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "add()", e)
            end
            return error
        end
    end
    

    def update()
        begin
            values = @quoteRequest.toHashMap()
            QuoteRequestEntityFactory.getInstance().getQuoteRequestEntityInstance().update(@quoteRequest.getUserName(), values)
            success = "New QuoteRequest Successfully updated"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "update()")
            end
            return success
        rescue StandardError => e
            error = "Failed to update QuoteRequest"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "update()", e)
            end
            return error
        end
    end
    

    def delete()
        return @commonStrings.NOT_IMPLEMENTED
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/user/quoterequest/QuoteRequest"
require "org/allbinary/data/tables/user/quoterequest/QuoteRequestEntityFactory"
require "org/allbinary/logic/communication/http/request/session/WeblisketSession"
require "org/allbinary/logic/communication/log/LogUtil"

