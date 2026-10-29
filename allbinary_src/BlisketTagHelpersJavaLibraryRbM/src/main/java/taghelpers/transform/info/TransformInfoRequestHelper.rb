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
# package taghelpers.transform.info

# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/ModifyTable"

class TransformInfoRequestHelper < ModifyTable
    attr_accessor :logUtil, :transformInfoInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @transformInfoInterface = nil
    end
    

    def initialize(propertiesHashMap, pageContext)
        super()
        initialize_fields
        @transformInfoInterface = TransformInfoHttpStoreNoManipulation.new(propertiesHashMap, pageContext)
    end
    

    def update()
        begin
            success = "Updated Successfully"
            hashMapData = @transformInfoInterface.toHashMap()
            TransformInfoEntityBuilder.getInstance().update(hashMapData)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "update()")
            end
            return success
        rescue StandardError => e
            error = "Failed to update storefronts table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "update()", e)
            end
            return error
        end
    end
    

    def insert()
        begin
            success = "Added TransformInfo Successfully"
            values = @transformInfoInterface.toVector()
            TransformInfoEntityBuilder.getInstance().insert(values)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "insert()")
            end
            return success
        rescue StandardError => e
            error = "Failed to add storefronts table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "insert()", e)
            end
            return error
        end
    end
    

    def delete()
        begin
            success = "Delete Successfully"
            TransformInfoEntityBuilder.getInstance().delete(@transformInfoInterface.getKey())
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "delete()")
            end
            return success
        rescue StandardError => e
            error = "Failed to delete storefronts table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "delete()", e)
            end
            return error
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/data/tables/transform/info/TransformInfoEntityBuilder"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpStoreNoManipulation"

