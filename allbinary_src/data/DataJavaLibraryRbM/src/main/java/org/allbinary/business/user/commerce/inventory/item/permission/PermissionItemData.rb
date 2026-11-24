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
# package org.allbinary.business.user.commerce.inventory.item.permission


module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; module Permission

class PermissionItemData

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:WHO, "PERMISSIONSITEM_WHO")
        const_set(:WHAT, "PERMISSIONSITEM_WHAT")
        const_set(:TYPE, "PERMISSIONSITEM_TYPE")
        const_set(:START_TIME, "PERMISSIONSITEM_START_TIME")
        const_set(:END_TIME, "PERMISSIONSITEM_END_TIME")
        const_set(:REMOTE_ADDR, "PERMISSIONSITEM_REMOTE_ADDR")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PermissionItemData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:WHO, :WHAT, :TYPE, :START_TIME, :END_TIME, :REMOTE_ADDR].include?(name)
        end
        super
    end
end

begin
    PermissionItemData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end

