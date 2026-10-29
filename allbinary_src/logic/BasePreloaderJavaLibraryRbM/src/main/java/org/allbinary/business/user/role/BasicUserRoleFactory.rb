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
# package org.allbinary.business.user.role


class BasicUserRoleFactory
    attr_accessor :INACTIVITYTIMEOUT, :CUSTOMERTIMEOUT, :CUSTOMERMAXSESSIONTIME, :MAXSESSIONTIME, :INSTALLER, :ADMINISTRATOR, :CUSTOMER, :SUBSCRIBERCUSTOMER, :WHOLESALECUSTOMER, :STOREMANAGER, :PRODUCTMANAGER, :CUSTOMERMANAGER, :PAYMENTMANAGER, :ORDERMANAGER, :WEBMANAGER, :REVIEWER, :SHIPPING, :ADJUSTER, :WORKFLOWEDITOR, :WIZARD, :VIEWEDITOR

    def initialize_fields
        @INACTIVITYTIMEOUT = 360000000
        @CUSTOMERTIMEOUT = 360000000
        @CUSTOMERMAXSESSIONTIME = 360000000
        @MAXSESSIONTIME = 360000000
        @INSTALLER = BasicUserRole.new("Installer", 16, @MAXSESSIONTIME, @INACTIVITYTIMEOUT)
        @ADMINISTRATOR = BasicUserRole.new("Administrator", 0, @MAXSESSIONTIME, @INACTIVITYTIMEOUT)
        @CUSTOMER = BasicUserRole.new("CustomerUser", "Customer User", 1, @CUSTOMERTIMEOUT, @CUSTOMERMAXSESSIONTIME)
        @SUBSCRIBERCUSTOMER = BasicUserRole.new("SubscriberUser", "Subscriber User", 2, @CUSTOMERTIMEOUT, @CUSTOMERMAXSESSIONTIME)
        @WHOLESALECUSTOMER = BasicUserRole.new("WholesaleUser", "Wholesale User", 3, @CUSTOMERTIMEOUT, @CUSTOMERMAXSESSIONTIME)
        @STOREMANAGER = BasicUserRole.new("StoreManager", "Store Manager", 4, @MAXSESSIONTIME, @INACTIVITYTIMEOUT)
        @PRODUCTMANAGER = BasicUserRole.new("ProductManager", "Product Manager", 5, @MAXSESSIONTIME, @INACTIVITYTIMEOUT)
        @CUSTOMERMANAGER = BasicUserRole.new("UserManager", "User Manager", 6, @MAXSESSIONTIME, @INACTIVITYTIMEOUT)
        @PAYMENTMANAGER = BasicUserRole.new("PaymentManager", "Payment Manager", 7, @MAXSESSIONTIME, @INACTIVITYTIMEOUT)
        @ORDERMANAGER = BasicUserRole.new("OrderManager", "Order Manager", 8, @MAXSESSIONTIME, @INACTIVITYTIMEOUT)
        @WEBMANAGER = BasicUserRole.new("WebManager", "Web Manager", 9, @MAXSESSIONTIME, @INACTIVITYTIMEOUT)
        @REVIEWER = BasicUserRole.new("Reviewer", 10, @MAXSESSIONTIME, @INACTIVITYTIMEOUT)
        @SHIPPING = BasicUserRole.new("Shipping", 11, @MAXSESSIONTIME, @INACTIVITYTIMEOUT)
        @ADJUSTER = BasicUserRole.new("Adjuster", 12, @MAXSESSIONTIME, @INACTIVITYTIMEOUT)
        @WORKFLOWEDITOR = BasicUserRole.new("WorkFlowEditor", "WorkFlow Editor", 13, @MAXSESSIONTIME, @INACTIVITYTIMEOUT)
        @WIZARD = BasicUserRole.new("WizardUser", "Wizard User", 14, @MAXSESSIONTIME, @INACTIVITYTIMEOUT)
        @VIEWEDITOR = BasicUserRole.new("ViewEditor", "View Editor", 15, @MAXSESSIONTIME, @INACTIVITYTIMEOUT)
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return BasicUserRoleFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/business/user/role/BasicUserRole"

class BasicUserRoleFactory
    @@instance = BasicUserRoleFactory.new()
end

