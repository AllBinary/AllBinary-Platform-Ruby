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
# package admin.tags

# require "java/lang/reflect/Method"
# require "javax/servlet/jsp/JspTagException"
require "admin/tags/TableTag"

class CategoryTag < TableTag
    attr_accessor :logUtil, :xsl

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @xsl = nil
    end
    

    def initialize()
        super()
        initialize_fields
        self.setTagHelperFactory(CategoryHelperFactory.new())
        self.setTagRequestHelperFactory(CategoryRequestHelperFactory.new())
    end
    

    def setXsl(value)
        @xsl = value
    end
    

    # throws LicensingException
    def viewCategory()
        begin
            anyType = CategoryRequestHelperFactory.new().getInstance(self.getPropertiesHashMap(), @pageContext)
            helperClass = anyType.class
            method = helperClass.getMethod("viewCategory", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to view a Category"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "viewCategory()", e)
            end
            return error
        end
    end
    

    # throws LicensingException
    def viewCategories()
        begin
            anyType = CategoryRequestHelperFactory.new().getInstance(self.getPropertiesHashMap(), @pageContext)
            helperClass = anyType.class
            method = helperClass.getMethod("viewCategories", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to view a Categories"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "viewCategories()", e)
            end
            return error
        end
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.isEnabled()
                if self.getCommand() != nil
                    self.getPropertiesHashMap().put(TransformInfoData.getInstance().TEMPLATEFILENAME, @xsl)
                    if self.getCommand().compareTo(CategoryData.getInstance().VIEW) == 0
                        output = self.viewCategory()
                        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT)
                            @pageContext.getOut().print(output)
                        end
                    elsif self.getCommand().compareTo(CategoryData.getInstance().VIEW) == 0
                        output = self.viewCategories()
                        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT)
                            @pageContext.getOut().print(output)
                        end
                    else
                        return super()
                    end
                end
            end
            return SKIP_BODY
        rescue LicensingException => e
            AbResponseHandler.sendJspTagLicensingRedirect(@pageContext, e)
            return SKIP_BODY
        rescue StandardError => e
            AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
end

require "admin/taghelpers/CategoryHelperFactory"
require "admin/taghelpers/CategoryRequestHelperFactory"
require "org/allbinary/business/category/CategoryData"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/security/licensing/LicensingException"
require "org/allbinary/logic/visual/transform/info/TransformInfoData"

