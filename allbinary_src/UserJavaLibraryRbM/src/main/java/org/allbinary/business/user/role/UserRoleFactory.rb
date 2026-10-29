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


class UserRoleFactory
    attr_accessor :basicUserRoleFactory, :INSTALLER, :ADMINISTRATOR, :CUSTOMER, :SUBSCRIBERCUSTOMER, :WHOLESALECUSTOMER, :STOREMANAGER, :PRODUCTMANAGER, :CUSTOMERMANAGER, :PAYMENTMANAGER, :ORDERMANAGER, :WEBMANAGER, :REVIEWER, :SHIPPING, :ADJUSTER, :WORKFLOWEDITOR, :WIZARD, :VIEWEDITOR

    def initialize_fields
        @basicUserRoleFactory = BasicUserRoleFactory.getInstance()
        @INSTALLER = UserRoleB.new(@basicUserRoleFactory.INSTALLER, nil)
        @ADMINISTRATOR = UserRoleB.new(@basicUserRoleFactory.ADMINISTRATOR, AdminUserFactory.new())
        @CUSTOMER = UserRoleB.new(@basicUserRoleFactory.CUSTOMER, UserFactory.new())
        @SUBSCRIBERCUSTOMER = UserRoleB.new(@basicUserRoleFactory.SUBSCRIBERCUSTOMER, SubscriberUserFactory.new())
        @WHOLESALECUSTOMER = UserRoleB.new(@basicUserRoleFactory.WHOLESALECUSTOMER, WholesaleUserFactory.new())
        @STOREMANAGER = UserRoleB.new(@basicUserRoleFactory.STOREMANAGER, StoreAdminUserFactory.new())
        @PRODUCTMANAGER = UserRoleB.new(@basicUserRoleFactory.PRODUCTMANAGER, ProductStoreAdminUserFactory.new())
        @CUSTOMERMANAGER = UserRoleB.new(@basicUserRoleFactory.CUSTOMERMANAGER, CustomerStoreAdminUserFactory.new())
        @PAYMENTMANAGER = UserRoleB.new(@basicUserRoleFactory.PAYMENTMANAGER, PaymentStoreAdminUserFactory.new())
        @ORDERMANAGER = UserRoleB.new(@basicUserRoleFactory.ORDERMANAGER, OrderStoreAdminUserFactory.new())
        @WEBMANAGER = UserRoleB.new(@basicUserRoleFactory.WEBMANAGER, WebStoreAdminUserFactory.new())
        @REVIEWER = UserRoleB.new(@basicUserRoleFactory.REVIEWER, ReviewOrderStoreAdminUserFactory.new())
        @SHIPPING = UserRoleB.new(@basicUserRoleFactory.SHIPPING, ShipOrderStoreAdminUserFactory.new())
        @ADJUSTER = UserRoleB.new(@basicUserRoleFactory.ADJUSTER, AdjustOrderStoreAdminUserFactory.new())
        @WORKFLOWEDITOR = UserRoleB.new(@basicUserRoleFactory.WORKFLOWEDITOR, WorkflowEditorWebStoreAdminUserFactory.new())
        @WIZARD = UserRoleB.new(@basicUserRoleFactory.WIZARD, WizardWebStoreAdminUserFactory.new())
        @VIEWEDITOR = UserRoleB.new(@basicUserRoleFactory.VIEWEDITOR, ViewEditorWebStoreAdminUserFactory.new())
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return UserRoleFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/business/user/modules/UserFactory"
require "org/allbinary/business/user/modules/admin/AdminUserFactory"
require "org/allbinary/business/user/modules/admin/store/StoreAdminUserFactory"
require "org/allbinary/business/user/modules/admin/store/customer/CustomerStoreAdminUserFactory"
require "org/allbinary/business/user/modules/admin/store/order/OrderStoreAdminUserFactory"
require "org/allbinary/business/user/modules/admin/store/order/adjust/AdjustOrderStoreAdminUserFactory"
require "org/allbinary/business/user/modules/admin/store/order/review/ReviewOrderStoreAdminUserFactory"
require "org/allbinary/business/user/modules/admin/store/order/ship/ShipOrderStoreAdminUserFactory"
require "org/allbinary/business/user/modules/admin/store/payment/PaymentStoreAdminUserFactory"
require "org/allbinary/business/user/modules/admin/store/product/ProductStoreAdminUserFactory"
require "org/allbinary/business/user/modules/admin/store/web/WebStoreAdminUserFactory"
require "org/allbinary/business/user/modules/admin/store/web/view/editor/ViewEditorWebStoreAdminUserFactory"
require "org/allbinary/business/user/modules/admin/store/web/wizard/WizardWebStoreAdminUserFactory"
require "org/allbinary/business/user/modules/admin/store/web/workflow/editor/WorkflowEditorWebStoreAdminUserFactory"
require "org/allbinary/business/user/modules/customer/subscriber/SubscriberUserFactory"
require "org/allbinary/business/user/modules/customer/wholesale/WholesaleUserFactory"
require "org/allbinary/business/user/role/BasicUserRoleFactory"
require "org/allbinary/business/user/role/UserRole"
require "org/allbinary/business/user/role/UserRoleB"

class UserRoleFactory
    @@instance = UserRoleFactory.new()
end

