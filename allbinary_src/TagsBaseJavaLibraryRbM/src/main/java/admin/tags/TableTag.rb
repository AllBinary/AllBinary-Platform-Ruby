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
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/JspTagException"
require "tags/PropertiesTag"

class TableTag < PropertiesTag
    attr_accessor :logUtil, :enabled, :tagHelperFactoryInterface, :tagRequestHelperFactoryInterface, :requestObject, :current, :total

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @enabled = nil
        @tagHelperFactoryInterface = nil
        @tagRequestHelperFactoryInterface = nil
        @requestObject = nil
        @current = nil
        @total = nil
    end
    

    def initialize()
        super()
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
            @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    def setIsSelected(enabled)
        @enabled = enabled
    end
    

    # throws Exception
    def isEnabled()
        if !StringValidationUtil.getInstance().isEmpty(@enabled)
            if BooleanUtil.getInstance().getFromString(@enabled) || (@enabled <=> "on") == 0
                return true
            end
        end
        return false
    end
    

    def setTagHelperFactory(tagHelperFactoryInterface)
        @tagHelperFactoryInterface = tagHelperFactoryInterface
    end
    

    def getTagHelperFactoryInterface()
        return @tagHelperFactoryInterface
    end
    

    def setTagRequestHelperFactory(tagHelperFactoryInterface)
        @tagRequestHelperFactoryInterface = tagHelperFactoryInterface
    end
    

    def getTagRequestHelperFactoryInterface()
        return @tagRequestHelperFactoryInterface
    end
    

    def setCurrent(current)
        @current = current
    end
    

    def getCurrent()
        return @current
    end
    

    def setTotal(total)
        @total = total
    end
    

    def getTotal()
        return @total
    end
    

    # throws LicensingException
    def drop()
        begin
            anyType = self.getTagHelperFactoryInterface().getInstance(self.getPropertiesHashMap(), @pageContext)
            addressHelperClass = anyType.class
            method = addressHelperClass.getMethod("drop", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue StandardError => e
            error = "Failed to drop table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.DROP, e)
            end
            return error
        end
    end
    

    # throws LicensingException
    def create()
        begin
            anyType = self.getTagHelperFactoryInterface().getInstance(self.getPropertiesHashMap(), @pageContext)
            addressHelperClass = anyType.class
            method = addressHelperClass.getMethod("create", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue StandardError => e
            error = "Failed to create table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "create()", e)
            end
            return error
        end
    end
    

    # throws LicensingException
    def restore()
        begin
            anyType = self.getTagHelperFactoryInterface().getInstance(self.getPropertiesHashMap(), @pageContext)
            addressHelperClass = anyType.class
            method = addressHelperClass.getMethod("restore", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue StandardError => e
            error = "Failed to restore backup"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "restore()", e)
            end
            return error
        end
    end
    

    # throws LicensingException
    def backup()
        begin
            anyType = self.getTagHelperFactoryInterface().getInstance(self.getPropertiesHashMap(), @pageContext)
            addressHelperClass = anyType.class
            method = addressHelperClass.getMethod("backup", nil)
            result = method.invoke(anyType, nil)
            return result
        rescue StandardError => e
            error = "Failed to make backup"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "backup()", e)
            end
            return error
        end
    end
    

    # throws LicensingException
    def insert()
        begin
            helperClass = @requestObject.class
            method = helperClass.getMethod("insert", nil)
            result = method.invoke(@requestObject, nil)
            return result
        rescue StandardError => e
            error = "Failed to insert"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "insert()", e)
            end
            return error
        end
    end
    

    # throws LicensingException
    def delete()
        begin
            helperClass = @requestObject.class
            method = helperClass.getMethod(@commonStrings.delete, nil)
            result = method.invoke(@requestObject, nil)
            return result
        rescue StandardError => e
            error = "Failed to delete"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "delete()", e)
            end
            return error
        end
    end
    

    # throws LicensingException
    def update()
        begin
            helperClass = @requestObject.class
            method = helperClass.getMethod("update", nil)
            result = method.invoke(@requestObject, nil)
            return result
        rescue StandardError => e
            error = "Failed to update"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "update()", e)
            end
            return error
        end
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                request = @pageContext.getRequest()
                stringBuffer = StringMaker.new()
                stringBuffer.append("TableTag Helper: ")
                stringBuffer.append(self.getTagHelperFactoryInterface().class.name)
                stringBuffer.append(" Request URI: ")
                stringBuffer.append(request.getRequestURI())
                @logUtil.putF(stringBuffer.to_s, self, @tagStrings.DO_START_TAG)
            end
            if self.getTagRequestHelperFactoryInterface() != nil
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                    @logUtil.putF("TableTag RequestHelper: " + self.getTagRequestHelperFactoryInterface().class.name, self, @tagStrings.DO_START_TAG)
                end
            else
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                    @logUtil.putF("TableTag RequestHelper: null", self, @tagStrings.DO_START_TAG)
                end
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAG)
                @logUtil.putF("TableTag this.getCommand(): " + (self.getCommand()).to_s, self, @tagStrings.DO_START_TAG)
            end
            if self.isEnabled()
                if self.getCommand() != nil
                    if self.getCommand().compareTo(@commonStrings.INSERT) == 0 || self.getCommand().compareTo(SqlStrings.getInstance().INSERT_INTO) == 0 || self.getCommand().compareTo(@commonStrings.DELETE) == 0 || self.getCommand().compareTo(@commonStrings.UPDATE) == 0 || self.getCommand().compareTo(SqlStrings.getInstance().UPDATE) == 0
                        @requestObject = self.getTagRequestHelperFactoryInterface().getInstance(self.getPropertiesHashMap(), @pageContext)
                    end
                    if self.getCommand().compareTo(@commonStrings.INSERT) == 0 || self.getCommand().compareTo(SqlStrings.getInstance().INSERT_INTO) == 0
                        self.insert()
                    elsif self.getCommand().compareTo(@commonStrings.DELETE) == 0
                        self.delete()
                    elsif self.getCommand().compareTo(@commonStrings.UPDATE) == 0 || self.getCommand().compareTo(SqlStrings.getInstance().UPDATE) == 0
                        self.update()
                    end
                    if self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.BACKUP) == 0
                        output = self.backup()
                        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT)
                            @pageContext.getOut().print(output + "<br />")
                        end
                        return SKIP_BODY
                    elsif self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.RESTORE) == 0
                        self.getPropertiesHashMap().put("current", self.getCurrent())
                        self.getPropertiesHashMap().put("total", self.getTotal())
                        output = self.restore()
                        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT)
                            @pageContext.getOut().print(output + "<br />")
                        end
                        return SKIP_BODY
                    elsif self.getCommand().compareTo(@commonStrings.DROP) == 0
                        output = self.drop()
                        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT)
                            @pageContext.getOut().print(output + "<br />")
                        end
                        return SKIP_BODY
                    elsif self.getCommand().compareTo(@commonStrings.CREATE) == 0
                        output = self.create()
                        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT)
                            @pageContext.getOut().print(output + "<br />")
                        end
                        return SKIP_BODY
                    elsif self.getCommand().compareTo(@commonStrings.INSERT) == 0
                        output = self.insert()
                        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT)
                            @pageContext.getOut().print(output + "<br />")
                        end
                    elsif self.getCommand().compareTo(@commonStrings.DELETE) == 0
                        output = self.delete()
                        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT)
                            @pageContext.getOut().print(output + "<br />")
                        end
                    elsif self.getCommand().compareTo(@commonStrings.UPDATE) == 0
                        output = self.update()
                        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT)
                            @pageContext.getOut().print(output + "<br />")
                        end
                    end
                end
            end
            return EVAL_BODY_INCLUDE
        rescue LicensingException => e
            AbResponseHandler.sendJspTagLicensingRedirect(@pageContext, e)
            return SKIP_BODY
        rescue StandardError => e
            AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
end

require "admin/taghelpers/TagHelperFactoryInterface"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/sql/SqlStrings"
require "org/allbinary/logic/java/bool/BooleanUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/system/security/licensing/LicensingException"

