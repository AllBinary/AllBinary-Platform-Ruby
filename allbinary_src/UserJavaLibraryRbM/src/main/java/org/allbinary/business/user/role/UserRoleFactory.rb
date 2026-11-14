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
        UserRoleFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        UserRoleFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = UserRoleFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "UserRoleFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :UserFactory, "org/allbinary/business/user/modules/UserFactory"
autoload :AdminUserFactory, "org/allbinary/business/user/modules/admin/AdminUserFactory"
autoload :StoreAdminUserFactory, "org/allbinary/business/user/modules/admin/store/StoreAdminUserFactory"
autoload :CustomerStoreAdminUserFactory, "org/allbinary/business/user/modules/admin/store/customer/CustomerStoreAdminUserFactory"
autoload :OrderStoreAdminUserFactory, "org/allbinary/business/user/modules/admin/store/order/OrderStoreAdminUserFactory"
autoload :AdjustOrderStoreAdminUserFactory, "org/allbinary/business/user/modules/admin/store/order/adjust/AdjustOrderStoreAdminUserFactory"
autoload :ReviewOrderStoreAdminUserFactory, "org/allbinary/business/user/modules/admin/store/order/review/ReviewOrderStoreAdminUserFactory"
autoload :ShipOrderStoreAdminUserFactory, "org/allbinary/business/user/modules/admin/store/order/ship/ShipOrderStoreAdminUserFactory"
autoload :PaymentStoreAdminUserFactory, "org/allbinary/business/user/modules/admin/store/payment/PaymentStoreAdminUserFactory"
autoload :ProductStoreAdminUserFactory, "org/allbinary/business/user/modules/admin/store/product/ProductStoreAdminUserFactory"
autoload :WebStoreAdminUserFactory, "org/allbinary/business/user/modules/admin/store/web/WebStoreAdminUserFactory"
autoload :ViewEditorWebStoreAdminUserFactory, "org/allbinary/business/user/modules/admin/store/web/view/editor/ViewEditorWebStoreAdminUserFactory"
autoload :WizardWebStoreAdminUserFactory, "org/allbinary/business/user/modules/admin/store/web/wizard/WizardWebStoreAdminUserFactory"
autoload :WorkflowEditorWebStoreAdminUserFactory, "org/allbinary/business/user/modules/admin/store/web/workflow/editor/WorkflowEditorWebStoreAdminUserFactory"
autoload :SubscriberUserFactory, "org/allbinary/business/user/modules/customer/subscriber/SubscriberUserFactory"
autoload :WholesaleUserFactory, "org/allbinary/business/user/modules/customer/wholesale/WholesaleUserFactory"
autoload :BasicUserRoleFactory, "org/allbinary/business/user/role/BasicUserRoleFactory"
autoload :UserRole, "org/allbinary/business/user/role/UserRole"
autoload :UserRoleB, "org/allbinary/business/user/role/UserRoleB"

begin
    UserRoleFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

