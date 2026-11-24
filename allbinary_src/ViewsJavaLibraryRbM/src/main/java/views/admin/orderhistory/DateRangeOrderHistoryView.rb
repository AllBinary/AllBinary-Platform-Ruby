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
# package views.admin.orderhistory

require "java/lang/JavaOverload"
# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

module ::Views; module Admin; module Orderhistory

class DateRangeOrderHistoryView < ::Views::Business::Context::Modules::Storefront::HttpStoreComponentView
    include ::Org::Allbinary::Logic::ControlPackage::Validate::ValidationComponentInterface
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil, :VIEWALLORDERS, :VIEWORDERSINLASTHOUR, :VIEWORDERSINLASTDAY, :VIEWORDERSINLASTWEEK, :VIEWORDERSINLAST30DAYS, :request, :shipped, :partiallyShipped, :processing, :preprocessing, :cancelled, :dateType, :toDate, :fromDate, :fromYear, :fromMonth, :fromDay, :fromHour, :toYear, :toMonth, :toDay, :toHour, :command, :ON, :MAXLEN

    def jfields_views_admin_orderhistory_DateRangeOrderHistoryView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @VIEWALLORDERS = "View All"
        @VIEWORDERSINLASTHOUR = "Last Hour"
        @VIEWORDERSINLASTDAY = "Last Day"
        @VIEWORDERSINLASTWEEK = "Last Week"
        @VIEWORDERSINLAST30DAYS = "30 Days"
        @request = nil unless instance_variable_defined?(:@request)
        @shipped = nil unless instance_variable_defined?(:@shipped)
        @partiallyShipped = nil unless instance_variable_defined?(:@partiallyShipped)
        @processing = nil unless instance_variable_defined?(:@processing)
        @preprocessing = nil unless instance_variable_defined?(:@preprocessing)
        @cancelled = nil unless instance_variable_defined?(:@cancelled)
        @dateType = nil unless instance_variable_defined?(:@dateType)
        @toDate = nil unless instance_variable_defined?(:@toDate)
        @fromDate = nil unless instance_variable_defined?(:@fromDate)
        @fromYear = nil unless instance_variable_defined?(:@fromYear)
        @fromMonth = nil unless instance_variable_defined?(:@fromMonth)
        @fromDay = nil unless instance_variable_defined?(:@fromDay)
        @fromHour = nil unless instance_variable_defined?(:@fromHour)
        @toYear = nil unless instance_variable_defined?(:@toYear)
        @toMonth = nil unless instance_variable_defined?(:@toMonth)
        @toDay = nil unless instance_variable_defined?(:@toDay)
        @toHour = nil unless instance_variable_defined?(:@toHour)
        @command = nil unless instance_variable_defined?(:@command)
        @ON = "on"
        @MAXLEN = 15
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        jfields_views_admin_orderhistory_DateRangeOrderHistoryView
        @request = self.getPageContext().getRequest()
        self.getFormData()
    end
    

    def getFormData()
        @dateType = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::DATETYPE)
        @preprocessing = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PREPROCESSINGNAME)
        @shipped = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SHIPPEDNAME)
        @partiallyShipped = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PARTIALLYSHIPPEDNAME)
        @processing = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PROCESSINGNAME)
        @cancelled = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::CANCELLEDNAME)
        @fromYear = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::FROMYEAR)
        @fromMonth = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::FROMMONTH)
        @fromDay = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::FROMDAY)
        @fromHour = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::FROMHOUR)
        @toYear = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::TOYEAR)
        @toMonth = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::TOMONTH)
        @toDay = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::TODAY)
        @toHour = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::TOHOUR)
        @command = @request.getParameter(::Org::Allbinary::Globals::GLOBALS2::ADMINCOMMAND)
    end
    java_overload :getFormData, 0
    

    def addDomNodeInterfaces()
        self.addDomNodeInterface(self)
    end
    java_overload :addDomNodeInterfaces, 0
    

    # throws Exception
    def view()
        begin
            self.addDomNodeInterfaces()
            return DateRangeOrderHistoryView.superclass.java_super_method(:view, 0).bind(self).call()
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
    java_overload :view, 0
    

    def toXmlNode(document)
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("Attempt to View orders in (fromDate=")
                stringBuffer.append(@fromDate)
                stringBuffer.append(",toDate=")
                stringBuffer.append(@toDate)
                stringBuffer.append(") and status")
                @logUtil.putF(stringBuffer.to_s, self, "view")
            end
            node = document.createElement(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::ORDERS)
            if @preprocessing != nil && (@preprocessing <=> @ON) == 0
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Adding Preprocessing Orders", self, "toXmlNode")
                end
                orderHistoryVector = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Order::OrderHistoryEntityFactory.getInstance().getOrders(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PREPROCESSING, @fromDate, @toDate)
                size = orderHistoryVector.size()
                (0...size).each do |index|
                    orderHistory = orderHistoryVector.get(index)
                    node.appendChild(orderHistory.toXmlNode(document))
                end
            end
            if @shipped != nil && (@shipped <=> @ON) == 0
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Adding Shipped Orders", self, "toXmlNode")
                end
                orderHistoryVector = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Order::OrderHistoryEntityFactory.getInstance().getOrders(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SHIPPED, @fromDate, @toDate)
                size = orderHistoryVector.size()
                (0...size).each do |index|
                    orderHistory = orderHistoryVector.get(index)
                    node.appendChild(orderHistory.toXmlNode(document))
                end
            end
            if @partiallyShipped != nil && (@partiallyShipped <=> @ON) == 0
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Adding Partially Shipped Orders", self, "toDomNode")
                end
                orderHistoryVector = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Order::OrderHistoryEntityFactory.getInstance().getOrders(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PARTIALLYSHIPPED, @fromDate, @toDate)
                size = orderHistoryVector.size()
                (0...size).each do |index|
                    orderHistory = orderHistoryVector.get(index)
                    node.appendChild(orderHistory.toXmlNode(document))
                end
            end
            if @processing != nil && (@processing <=> @ON) == 0
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Adding Processing Orders", self, "toXmlNode")
                end
                orderHistoryVector = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Order::OrderHistoryEntityFactory.getInstance().getOrders(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PROCESSING, @fromDate, @toDate)
                size = orderHistoryVector.size()
                (0...size).each do |index|
                    orderHistory = orderHistoryVector.get(index)
                    node.appendChild(orderHistory.toXmlNode(document))
                end
            end
            if @cancelled != nil && (@cancelled <=> @ON) == 0
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Adding Cancelled Orders", self, "view")
                end
                orderHistoryVector = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Order::OrderHistoryEntityFactory.getInstance().getOrders(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::CANCELLED, @fromDate, @toDate)
                size = orderHistoryVector.size()
                (0...size).each do |index|
                    orderHistory = orderHistoryVector.get(index)
                    node.appendChild(orderHistory.toXmlNode(document))
                end
            end
            node.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PREPROCESSINGNAME, ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PREPROCESSING))
            node.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PROCESSINGNAME, ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PROCESSING))
            node.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::CANCELLEDNAME, ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::CANCELLED))
            node.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PARTIALLYSHIPPEDNAME, ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PARTIALLYSHIPPED))
            node.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SHIPPEDNAME, ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SHIPPED))
            node.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Globals::GLOBALS2::VIEWNAME, ::Org::Allbinary::Globals::GLOBALS2::VIEW))
            return node
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().XSLLOGGINGERROR)
                @logUtil.put(@commonStrings.FAILURE, self, "toXmlNode", e)
            end
            return nil
        end
    end
    java_overload :toXmlNode, 1
    

    def isValid()
        begin
            isValid = true
            if @dateType == nil || ((@dateType <=> ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::TYPELONG) != 0 && (@dateType <=> ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::TYPECAESAR) != 0)
                isValid = false
            end
            if @dateType != nil
                if (@dateType <=> ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::TYPELONG) == 0
                    calendar = ::Java::Util::Calendar.getInstance()
                    currentTime = calendar.getTimeInMillis()
                    rangeDate = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
                    if (@command <=> @VIEWORDERSINLASTHOUR) == 0
                        oneHour = 60 * 60 * 1000
                        rangeDate = oneHour.to_s
                    elsif (@command <=> @VIEWORDERSINLASTDAY) == 0
                        oneDay = 24 * 60 * 60 * 1000
                        rangeDate = oneDay.to_s
                    elsif (@command <=> @VIEWORDERSINLASTWEEK) == 0
                        oneWeek = 7 * 24 * 60 * 60 * 1000
                        rangeDate = oneWeek.to_s
                    elsif (@command <=> @VIEWORDERSINLAST30DAYS) == 0
                        thirtyDays = 30 * 24 * 60 * 60 * 1000
                        rangeDate = thirtyDays.to_s
                    elsif (@command <=> @VIEWALLORDERS) == 0
                        rangeDate = currentTime.to_s
                    end
                    rangeDateLong = rangeDate.to_i
                    @fromDate = currentTime - rangeDateLong.to_s
                    time = String.new(currentTime.to_s)
                    @toDate = time
                elsif (@dateType <=> ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::TYPECAESAR) == 0
                    calendar = ::Java::Util::Calendar.getInstance()
                    ::Org::Allbinary::TimePackage::TimeUtil.getInstance().setCalendar(calendar, @fromYear, @fromMonth, @fromDay, @fromHour)
                    @fromDate = calendar.getTimeInMillis().to_s
                    ::Org::Allbinary::TimePackage::TimeUtil.getInstance().setCalendar(calendar, @toYear, @toMonth, @toDay, @toHour)
                    @toDate = calendar.getTimeInMillis().to_s
                end
                if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(@toDate) || @toDate.length > @MAXLEN
                    isValid = false
                end
                if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(@fromDate) || @fromDate.length > @MAXLEN
                    isValid = false
                end
            end
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("Attempt to View orders in (fromDate=")
                stringBuffer.append(@fromDate)
                stringBuffer.append(",toDate=")
                stringBuffer.append(@toDate)
                stringBuffer.append(")")
                @logUtil.putF(stringBuffer.to_s, self, @commonStrings.IS_VALID)
            end
            return isValid
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.put("Exception in validation", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    java_overload :isValid, 0
    

    def toValidationInfoDoc()
        return nil
    end
    java_overload :toValidationInfoDoc, 0
    

    def toValidationInfoNode(document)
        return nil
    end
    java_overload :toValidationInfoNode, 1
    

    # throws Exception
    def validationInfo()
        begin
            result = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            if @dateType == nil || ((@dateType <=> ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::TYPELONG) != 0 && (@dateType <=> ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::TYPECAESAR) != 0)
                result.append("DATETYPE not recognized")
            end
            if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(@toDate) || @toDate.length > @MAXLEN
                result.append("Invalid To Date")
            end
            if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(@fromDate) || @fromDate.length > @MAXLEN
                result.append("Invalid From Date")
            end
            return result.to_s
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Getting Validation Info"
        end
    end
    java_overload :validationInfo, 0
    

    # throws Exception
    def getTransformInfoInterface()
        return DateRangeOrderHistoryView.superclass.java_super_method(:getTransformInfoInterface, 0).bind(self).call()
    end
    java_overload :getTransformInfoInterface, 0
end

module ::Java; module Util; autoload :Calendar, "java/util/Calendar" unless const_defined?(:Calendar, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderData, "org/allbinary/business/user/commerce/inventory/order/OrderData" unless const_defined?(:OrderData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderHistory, "org/allbinary/business/user/commerce/inventory/order/OrderHistory" unless const_defined?(:OrderHistory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryData, "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData" unless const_defined?(:OrderHistoryData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityFactory" unless const_defined?(:OrderHistoryEntityFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeUtil, "org/allbinary/time/TimeUtil" unless const_defined?(:TimeUtil, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end

