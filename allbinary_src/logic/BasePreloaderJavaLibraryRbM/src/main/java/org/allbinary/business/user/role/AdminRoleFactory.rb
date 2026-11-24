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

class AdminRoleFactory
    attr_accessor :adminRoles, :storeAdminRoles, :storeManagementRoles, :productManagementRoles, :reviewManagementRoles, :customerManagementRoles, :workflowManagementRoles, :orderManagementRoles, :adjusterManagementRoles, :shippingManagementRoles, :webManagementRoles

    def jfields_org_allbinary_business_user_role_AdminRoleFactory
        @adminRoles = ::Org::Allbinary::Util::BasicArrayListD.new()
        @storeAdminRoles = ::Org::Allbinary::Util::BasicArrayListD.new()
        @storeManagementRoles = ::Org::Allbinary::Util::BasicArrayListD.new()
        @productManagementRoles = ::Org::Allbinary::Util::BasicArrayListD.new()
        @reviewManagementRoles = ::Org::Allbinary::Util::BasicArrayListD.new()
        @customerManagementRoles = ::Org::Allbinary::Util::BasicArrayListD.new()
        @workflowManagementRoles = ::Org::Allbinary::Util::BasicArrayListD.new()
        @orderManagementRoles = ::Org::Allbinary::Util::BasicArrayListD.new()
        @adjusterManagementRoles = ::Org::Allbinary::Util::BasicArrayListD.new()
        @shippingManagementRoles = ::Org::Allbinary::Util::BasicArrayListD.new()
        @webManagementRoles = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def self.getInstance()
        return AdminRoleFactory.instance
    end
    

    def initialize()
        jfields_org_allbinary_business_user_role_AdminRoleFactory
        basicUserRoleFactory = BasicUserRoleFactory.getInstance()
        @adminRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        @storeAdminRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        @storeAdminRoles.add(basicUserRoleFactory.STOREMANAGER)
        @storeManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        @storeManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        @storeManagementRoles.add(basicUserRoleFactory.CUSTOMERMANAGER)
        @storeManagementRoles.add(basicUserRoleFactory.ADJUSTER)
        @storeManagementRoles.add(basicUserRoleFactory.PRODUCTMANAGER)
        @storeManagementRoles.add(basicUserRoleFactory.REVIEWER)
        @storeManagementRoles.add(basicUserRoleFactory.SHIPPING)
        @productManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        @productManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        @productManagementRoles.add(basicUserRoleFactory.PRODUCTMANAGER)
        @reviewManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        @reviewManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        @reviewManagementRoles.add(basicUserRoleFactory.REVIEWER)
        @customerManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        @customerManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        @customerManagementRoles.add(basicUserRoleFactory.CUSTOMERMANAGER)
        @workflowManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        @workflowManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        @workflowManagementRoles.add(basicUserRoleFactory.WORKFLOWEDITOR)
        @orderManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        @orderManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        @adjusterManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        @adjusterManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        @adjusterManagementRoles.add(basicUserRoleFactory.ADJUSTER)
        @shippingManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        @shippingManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        @shippingManagementRoles.add(basicUserRoleFactory.SHIPPING)
        @webManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        @webManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        @webManagementRoles.add(basicUserRoleFactory.WEBMANAGER)
        @webManagementRoles.add(basicUserRoleFactory.WORKFLOWEDITOR)
        @webManagementRoles.add(basicUserRoleFactory.VIEWEDITOR)
    end
    

    def getProductManagementRoles()
        return @productManagementRoles
    end
    

    def getAdminRoles()
        return @adminRoles
    end
    

    def getStoreAdminRoles()
        return @storeAdminRoles
    end
    

    def getStoreManagementRoles()
        return @storeManagementRoles
    end
    

    def getReviewManagementRoles()
        return @reviewManagementRoles
    end
    

    def getCustomerManagementRoles()
        return @customerManagementRoles
    end
    

    def getWorkflowManagementRoles()
        return @workflowManagementRoles
    end
    

    def getWebManagementRoles()
        return @webManagementRoles
    end
    

    def getShippingManagementRoles()
        return @shippingManagementRoles
    end
    

    def getAdjusterManagementRoles()
        return @adjusterManagementRoles
    end
    

    def getOrderManagementRoles()
        return @orderManagementRoles
    end

    def self.instance()
        AdminRoleFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AdminRoleFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AdminRoleFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AdminRoleFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :BasicUserRoleFactory, "org/allbinary/business/user/role/BasicUserRoleFactory" unless const_defined?(:BasicUserRoleFactory, false)

begin
    AdminRoleFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

