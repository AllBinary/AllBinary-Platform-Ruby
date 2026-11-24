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
# package org.allbinary.business.user


module ::Org; module Allbinary; module Business; module User

class UserData
    

    def initialize()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:MAXLEN, 250)
        const_set(:NAME, "USER_NAME")
        const_set(:USERNAME, "CUSTOMER_USER_NAME")
        const_set(:PASSWORD, "CUSTOMER_PASSWORD")
        const_set(:PREFIXNAME, "CUSTOMER_PREFIX_NAME")
        const_set(:FIRSTNAME, "CUSTOMER_FIRST_NAME")
        const_set(:LASTNAME, "CUSTOMER_LAST_NAME")
        const_set(:MIDDLENAME, "CUSTOMER_MIDDLE_NAME")
        const_set(:SUFFIXNAME, "CUSTOMER_SUFFIX_NAME")
        const_set(:COMPANY, "CUSTOMER_COMPANY")
        const_set(:POSITIONATCOMPANY, "CUSTOMER_POSITION_AT_COMPANY")
        const_set(:MAINEMAIL, "CUSTOMER_MAIN_EMAIL")
        const_set(:SECONDARYEMAIL, "CUSTOMER_SECONDARY_EMAIL")
        const_set(:HOMEPHONE, "CUSTOMER_HOME_PHONE")
        const_set(:CELLPHONE, "CUSTOMER_CELL_PHONE")
        const_set(:WORKPHONE, "CUSTOMER_WORK_PHONE")
        const_set(:OTHERCONTACT, "CUSTOMER_OTHER_CONTACT")
        const_set(:ELECTRONICDEVICE, "CUSTOMER_ELECTRONIC_DEVICE")
        const_set(:FAX, "CUSTOMER_FAX")
        const_set(:SECRET, "CUSTOMER_SECRET")
        const_set(:PERMISSIONS, "CUSTOMER_PERMISSIONS")
        const_set(:CONFIGURATION, "CUSTOMER_CONFIGURATION")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "UserData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:MAXLEN, :NAME, :USERNAME, :PASSWORD, :PREFIXNAME, :FIRSTNAME, :LASTNAME, :MIDDLENAME, :SUFFIXNAME, :COMPANY, :POSITIONATCOMPANY, :MAINEMAIL, :SECONDARYEMAIL, :HOMEPHONE, :CELLPHONE, :WORKPHONE, :OTHERCONTACT, :ELECTRONICDEVICE, :FAX, :SECRET, :PERMISSIONS, :CONFIGURATION].include?(name)
        end
        super
    end
end

begin
    UserData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

