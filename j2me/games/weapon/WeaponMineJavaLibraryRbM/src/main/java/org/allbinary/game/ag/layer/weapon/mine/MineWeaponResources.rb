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
# package org.allbinary.game.ag.layer.weapon.mine

require "org/allbinary/game/layer/resources/BasicGameResources"

class MineWeaponResources < BasicGameResources
    attr_accessor :DROP_TEXT_RESOURCE, :DROP_RESOURCE, :DROP_ICON_RESOURCE

    def initialize_fields
        @DROP_TEXT_RESOURCE = "/mine_drop_text_20_by_20.png"
        @DROP_RESOURCE = "/mine_drop_20_by_20.png"
        @DROP_ICON_RESOURCE = "/mine_drop_icon_20_by_20.png"
    end
    

    def self.getInstance()
        if MineWeaponResources.instance == NullUtil.getInstance().NULL_OBJECT
            MineWeaponResources.instance = MineWeaponResources.new()
        end
        return MineWeaponResources.instance
    end
    

    def initialize()
        super()
        initialize_fields
        _ROOT = "/mine"
        _SMALL = "_20_by_20.png"
        _MEDIUM = _SMALL
        _SIZE_FOUR = _SMALL
        _SIZE_FIVE = _SMALL
        _SIZE_SIX = _SMALL
        _SIZE = [_SMALL, _MEDIUM, _SIZE_FOUR, _SIZE_FIVE, _SIZE_SIX]
        MineWeaponResources.superclass.instance_method(:init).bind(self).call(_ROOT, _SIZE)
    end

    def self.instance()
        MineWeaponResources.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        MineWeaponResources.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = NullUtil.getInstance().NULL_OBJECT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MineWeaponResources"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :NullUtil, "org/allbinary/logic/NullUtil"

begin
    MineWeaponResources.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

