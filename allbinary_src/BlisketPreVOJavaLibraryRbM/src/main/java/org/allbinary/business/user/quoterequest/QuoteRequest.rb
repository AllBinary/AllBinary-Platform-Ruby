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
# package org.allbinary.business.user.quoterequest

# require "javax/servlet/http/HttpServletRequest"

class QuoteRequest
    attr_accessor :logUtil, :commonStrings, :id, :userName, :projectInfo, :userComments, :budget, :timeFrame, :comments

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @id = nil
        @userName = nil
        @projectInfo = nil
        @userComments = nil
        @budget = nil
        @timeFrame = nil
        @comments = nil
    end

    def initialize(*args)
        case args.length
        when 2 then constructor2(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor2(userName, request)
        initialize_fields
        quoteRequestData = QuoteRequestData.getInstance()
        @id = QuoteRequestIdGenerator.new().getNext()
        self.setUserName(userName)
        self.setProjectInfo(request.getParameter(quoteRequestData.PROJECT_INFO))
        self.setUserComments(request.getParameter(quoteRequestData.CUSTOMER_COMMENTS))
        self.setBudget(request.getParameter(quoteRequestData.BUDGET))
        self.setTimeFrame(request.getParameter(quoteRequestData.TIMEFRAME))
        self.setComments(request.getParameter(quoteRequestData.COMMENTS))
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPER)
            @logUtil.putF("Created with: " + (self.toHashMap()).to_s, self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    def constructor1(hashMap)
        initialize_fields
        quoteRequestData = QuoteRequestData.getInstance()
        @id = hashMap.get(quoteRequestData.ID)
        self.setUserName(hashMap.get(UserData::USERNAME))
        self.setProjectInfo(hashMap.get(quoteRequestData.PROJECT_INFO))
        self.setUserComments(hashMap.get(quoteRequestData.CUSTOMER_COMMENTS))
        self.setBudget(hashMap.get(quoteRequestData.BUDGET))
        self.setTimeFrame(hashMap.get(quoteRequestData.TIMEFRAME))
        self.setComments(hashMap.get(quoteRequestData.COMMENTS))
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPER)
            @logUtil.putF("Created with: " + (self.toHashMap()).to_s, self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    def isValid()
        begin
            valid = true
            if @userName == nil || @userName.length < 4 || @userName.length > 250
                valid = false
            end
            if @projectInfo == nil || @projectInfo.length < 0 || @projectInfo.length > AbSqlData::MAXBLOB
                valid = false
            end
            if @userComments == nil || @userComments.length < 0 || @userComments.length > AbSqlData::MAXBLOB
                valid = false
            end
            if @budget == nil || @budget.length < 0 || @budget.length > AbSqlData::MAXBLOB
                valid = false
            end
            if @timeFrame == nil || @timeFrame.length < 0 || @timeFrame.length > AbSqlData::MAXBLOB
                valid = false
            end
            if @comments == nil || @comments.length < 0 || @comments.length > AbSqlData::MAXBLOB
                valid = false
            end
            return valid
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to validate form", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    def validationInfo()
        begin
            stringBuffer = StringMaker.new()
            if @userName == nil || @userName.length < 4 || @userName.length > 250
                stringBuffer.append("Please enter a User Name with more than 4 characters.<br>")
            end
            if @projectInfo == nil || @projectInfo.length < 0 || @projectInfo.length > AbSqlData::MAXBLOB
                stringBuffer.append("Please enter Project Info with less than " + (AbSqlData::MAXBLOB).to_s + " characters.<br>")
            end
            if @userComments == nil || @userComments.length < 0 || @userComments.length > AbSqlData::MAXBLOB
                stringBuffer.append("Please enter User Comments with less than " + (AbSqlData::MAXBLOB).to_s + " characters.<br>")
            end
            if @budget == nil || @budget.length < 0 || @budget.length > AbSqlData::MAXBLOB
                stringBuffer.append("Please enter Budget with less than " + (AbSqlData::MAXBLOB).to_s + " characters.<br>")
            end
            if @timeFrame == nil || @timeFrame.length < 0 || @timeFrame.length > AbSqlData::MAXBLOB
                stringBuffer.append("Please enter time frame with less than " + (AbSqlData::MAXBLOB).to_s + " characters.<br>")
            end
            if @comments == nil || @comments.length < 0 || @comments.length > AbSqlData::MAXBLOB
                stringBuffer.append("Please enter comments with less than " + (AbSqlData::MAXBLOB).to_s + " characters.<br>")
            end
            return stringBuffer.to_s
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Validating Form"
        end
    end
    

    def toVector()
        values = BasicArrayListD.new()
        values.add(@id)
        values.add(@userName)
        values.add(@projectInfo)
        values.add(@userComments)
        values.add(@budget)
        values.add(@timeFrame)
        values.add(@comments)
        calendar = Calendar.getInstance()
        time = String.new(calendar.getTimeInMillis().to_s)
        values.add(time)
        values.add(time)
        return values
    end
    

    def toHashMap()
        quoteRequestData = QuoteRequestData.getInstance()
        values = StdUtil.getInstance().createHashMap()
        values.put(UserData::USERNAME, @userName)
        values.put(quoteRequestData.PROJECT_INFO, @projectInfo)
        values.put(quoteRequestData.CUSTOMER_COMMENTS, @userComments)
        values.put(quoteRequestData.BUDGET, @budget)
        values.put(quoteRequestData.TIMEFRAME, @timeFrame)
        values.put(quoteRequestData.COMMENTS, @comments)
        calendar = Calendar.getInstance()
        time = String.new(calendar.getTimeInMillis().to_s)
        values.put(EntryData.getInstance().LASTMODIFIED, time)
        return values
    end
    

    def setUserName(value)
        @userName = value
    end
    

    def setProjectInfo(value)
        @projectInfo = value
    end
    

    def setUserComments(value)
        @userComments = value
    end
    

    def setBudget(value)
        @budget = value
    end
    

    def setTimeFrame(value)
        @timeFrame = value
    end
    

    def setComments(value)
        @comments = value
        stringUtil = StringUtil.getInstance()
        if @comments == nil
            @comments = stringUtil.EMPTY_STRING
        end
    end
    

    def getUserName()
        return @userName
    end
    

    def getProjectInfo()
        return @projectInfo
    end
    

    def getUserComments()
        return @userComments
    end
    

    def getBudget()
        return @budget
    end
    

    def getTimeFrame()
        return @timeFrame
    end
    

    def getComments()
        return @comments
    end
end

require "java/util/Calendar"
require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/quoterequest/QuoteRequestData"
require "org/allbinary/business/user/UserData"
require "org/allbinary/data/generator/QuoteRequestIdGenerator"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/sql/AbSqlData"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"

