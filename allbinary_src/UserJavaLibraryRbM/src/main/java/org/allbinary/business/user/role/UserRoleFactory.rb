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


module ::Org; module Allbinary; module Business; module User; module Role

class UserRoleFactory
    attr_accessor :basicUserRoleFactory, :INSTALLER, :ADMINISTRATOR, :CUSTOMER, :SUBSCRIBERCUSTOMER, :WHOLESALECUSTOMER, :STOREMANAGER, :PRODUCTMANAGER, :CUSTOMERMANAGER, :PAYMENTMANAGER, :ORDERMANAGER, :WEBMANAGER, :REVIEWER, :SHIPPING, :ADJUSTER, :WORKFLOWEDITOR, :WIZARD, :VIEWEDITOR

    def jfields_org_allbinary_business_user_role_UserRoleFactory
        @basicUserRoleFactory = BasicUserRoleFactory.getInstance()
        @INSTALLER = UserRoleB.new(@basicUserRoleFactory.INSTALLER, nil)
        @ADMINISTRATOR = UserRoleB.new(@basicUserRoleFactory.ADMINISTRATOR, ::Org::Allbinary::Business::User::Modules::Admin::AdminUserFactory.new())
        @CUSTOMER = UserRoleB.new(@basicUserRoleFactory.CUSTOMER, ::Org::Allbinary::Business::User::Modules::UserFactory.new())
        @SUBSCRIBERCUSTOMER = UserRoleB.new(@basicUserRoleFactory.SUBSCRIBERCUSTOMER, ::Org::Allbinary::Business::User::Modules::Customer::Subscriber::SubscriberUserFactory.new())
        @WHOLESALECUSTOMER = UserRoleB.new(@basicUserRoleFactory.WHOLESALECUSTOMER, ::Org::Allbinary::Business::User::Modules::Customer::Wholesale::WholesaleUserFactory.new())
        @STOREMANAGER = UserRoleB.new(@basicUserRoleFactory.STOREMANAGER, ::Org::Allbinary::Business::User::Modules::Admin::Store::StoreAdminUserFactory.new())
        @PRODUCTMANAGER = UserRoleB.new(@basicUserRoleFactory.PRODUCTMANAGER, ::Org::Allbinary::Business::User::Modules::Admin::Store::Product::ProductStoreAdminUserFactory.new())
        @CUSTOMERMANAGER = UserRoleB.new(@basicUserRoleFactory.CUSTOMERMANAGER, ::Org::Allbinary::Business::User::Modules::Admin::Store::Customer::CustomerStoreAdminUserFactory.new())
        @PAYMENTMANAGER = UserRoleB.new(@basicUserRoleFactory.PAYMENTMANAGER, ::Org::Allbinary::Business::User::Modules::Admin::Store::Payment::PaymentStoreAdminUserFactory.new())
        @ORDERMANAGER = UserRoleB.new(@basicUserRoleFactory.ORDERMANAGER, ::Org::Allbinary::Business::User::Modules::Admin::Store::Order::OrderStoreAdminUserFactory.new())
        @WEBMANAGER = UserRoleB.new(@basicUserRoleFactory.WEBMANAGER, ::Org::Allbinary::Business::User::Modules::Admin::Store::Web::WebStoreAdminUserFactory.new())
        @REVIEWER = UserRoleB.new(@basicUserRoleFactory.REVIEWER, ::Org::Allbinary::Business::User::Modules::Admin::Store::Order::Review::ReviewOrderStoreAdminUserFactory.new())
        @SHIPPING = UserRoleB.new(@basicUserRoleFactory.SHIPPING, ::Org::Allbinary::Business::User::Modules::Admin::Store::Order::Ship::ShipOrderStoreAdminUserFactory.new())
        @ADJUSTER = UserRoleB.new(@basicUserRoleFactory.ADJUSTER, ::Org::Allbinary::Business::User::Modules::Admin::Store::Order::Adjust::AdjustOrderStoreAdminUserFactory.new())
        @WORKFLOWEDITOR = UserRoleB.new(@basicUserRoleFactory.WORKFLOWEDITOR, ::Org::Allbinary::Business::User::Modules::Admin::Store::Web::Workflow::Editor::WorkflowEditorWebStoreAdminUserFactory.new())
        @WIZARD = UserRoleB.new(@basicUserRoleFactory.WIZARD, ::Org::Allbinary::Business::User::Modules::Admin::Store::Web::Wizard::WizardWebStoreAdminUserFactory.new())
        @VIEWEDITOR = UserRoleB.new(@basicUserRoleFactory.VIEWEDITOR, ::Org::Allbinary::Business::User::Modules::Admin::Store::Web::View::Editor::ViewEditorWebStoreAdminUserFactory.new())
    end

    def initialize
        jfields_org_allbinary_business_user_role_UserRoleFactory
    end
    

    def self.getInstance()
        return @@instance
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

module ::Org; module Allbinary; module Business; module User; module Modules; autoload :UserFactory, "org/allbinary/business/user/modules/UserFactory" unless const_defined?(:UserFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Modules; module Admin; autoload :AdminUserFactory, "org/allbinary/business/user/modules/admin/AdminUserFactory" unless const_defined?(:AdminUserFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Modules; module Admin; module Store; autoload :StoreAdminUserFactory, "org/allbinary/business/user/modules/admin/store/StoreAdminUserFactory" unless const_defined?(:StoreAdminUserFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Modules; module Admin; module Store; module Customer; autoload :CustomerStoreAdminUserFactory, "org/allbinary/business/user/modules/admin/store/customer/CustomerStoreAdminUserFactory" unless const_defined?(:CustomerStoreAdminUserFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Modules; module Admin; module Store; module Order; autoload :OrderStoreAdminUserFactory, "org/allbinary/business/user/modules/admin/store/order/OrderStoreAdminUserFactory" unless const_defined?(:OrderStoreAdminUserFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Modules; module Admin; module Store; module Order; module Adjust; autoload :AdjustOrderStoreAdminUserFactory, "org/allbinary/business/user/modules/admin/store/order/adjust/AdjustOrderStoreAdminUserFactory" unless const_defined?(:AdjustOrderStoreAdminUserFactory, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Modules; module Admin; module Store; module Order; module Review; autoload :ReviewOrderStoreAdminUserFactory, "org/allbinary/business/user/modules/admin/store/order/review/ReviewOrderStoreAdminUserFactory" unless const_defined?(:ReviewOrderStoreAdminUserFactory, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Modules; module Admin; module Store; module Order; module Ship; autoload :ShipOrderStoreAdminUserFactory, "org/allbinary/business/user/modules/admin/store/order/ship/ShipOrderStoreAdminUserFactory" unless const_defined?(:ShipOrderStoreAdminUserFactory, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Modules; module Admin; module Store; module Payment; autoload :PaymentStoreAdminUserFactory, "org/allbinary/business/user/modules/admin/store/payment/PaymentStoreAdminUserFactory" unless const_defined?(:PaymentStoreAdminUserFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Modules; module Admin; module Store; module Product; autoload :ProductStoreAdminUserFactory, "org/allbinary/business/user/modules/admin/store/product/ProductStoreAdminUserFactory" unless const_defined?(:ProductStoreAdminUserFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Modules; module Admin; module Store; module Web; autoload :WebStoreAdminUserFactory, "org/allbinary/business/user/modules/admin/store/web/WebStoreAdminUserFactory" unless const_defined?(:WebStoreAdminUserFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Modules; module Admin; module Store; module Web; module View; module Editor; autoload :ViewEditorWebStoreAdminUserFactory, "org/allbinary/business/user/modules/admin/store/web/view/editor/ViewEditorWebStoreAdminUserFactory" unless const_defined?(:ViewEditorWebStoreAdminUserFactory, false); end; end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Modules; module Admin; module Store; module Web; module Wizard; autoload :WizardWebStoreAdminUserFactory, "org/allbinary/business/user/modules/admin/store/web/wizard/WizardWebStoreAdminUserFactory" unless const_defined?(:WizardWebStoreAdminUserFactory, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Modules; module Admin; module Store; module Web; module Workflow; module Editor; autoload :WorkflowEditorWebStoreAdminUserFactory, "org/allbinary/business/user/modules/admin/store/web/workflow/editor/WorkflowEditorWebStoreAdminUserFactory" unless const_defined?(:WorkflowEditorWebStoreAdminUserFactory, false); end; end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Modules; module Customer; module Subscriber; autoload :SubscriberUserFactory, "org/allbinary/business/user/modules/customer/subscriber/SubscriberUserFactory" unless const_defined?(:SubscriberUserFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Modules; module Customer; module Wholesale; autoload :WholesaleUserFactory, "org/allbinary/business/user/modules/customer/wholesale/WholesaleUserFactory" unless const_defined?(:WholesaleUserFactory, false); end; end; end; end; end; end; end
autoload :BasicUserRoleFactory, "org/allbinary/business/user/role/BasicUserRoleFactory" unless const_defined?(:BasicUserRoleFactory, false)
autoload :UserRole, "org/allbinary/business/user/role/UserRole" unless const_defined?(:UserRole, false)
autoload :UserRoleB, "org/allbinary/business/user/role/UserRoleB" unless const_defined?(:UserRoleB, false)

begin
    UserRoleFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

