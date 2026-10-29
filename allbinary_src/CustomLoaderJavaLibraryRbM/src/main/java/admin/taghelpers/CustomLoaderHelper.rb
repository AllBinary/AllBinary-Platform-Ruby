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

class CustomLoaderHelper
    attr_accessor :logUtil, :commonStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
    end

    def initialize(*args)
        case args.length
        when 2 then constructor2(*args)
        when 0 then constructor0(*args)
        end
    end
    

    def constructor2(hashMap, pageContext)
        initialize_fields
    end
    

    def constructor0()
        initialize_fields
    end
    

    # throws Exception
    def getWebappPath()
        begin
            return org.allbinary.globals.URLGLOBALS.getWebappPath()
        rescue StandardError => e
            return nil
        end
    end
    

    # throws Exception
    def setWebappPath(path)
        begin
            urlGlobals = AppUrlGlobals.new()
            urlGlobals.setWebappPath(path)
            URLGLOBALS.init(urlGlobals)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "setWebappPath()", e)
            end
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/globals/AppUrlGlobals"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"

