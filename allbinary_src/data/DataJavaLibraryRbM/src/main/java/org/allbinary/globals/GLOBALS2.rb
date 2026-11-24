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
# package org.allbinary.globals


module ::Org; module Allbinary; module Globals

class GLOBALS2

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:GETCURRENTLOCATION, "Get Current Location")
        const_set(:GETCURRENTHOMELOCATION, "Get Current Home Location")
        const_set(:GENERATEALLSTORES, "Generate All Stores")
        const_set(:LICENSEAGREEMENT, "License Agreement")
        const_set(:CREATEDATABASES, "Create Databases")
        const_set(:VIEWNAME, "VIEW_NAME")
        const_set(:SETSHIPPINGTYPE, "Set Shipping Type")
        const_set(:VIEWSUMMARY, "View Summary")
        const_set(:SET, "Set")
        const_set(:SELECT, "Select")
        const_set(:SELECTNEW, "Select New")
        const_set(:SELECTEXISTING, "Select Existing")
        const_set(:PROCESS, "Process")
        const_set(:LOGINSUCCESS, "Login Successful")
        const_set(:LOGINFAILED, "Login Failed")
        const_set(:NONE, "None")
        const_set(:TOP, "Top")
        const_set(:LEFT, "Left")
        const_set(:RIGHT, "Right")
        const_set(:BACK, "Back")
        const_set(:BOTTOM, "Bottom")
        const_set(:FRONT, "Front")
        const_set(:AUTHORIZE, "Authorize")
        const_set(:AUTHORIZEANDEVALBODY, "Authorize AND EVAL BODY")
        const_set(:AUTHORIZEANDEVALBODYONERROR, "Authorize AND EVAL BODY On Error")
        const_set(:AUTHORIZEORDEREVALBODYONERROR, "Authorize Order Eval On Error")
        const_set(:AUTHORIZEFORMEVALBODYONERROR, "Authorize Form Eval On Error")
        const_set(:AUTHORIZEORDERANDSKIPBODY, "Authorize Order Skip")
        const_set(:AUTHORIZEORDERANDEVALBODY, "Authorize Order Eval")
        const_set(:EDITPRICING, "Edit Pricing")
        const_set(:UPDATEPRICING, "Update Pricing")
        const_set(:SETPAYMENTMETHOD, "Set Payment Method")
        const_set(:BACKUP, "Backup")
        const_set(:RESTORE, "Restore")
        const_set(:SUMMARY, "Summary")
        const_set(:DESCRIPTION, "Description")
        const_set(:IMG, "img")
        const_set(:HREF, "href")
        const_set(:KEYWORD, "keyword")
        const_set(:TYPE, "TYPE")
        const_set(:DATA, "DATA")
        const_set(:NUM, "NUM")
        const_set(:PRICE, "PRICE")
        const_set(:REGISTER, "Register")
        const_set(:CHECKOUT, "Checkout")
        const_set(:ADMINCOMMAND, "AdminCommand")
        const_set(:PROCESSBODYIFNOTAUTHENTICATED, "Not Authenticated")
        const_set(:PROCESSBODYIFAUTHENTICATED, "Authenticated")
        const_set(:PROCESSTRANSACTION, "Process Transaction")
        const_set(:NEWPASSWORD, "New Password")
        const_set(:CHANGEPASSWORD, "Change Password")
        const_set(:JDBCDRIVER, "Jdbc Driver")
        const_set(:WEBAPPPATH, "Webapp Path")
        const_set(:AMOUNTVALUE, "Amount Value")
        const_set(:GETORDERIDFROMSESSION, "Get Order Id From Session")
        const_set(:SETUPPAYMENTMETHODS, "Setup Payment Methods")
        const_set(:CANCELSTOREFRONT, "Cancel Store Front")
        const_set(:ADJUST, "Adjust")
        const_set(:ISASUBSET, "Is a Subset")
        const_set(:NOTASUBSET, "Not a Subset")
        const_set(:GENERATE, "Generate")
        const_set(:VIEW, "View")
        const_set(:EDIT, "Edit")
        const_set(:NEW, "New")
        const_set(:SEARCH, "Search")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GLOBALS2"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:GETCURRENTLOCATION, :GETCURRENTHOMELOCATION, :GENERATEALLSTORES, :LICENSEAGREEMENT, :CREATEDATABASES, :VIEWNAME, :SETSHIPPINGTYPE, :VIEWSUMMARY, :SET, :SELECT, :SELECTNEW, :SELECTEXISTING, :PROCESS, :LOGINSUCCESS, :LOGINFAILED, :NONE, :TOP, :LEFT, :RIGHT, :BACK, :BOTTOM, :FRONT, :AUTHORIZE, :AUTHORIZEANDEVALBODY, :AUTHORIZEANDEVALBODYONERROR, :AUTHORIZEORDEREVALBODYONERROR, :AUTHORIZEFORMEVALBODYONERROR, :AUTHORIZEORDERANDSKIPBODY, :AUTHORIZEORDERANDEVALBODY, :EDITPRICING, :UPDATEPRICING, :SETPAYMENTMETHOD, :BACKUP, :RESTORE, :SUMMARY, :DESCRIPTION, :IMG, :HREF, :KEYWORD, :TYPE, :DATA, :NUM, :PRICE, :REGISTER, :CHECKOUT, :ADMINCOMMAND, :PROCESSBODYIFNOTAUTHENTICATED, :PROCESSBODYIFAUTHENTICATED, :PROCESSTRANSACTION, :NEWPASSWORD, :CHANGEPASSWORD, :JDBCDRIVER, :WEBAPPPATH, :AMOUNTVALUE, :GETORDERIDFROMSESSION, :SETUPPAYMENTMETHODS, :CANCELSTOREFRONT, :ADJUST, :ISASUBSET, :NOTASUBSET, :GENERATE, :VIEW, :EDIT, :NEW, :SEARCH].include?(name)
        end
        super
    end
end

begin
    GLOBALS2.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

