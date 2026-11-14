# 
# To change this license header, choose License Headers in Project Properties. 
# To change this template file, choose Tools | Templates 
# and open the template in the editor.  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.multiplayer.layer


class RemoteInfo
    

    def initialize(username, actorSessionId, playerInputId, id)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NEW_PLAYER_ID, 0)
        begin
            const_set(:REMOTE_INFO, RemoteInfo.new(StringUtil.getInstance().EMPTY_STRING, -1, -1, RemoteInfo::NEW_PLAYER_ID))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "RemoteInfo"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NEW_PLAYER_ID, :REMOTE_INFO].include?(name)
        end
        super
    end
end

autoload :StringUtil, "org/allbinary/logic/string/StringUtil"

begin
    RemoteInfo.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

