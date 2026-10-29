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
# package admin.taghelpers

# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/TagHelperFactory"

class SpecialItemsHelperFactory < TagHelperFactory
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    # throws LicensingException
    def getInstance(hashMap, pageContext)
        begin
            return SpecialItemsHelper.new(hashMap, pageContext)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.GET_INSTANCE, e)
            end
            return nil
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/security/licensing/LicensingException"
require "admin/taghelpers/SpecialItemsHelper"

