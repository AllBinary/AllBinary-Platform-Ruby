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
# package org.allbinary.input.automation.module.generic


class GenericConfigData
    

    def initialize()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:RELATIVE_PATH, "./")
        const_set(:CONFIG_PATH, "modules/configs/")
        const_set(:FREE_MMO_GAME_MODULE_RELATIVE_PATH, "free/")
        begin
            const_set(:MODULE_RELATIVE_PATH, (GenericConfigData::RELATIVE_PATH + GenericConfigData::CONFIG_PATH).to_s + "allbinary/input/automation/module/")
            const_set(:GAME_MODULE_RELATIVE_PATH, (GenericConfigData::MODULE_RELATIVE_PATH).to_s + "game/")
            const_set(:MMO_GAME_MODULE_RELATIVE_PATH, (GenericConfigData::GAME_MODULE_RELATIVE_PATH).to_s + "mmog/")
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GenericConfigData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:RELATIVE_PATH, :CONFIG_PATH, :MODULE_RELATIVE_PATH, :GAME_MODULE_RELATIVE_PATH, :MMO_GAME_MODULE_RELATIVE_PATH, :FREE_MMO_GAME_MODULE_RELATIVE_PATH].include?(name)
        end
        super
    end
end

begin
    GenericConfigData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

