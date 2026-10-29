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
end

require "org/allbinary/logic/string/StringUtil"

class RemoteInfo
    NEW_PLAYER_ID = 0
    REMOTE_INFO = RemoteInfo.new(StringUtil.getInstance().EMPTY_STRING, -1, -1, RemoteInfo::NEW_PLAYER_ID)
end

