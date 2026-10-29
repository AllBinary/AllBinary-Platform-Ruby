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
# package tags.transform.info

# require "javax/servlet/jsp/JspTagException"
require "tags/ModifyTag"

class TransformInfoTag < ModifyTag
    attr_accessor :logUtil, :name, :storeName, :objectFile, :anyType, :objectConfigFile, :objectConfig, :templateFile, :template, :dataFile, :data, :type

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @name = nil
        @storeName = nil
        @objectFile = nil
        @anyType = nil
        @objectConfigFile = nil
        @objectConfig = nil
        @templateFile = nil
        @template = nil
        @dataFile = nil
        @data = nil
        @type = nil
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        method(:initialize).super_method.call(TransformInfoRequestHelperFactory.new())
        initialize_fields
    end
    

    def constructor1(tagHelperFactoryInterface)
        method(:initialize).super_method.call(tagHelperFactoryInterface)
        initialize_fields
    end
    

    def setName(value)
        @name = value
        self.getPropertiesHashMap().put(TransformInfoData.getInstance().NAME, @name)
    end
    

    def setStoreName(value)
        @storeName = value
        self.getPropertiesHashMap().put(StoreFrontData.getInstance().NAME, @storeName)
    end
    

    def setObjectFile(value)
        @objectFile = value
        self.getPropertiesHashMap().put(TransformInfoData.getInstance().OBJECTFILENAME, @objectFile)
    end
    

    def setObject(value)
        @anyType = value
        self.getPropertiesHashMap().put(TransformInfoData.getInstance().OBJECT, @anyType)
    end
    

    def setTemplateFile(value)
        @templateFile = value
        self.getPropertiesHashMap().put(TransformInfoData.getInstance().TEMPLATEFILENAME, @templateFile)
    end
    

    def setTemplate(value)
        @template = value
        self.getPropertiesHashMap().put(TransformInfoData.getInstance().TEMPLATE, @template)
    end
    

    def setDataFile(value)
        @dataFile = value
        self.getPropertiesHashMap().put(TransformInfoData.getInstance().DATAFILENAME, @dataFile)
    end
    

    def setData(value)
        @data = value
        self.getPropertiesHashMap().put(TransformInfoData.getInstance().DATA, @data)
    end
    

    def setObjectConfigFile(value)
        @objectConfigFile = value
        self.getPropertiesHashMap().put(TransformInfoData.getInstance().OBJECTCONFIGFILENAME, @objectConfigFile)
    end
    

    def setObjectConfig(value)
        @objectConfig = value
        self.getPropertiesHashMap().put(TransformInfoData.getInstance().OBJECTCONFIG, @objectConfig)
    end
    

    def setType(value)
        @type = value
        self.getPropertiesHashMap().put(OutputTypeData.getInstance().NAME, @type)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
            @logUtil.putF("TransformInfoTag type set: " + @type, self, "setType")
        end
    end
    

    def getName()
        return @name
    end
    

    def getObjectFile()
        return @objectFile
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            return super()
        rescue StandardError => e
            AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
end

require "admin/taghelpers/TagHelperFactoryInterface"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/OutputTypeData"
require "org/allbinary/logic/visual/transform/info/TransformInfoData"
require "taghelpers/transform/info/TransformInfoRequestHelperFactory"

