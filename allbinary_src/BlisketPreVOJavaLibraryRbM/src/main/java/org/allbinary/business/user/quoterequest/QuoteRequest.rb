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

module ::Org; module Allbinary; module Business; module User; module Quoterequest

class QuoteRequest
    attr_accessor :logUtil, :commonStrings, :id, :userName, :projectInfo, :userComments, :budget, :timeFrame, :comments

    def jfields_org_allbinary_business_user_quoterequest_QuoteRequest
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @id = nil unless instance_variable_defined?(:@id)
        @userName = nil unless instance_variable_defined?(:@userName)
        @projectInfo = nil unless instance_variable_defined?(:@projectInfo)
        @userComments = nil unless instance_variable_defined?(:@userComments)
        @budget = nil unless instance_variable_defined?(:@budget)
        @timeFrame = nil unless instance_variable_defined?(:@timeFrame)
        @comments = nil unless instance_variable_defined?(:@comments)
    end

    def initialize(*args)
        case args.length
        when 2 then jnew_org_allbinary_business_user_quoterequest_QuoteRequest_2(*args)
        when 1 then jnew_org_allbinary_business_user_quoterequest_QuoteRequest_1(*args)
        else raise ArgumentError, "No constructor of QuoteRequest takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_business_user_quoterequest_QuoteRequest_2(userName, request)
        jfields_org_allbinary_business_user_quoterequest_QuoteRequest
        quoteRequestData = ::Org::Allbinary::Business::Quoterequest::QuoteRequestData.getInstance()
        @id = ::Org::Allbinary::DataPackage::Generator::QuoteRequestIdGenerator.new().getNext()
        self.setUserName(userName)
        self.setProjectInfo(request.getParameter(quoteRequestData.PROJECT_INFO))
        self.setUserComments(request.getParameter(quoteRequestData.CUSTOMER_COMMENTS))
        self.setBudget(request.getParameter(quoteRequestData.BUDGET))
        self.setTimeFrame(request.getParameter(quoteRequestData.TIMEFRAME))
        self.setComments(request.getParameter(quoteRequestData.COMMENTS))
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPER)
            @logUtil.putF("Created with: " + (self.toHashMap()).to_s, self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    def jnew_org_allbinary_business_user_quoterequest_QuoteRequest_1(hashMap)
        jfields_org_allbinary_business_user_quoterequest_QuoteRequest
        quoteRequestData = ::Org::Allbinary::Business::Quoterequest::QuoteRequestData.getInstance()
        @id = hashMap.get(quoteRequestData.ID)
        self.setUserName(hashMap.get(::Org::Allbinary::Business::User::UserData::USERNAME))
        self.setProjectInfo(hashMap.get(quoteRequestData.PROJECT_INFO))
        self.setUserComments(hashMap.get(quoteRequestData.CUSTOMER_COMMENTS))
        self.setBudget(hashMap.get(quoteRequestData.BUDGET))
        self.setTimeFrame(hashMap.get(quoteRequestData.TIMEFRAME))
        self.setComments(hashMap.get(quoteRequestData.COMMENTS))
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPER)
            @logUtil.putF("Created with: " + (self.toHashMap()).to_s, self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    def isValid()
        begin
            valid = true
            if @userName == nil || @userName.length < 4 || @userName.length > 250
                valid = false
            end
            if @projectInfo == nil || @projectInfo.length < 0 || @projectInfo.length > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXBLOB
                valid = false
            end
            if @userComments == nil || @userComments.length < 0 || @userComments.length > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXBLOB
                valid = false
            end
            if @budget == nil || @budget.length < 0 || @budget.length > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXBLOB
                valid = false
            end
            if @timeFrame == nil || @timeFrame.length < 0 || @timeFrame.length > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXBLOB
                valid = false
            end
            if @comments == nil || @comments.length < 0 || @comments.length > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXBLOB
                valid = false
            end
            return valid
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to validate form", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    def validationInfo()
        begin
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            if @userName == nil || @userName.length < 4 || @userName.length > 250
                stringBuffer.append("Please enter a User Name with more than 4 characters.<br>")
            end
            if @projectInfo == nil || @projectInfo.length < 0 || @projectInfo.length > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXBLOB
                stringBuffer.append("Please enter Project Info with less than " + (::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXBLOB).to_s + " characters.<br>")
            end
            if @userComments == nil || @userComments.length < 0 || @userComments.length > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXBLOB
                stringBuffer.append("Please enter User Comments with less than " + (::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXBLOB).to_s + " characters.<br>")
            end
            if @budget == nil || @budget.length < 0 || @budget.length > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXBLOB
                stringBuffer.append("Please enter Budget with less than " + (::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXBLOB).to_s + " characters.<br>")
            end
            if @timeFrame == nil || @timeFrame.length < 0 || @timeFrame.length > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXBLOB
                stringBuffer.append("Please enter time frame with less than " + (::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXBLOB).to_s + " characters.<br>")
            end
            if @comments == nil || @comments.length < 0 || @comments.length > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXBLOB
                stringBuffer.append("Please enter comments with less than " + (::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXBLOB).to_s + " characters.<br>")
            end
            return stringBuffer.to_s
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Validating Form"
        end
    end
    

    def toVector()
        values = ::Org::Allbinary::Util::BasicArrayListD.new()
        values.add(@id)
        values.add(@userName)
        values.add(@projectInfo)
        values.add(@userComments)
        values.add(@budget)
        values.add(@timeFrame)
        values.add(@comments)
        calendar = ::Java::Util::Calendar.getInstance()
        time = String.new(calendar.getTimeInMillis().to_s)
        values.add(time)
        values.add(time)
        return values
    end
    

    def toHashMap()
        quoteRequestData = ::Org::Allbinary::Business::Quoterequest::QuoteRequestData.getInstance()
        values = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        values.put(::Org::Allbinary::Business::User::UserData::USERNAME, @userName)
        values.put(quoteRequestData.PROJECT_INFO, @projectInfo)
        values.put(quoteRequestData.CUSTOMER_COMMENTS, @userComments)
        values.put(quoteRequestData.BUDGET, @budget)
        values.put(quoteRequestData.TIMEFRAME, @timeFrame)
        values.put(quoteRequestData.COMMENTS, @comments)
        calendar = ::Java::Util::Calendar.getInstance()
        time = String.new(calendar.getTimeInMillis().to_s)
        values.put(::Org::Allbinary::Business::Entry::EntryData.getInstance().LASTMODIFIED, time)
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
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
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

module ::Java; module Util; autoload :Calendar, "java/util/Calendar" unless const_defined?(:Calendar, false); end; end
module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Quoterequest; autoload :QuoteRequestData, "org/allbinary/business/quoterequest/QuoteRequestData" unless const_defined?(:QuoteRequestData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserData, "org/allbinary/business/user/UserData" unless const_defined?(:UserData, false); end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Generator; autoload :QuoteRequestIdGenerator, "org/allbinary/data/generator/QuoteRequestIdGenerator" unless const_defined?(:QuoteRequestIdGenerator, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Sql; autoload :AbSqlData, "org/allbinary/logic/communication/sql/AbSqlData" unless const_defined?(:AbSqlData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end

