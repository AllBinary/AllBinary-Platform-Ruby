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

# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

class DateRangeOrderHistoryView < HttpStoreComponentView
    include ValidationComponentInterface
    include DomNodeInterface
    attr_accessor :logUtil, :VIEWALLORDERS, :VIEWORDERSINLASTHOUR, :VIEWORDERSINLASTDAY, :VIEWORDERSINLASTWEEK, :VIEWORDERSINLAST30DAYS, :request, :shipped, :partiallyShipped, :processing, :preprocessing, :cancelled, :dateType, :toDate, :fromDate, :fromYear, :fromMonth, :fromDay, :fromHour, :toYear, :toMonth, :toDay, :toHour, :command, :ON, :MAXLEN

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @VIEWALLORDERS = "View All"
        @VIEWORDERSINLASTHOUR = "Last Hour"
        @VIEWORDERSINLASTDAY = "Last Day"
        @VIEWORDERSINLASTWEEK = "Last Week"
        @VIEWORDERSINLAST30DAYS = "30 Days"
        @request = nil
        @shipped = nil
        @partiallyShipped = nil
        @processing = nil
        @preprocessing = nil
        @cancelled = nil
        @dateType = nil
        @toDate = nil
        @fromDate = nil
        @fromYear = nil
        @fromMonth = nil
        @fromDay = nil
        @fromHour = nil
        @toYear = nil
        @toMonth = nil
        @toDay = nil
        @toHour = nil
        @command = nil
        @ON = "on"
        @MAXLEN = 15
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        @request = self.getPageContext().getRequest()
        self.getFormData()
    end
    

    def getFormData()
        @dateType = @request.getParameter(OrderHistoryData::DATETYPE)
        @preprocessing = @request.getParameter(OrderHistoryData::PREPROCESSINGNAME)
        @shipped = @request.getParameter(OrderHistoryData::SHIPPEDNAME)
        @partiallyShipped = @request.getParameter(OrderHistoryData::PARTIALLYSHIPPEDNAME)
        @processing = @request.getParameter(OrderHistoryData::PROCESSINGNAME)
        @cancelled = @request.getParameter(OrderHistoryData::CANCELLEDNAME)
        @fromYear = @request.getParameter(OrderHistoryData::FROMYEAR)
        @fromMonth = @request.getParameter(OrderHistoryData::FROMMONTH)
        @fromDay = @request.getParameter(OrderHistoryData::FROMDAY)
        @fromHour = @request.getParameter(OrderHistoryData::FROMHOUR)
        @toYear = @request.getParameter(OrderHistoryData::TOYEAR)
        @toMonth = @request.getParameter(OrderHistoryData::TOMONTH)
        @toDay = @request.getParameter(OrderHistoryData::TODAY)
        @toHour = @request.getParameter(OrderHistoryData::TOHOUR)
        @command = @request.getParameter(GLOBALS2.ADMINCOMMAND)
    end
    

    def addDomNodeInterfaces()
        self.addDomNodeInterface(self)
    end
    

    # throws Exception
    def view()
        begin
            self.addDomNodeInterfaces()
            return super()
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
    

    def toXmlNode(document)
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Attempt to View orders in (fromDate=")
                stringBuffer.append(@fromDate)
                stringBuffer.append(",toDate=")
                stringBuffer.append(@toDate)
                stringBuffer.append(") and status")
                @logUtil.putF(stringBuffer.to_s, self, "view")
            end
            node = document.createElement(OrderData::ORDERS)
            if @preprocessing != nil && (@preprocessing <=> @ON) == 0
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Adding Preprocessing Orders", self, "toXmlNode")
                end
                orderHistoryVector = OrderHistoryEntityFactory.getInstance().getOrders(OrderHistoryData::PREPROCESSING, @fromDate, @toDate)
                size = orderHistoryVector.size()
                (0...size).each do |index|
                    orderHistory = orderHistoryVector.get(index)
                    node.appendChild(orderHistory.toXmlNode(document))
                end
            end
            if @shipped != nil && (@shipped <=> @ON) == 0
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Adding Shipped Orders", self, "toXmlNode")
                end
                orderHistoryVector = OrderHistoryEntityFactory.getInstance().getOrders(OrderHistoryData::SHIPPED, @fromDate, @toDate)
                size = orderHistoryVector.size()
                (0...size).each do |index|
                    orderHistory = orderHistoryVector.get(index)
                    node.appendChild(orderHistory.toXmlNode(document))
                end
            end
            if @partiallyShipped != nil && (@partiallyShipped <=> @ON) == 0
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Adding Partially Shipped Orders", self, "toDomNode")
                end
                orderHistoryVector = OrderHistoryEntityFactory.getInstance().getOrders(OrderHistoryData::PARTIALLYSHIPPED, @fromDate, @toDate)
                size = orderHistoryVector.size()
                (0...size).each do |index|
                    orderHistory = orderHistoryVector.get(index)
                    node.appendChild(orderHistory.toXmlNode(document))
                end
            end
            if @processing != nil && (@processing <=> @ON) == 0
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Adding Processing Orders", self, "toXmlNode")
                end
                orderHistoryVector = OrderHistoryEntityFactory.getInstance().getOrders(OrderHistoryData::PROCESSING, @fromDate, @toDate)
                size = orderHistoryVector.size()
                (0...size).each do |index|
                    orderHistory = orderHistoryVector.get(index)
                    node.appendChild(orderHistory.toXmlNode(document))
                end
            end
            if @cancelled != nil && (@cancelled <=> @ON) == 0
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Adding Cancelled Orders", self, "view")
                end
                orderHistoryVector = OrderHistoryEntityFactory.getInstance().getOrders(OrderHistoryData::CANCELLED, @fromDate, @toDate)
                size = orderHistoryVector.size()
                (0...size).each do |index|
                    orderHistory = orderHistoryVector.get(index)
                    node.appendChild(orderHistory.toXmlNode(document))
                end
            end
            node.appendChild(ModDomHelper.createNameValueNodes(document, OrderHistoryData::PREPROCESSINGNAME, OrderHistoryData::PREPROCESSING))
            node.appendChild(ModDomHelper.createNameValueNodes(document, OrderHistoryData::PROCESSINGNAME, OrderHistoryData::PROCESSING))
            node.appendChild(ModDomHelper.createNameValueNodes(document, OrderHistoryData::CANCELLEDNAME, OrderHistoryData::CANCELLED))
            node.appendChild(ModDomHelper.createNameValueNodes(document, OrderHistoryData::PARTIALLYSHIPPEDNAME, OrderHistoryData::PARTIALLYSHIPPED))
            node.appendChild(ModDomHelper.createNameValueNodes(document, OrderHistoryData::SHIPPEDNAME, OrderHistoryData::SHIPPED))
            node.appendChild(ModDomHelper.createNameValueNodes(document, GLOBALS2.VIEWNAME, GLOBALS2.VIEW))
            return node
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().XSLLOGGINGERROR)
                @logUtil.put(@commonStrings.FAILURE, self, "toXmlNode", e)
            end
            return nil
        end
    end
    

    def isValid()
        begin
            isValid = true
            if @dateType == nil || ((@dateType <=> OrderHistoryData::TYPELONG) != 0 && (@dateType <=> OrderHistoryData::TYPECAESAR) != 0)
                isValid = false
            end
            if @dateType != nil
                if (@dateType <=> OrderHistoryData::TYPELONG) == 0
                    calendar = Calendar.getInstance()
                    currentTime = calendar.getTimeInMillis()
                    rangeDate = StringUtil.getInstance().EMPTY_STRING
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
                elsif (@dateType <=> OrderHistoryData::TYPECAESAR) == 0
                    calendar = Calendar.getInstance()
                    TimeUtil.getInstance().setCalendar(calendar, @fromYear, @fromMonth, @fromDay, @fromHour)
                    @fromDate = calendar.getTimeInMillis().to_s
                    TimeUtil.getInstance().setCalendar(calendar, @toYear, @toMonth, @toDay, @toHour)
                    @toDate = calendar.getTimeInMillis().to_s
                end
                if StringValidationUtil.getInstance().isEmpty(@toDate) || @toDate.length > @MAXLEN
                    isValid = false
                end
                if StringValidationUtil.getInstance().isEmpty(@fromDate) || @fromDate.length > @MAXLEN
                    isValid = false
                end
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Attempt to View orders in (fromDate=")
                stringBuffer.append(@fromDate)
                stringBuffer.append(",toDate=")
                stringBuffer.append(@toDate)
                stringBuffer.append(")")
                @logUtil.putF(stringBuffer.to_s, self, @commonStrings.IS_VALID)
            end
            return isValid
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.put("Exception in validation", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    def toValidationInfoDoc()
        return nil
    end
    

    def toValidationInfoNode(document)
        return nil
    end
    

    # throws Exception
    def validationInfo()
        begin
            result = StringMaker.new()
            if @dateType == nil || ((@dateType <=> OrderHistoryData::TYPELONG) != 0 && (@dateType <=> OrderHistoryData::TYPECAESAR) != 0)
                result.append("DATETYPE not recognized")
            end
            if StringValidationUtil.getInstance().isEmpty(@toDate) || @toDate.length > @MAXLEN
                result.append("Invalid To Date")
            end
            if StringValidationUtil.getInstance().isEmpty(@fromDate) || @fromDate.length > @MAXLEN
                result.append("Invalid From Date")
            end
            return result.to_s
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Getting Validation Info"
        end
    end
end

require "java/util/Calendar"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/user/commerce/inventory/order/OrderData"
require "org/allbinary/business/user/commerce/inventory/order/OrderHistory"
require "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData"
require "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityFactory"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/globals/GLOBALS2"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/time/TimeUtil"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

