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
# package tags.generic.inventory

# require "java/lang/reflect/Method"
# require "javax/servlet/jsp/JspTagException"
require "tags/StoreValidationTransformTag"

class InventoryTag < StoreValidationTransformTag
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    # throws LicensingException
    def search()
        begin
            anyType = InventoryHelperFactory.new().getInstance(self.getPropertiesHashMap(), @pageContext)
            addressHelperClass = anyType.class
            method = addressHelperClass.getMethod("search", nil)
            result = method.invoke(anyType, nil)
            @pageContext.getOut().print(result)
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to search Inventory by keyword"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "search()", e)
            end
            begin
                @pageContext.getOut().print(error + "<br>")
                @pageContext.getOut().print("Exception: " + (e).to_s + "<br>")
            rescue StandardError => e2
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().LICENSINGERROR)
                    @logUtil.put("Exception in Exception Handling", self, "search()", e)
                end
            end
        end
    end
    

    # throws LicensingException
    def viewSummary()
        begin
            anyType = InventoryHelperFactory.new().getInstance(self.getPropertiesHashMap(), @pageContext)
            helperClass = anyType.class
            method = helperClass.getMethod("viewSummary", nil)
            result = method.invoke(anyType, nil)
            @pageContext.getOut().print(result)
        rescue LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to View Summary"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "viewSummary()", e)
            end
            begin
                @pageContext.getOut().print(error + "<br>")
                @pageContext.getOut().print("Exception: " + (e).to_s + "<br>")
            rescue StandardError => e2
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().LICENSINGERROR)
                    @logUtil.put("Exception in Exception Handling", self, "viewSummary())", e)
                end
            end
        end
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.getCommand() != nil
                if self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.SEARCH) == 0
                    self.setName("Basic Search Inventory View")
                    self.setObjectFile("views.generic.inventory.AutoSearchValidationInventoryView")
                    self.search()
                    return EVAL_BODY_INCLUDE
                elsif self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.VIEWSUMMARY) == 0
                    self.setName("Basic Inventory View")
                    self.setObjectFile("views.generic.inventory.AutoValidationInventoryView")
                    self.viewSummary()
                    return EVAL_BODY_INCLUDE
                elsif self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.VIEW) == 0
                    self.setName("Basic Inventory View")
                    self.setObjectFile("views.generic.inventory.AutoValidationInventoryView")
                    return super()
                else
                    raise StandardError.new("No Such View Command: " + (self.getCommand()).to_s)
                end
            end
            raise StandardError.new("Command Null")
        rescue LicensingException => e
            AbResponseHandler.sendJspTagLicensingRedirect(@pageContext, e)
            return SKIP_BODY
        rescue StandardError => e
            AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
end

require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/security/licensing/LicensingException"
require "taghelpers/InventoryHelperFactory"

