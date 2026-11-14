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
# package org.allbinary.data.tables.advertisement.campaign.internal


class AdvertisementCampaignInternalEntityFactory
    

    def initialize()
    end
    

    def self.getInstance()
        logUtil = LogUtil.getInstance()
        begin
            return AdvertisementCampaignInternalEntity.new()
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR)
                commonStrings = CommonStrings.getInstance()
                logUtil.put(commonStrings.EXCEPTION, "AdvertisementCampaignEntityFactory", commonStrings.GET_INSTANCE, e)
            end
            return nil
        end
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:CLASSNAME, "org.allbinary.data.tables.AdvertisementCampaignEntity")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AdvertisementCampaignInternalEntityFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:CLASSNAME].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :AdvertisementCampaignInternalEntity, "org/allbinary/data/tables/advertisement/campaign/internal/AdvertisementCampaignInternalEntity"
autoload :AdvertisementCampaignInternalEntityInterface, "org/allbinary/data/tables/advertisement/campaign/internal/AdvertisementCampaignInternalEntityInterface"

begin
    AdvertisementCampaignInternalEntityFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

