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
# package org.allbinary.logic.communication.http.request.session


module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session

class WeblisketSessionData
    

    def initialize()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:INVALIDATESESSION, "SESSION_INVALIDATE_SESSION")
        const_set(:ATTEMPTS, "SESSION_ATTEMPTS")
        const_set(:TIMEOUT, "SESSION_TIMEOUT")
        const_set(:REMOVABLEUSERNAME, "SESSION_REMOVABLE_USER_NAME")
        const_set(:REMOVABLEPASSWORD, "SESSION_REMOVABLE_PASSWORD")
        const_set(:REMOVABLENEWPASSWORD, "SESSION_REMOVABLE_NEW_PASSWORD")
        const_set(:REMOVABLEREENTERNEWPASSWORD, "SESSION_REMOVABLE_REENTER_NEW_PASSWORD")
        const_set(:AUTHENTICATED, "SESSION_AUTHENTICATED")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "WeblisketSessionData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:INVALIDATESESSION, :ATTEMPTS, :TIMEOUT, :REMOVABLEUSERNAME, :REMOVABLEPASSWORD, :REMOVABLENEWPASSWORD, :REMOVABLEREENTERNEWPASSWORD, :AUTHENTICATED].include?(name)
        end
        super
    end
end

begin
    WeblisketSessionData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

