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


class AdminRoleFactory
    attr_accessor :adminRoles, :storeAdminRoles, :storeManagementRoles, :productManagementRoles, :reviewManagementRoles, :customerManagementRoles, :workflowManagementRoles, :orderManagementRoles, :adjusterManagementRoles, :shippingManagementRoles, :webManagementRoles

    def initialize_fields
        @adminRoles = BasicArrayListD.new()
        @storeAdminRoles = BasicArrayListD.new()
        @storeManagementRoles = BasicArrayListD.new()
        @productManagementRoles = BasicArrayListD.new()
        @reviewManagementRoles = BasicArrayListD.new()
        @customerManagementRoles = BasicArrayListD.new()
        @workflowManagementRoles = BasicArrayListD.new()
        @orderManagementRoles = BasicArrayListD.new()
        @adjusterManagementRoles = BasicArrayListD.new()
        @shippingManagementRoles = BasicArrayListD.new()
        @webManagementRoles = BasicArrayListD.new()
    end
    

    def self.getInstance()
        return AdminRoleFactory.instance
    end
    

    def initialize()
        initialize_fields
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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/user/role/BasicUserRoleFactory"

class AdminRoleFactory
    @@instance = AdminRoleFactory.new()
end

