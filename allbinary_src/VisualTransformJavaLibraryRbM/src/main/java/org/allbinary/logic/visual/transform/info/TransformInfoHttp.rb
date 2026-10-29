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
# package org.allbinary.logic.visual.transform.info

# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "org/allbinary/logic/visual/transform/info/TransformInfo"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface"

class TransformInfoHttp < TransformInfo
    include TransformInfoHttpInterface
    attr_accessor :logUtil, :abContext

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @abContext = nil
    end

    def initialize(*args)
        case args.length
        when 3 then constructor3(*args)
        when 3 then constructor3(*args)
        when 3 then constructor3(*args)
        when 2 then constructor2(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor3(propertiesHashMap, pageContext, crud)
        method(:initialize).super_method.call()
        initialize_fields
        @abContext = AbContext.new(propertiesHashMap, pageContext)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Properties HashMap: " + propertiesHashMap.to_s, self, "Constructor(HashMap, PageContext, boolean)")
        end
        self.override(propertiesHashMap)
    end
    

    def constructor3(request, propertiesHashMap, pageContext)
        method(:initialize).super_method.call()
        initialize_fields
        @abContext = AbContext.new(propertiesHashMap, pageContext)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Properties HashMap: " + propertiesHashMap.to_s, self, "Constructor(HttpServletRequest, HashMap, PageContext)")
        end
        self.set(RequestParams.new(request).toHashMap())
        self.override(propertiesHashMap)
    end
    

    def constructor3(databaseHashMap, propertiesHashMap, pageContext)
        method(:initialize).super_method.call()
        initialize_fields
        @abContext = AbContext.new(propertiesHashMap, pageContext)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Properties HashMap: " + propertiesHashMap.to_s, self, "Constructor(HashMap, HashMap, PageContext)")
        end
        self.set(databaseHashMap)
    end
    

    def constructor2(propertiesHashMap, pageContext)
        method(:initialize).super_method.call()
        initialize_fields
        @abContext = AbContext.new(propertiesHashMap, pageContext)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Properties HashMap: " + propertiesHashMap.to_s, self, "Constructor(HashMap, PageContext)")
        end
        self.set(propertiesHashMap)
    end
    

    def constructor1(parentViewOfThisTransformInfoInterface)
        method(:initialize).super_method.call()
        initialize_fields
        @abContext = AbContext.new(parentViewOfThisTransformInfoInterface.getPropertiesHashMap(), parentViewOfThisTransformInfoInterface.getPageContext())
    end
    

    # throws Exception
    def set(hashMap)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Properties HashMap: " + hashMap.to_s, self, "set()")
        end
        transformInfoData = TransformInfoData.getInstance()
        self.setName(hashMap.get(transformInfoData.NAME))
        self.setStoreName(hashMap.get(StoreFrontData.getInstance().NAME))
        self.setObjectFile(hashMap.get(transformInfoData.OBJECTFILENAME))
        self.setObject(hashMap.get(transformInfoData.OBJECT))
        stringValidationUtil = StringValidationUtil.getInstance()
        objectConfigString = hashMap.get(transformInfoData.OBJECTCONFIG)
        if stringValidationUtil.isValidRequired(objectConfigString, 10, AbSqlData::MAXBLOB)
            self.setObjectConfig(objectConfigString)
        else
            self.setObjectConfig(TransformInfoObjectConfig.new(self).to_s)
        end
        if !stringValidationUtil.isEmpty(hashMap.get(transformInfoData.OBJECTCONFIGFILENAME))
            self.setObjectConfigFile(hashMap.get(transformInfoData.OBJECTCONFIGFILENAME))
        end
        self.setTemplateFile(hashMap.get(transformInfoData.TEMPLATEFILENAME))
        self.setTemplate(hashMap.get(transformInfoData.TEMPLATE))
        self.setDataFile(hashMap.get(transformInfoData.DATAFILENAME))
        self.setData(hashMap.get(transformInfoData.DATA))
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
            @logUtil.putF(self.log(), self, "set()")
        end
    end
    

    def getWeblisketSession()
        return @abContext.getWeblisketSession()
    end
    

    def getPageContext()
        return @abContext.getPageContext()
    end
    

    def getPropertiesHashMap()
        return @abContext.getPropertiesHashMap()
    end
    

    # throws Exception
    def getTemplateFilePath()
        return AbPath.new(URLGLOBALS.getMainPath() + FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH, self.getTemplateFile())
    end
    

    # throws Exception
    def getObjectConfigFilePath()
        return AbPath.new(URLGLOBALS.getMainPath() + FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH, self.getObjectConfigFile())
    end
    

    # throws Exception
    def getDataFilePath()
        return AbPath.new(URLGLOBALS.getMainPath() + FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH, self.getDataFile())
    end
end

require "java/util/HashMap"
require "org/allbinary/business/context/AbContext"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/communication/http/request/RequestParams"
require "org/allbinary/logic/communication/http/request/session/WeblisketSessionInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/sql/AbSqlData"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfig"
require "org/allbinary/logic/visual/transform/info/TransformInfoData"

