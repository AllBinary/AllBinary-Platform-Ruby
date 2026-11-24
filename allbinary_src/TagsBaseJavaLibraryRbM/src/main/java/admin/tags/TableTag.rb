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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "java/lang/reflect/Method"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/JspTagException"
require "tags/PropertiesTag"

module ::Admin; module Tags

class TableTag < ::Tags::PropertiesTag
    attr_accessor :logUtil, :enabled, :tagHelperFactoryInterface, :tagRequestHelperFactoryInterface, :requestObject, :current, :total

    def jfields_admin_tags_TableTag
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @enabled = nil unless instance_variable_defined?(:@enabled)
        @tagHelperFactoryInterface = nil unless instance_variable_defined?(:@tagHelperFactoryInterface)
        @tagRequestHelperFactoryInterface = nil unless instance_variable_defined?(:@tagRequestHelperFactoryInterface)
        @requestObject = nil unless instance_variable_defined?(:@requestObject)
        @current = nil unless instance_variable_defined?(:@current)
        @total = nil unless instance_variable_defined?(:@total)
    end
    

    def initialize()
        super()
        jfields_admin_tags_TableTag
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
            @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    def setIsSelected(enabled)
        @enabled = enabled
    end
    java_overload :setIsSelected, 1
    

    # throws Exception
    def isEnabled()
        if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(@enabled)
            if ::Org::Allbinary::Logic::Java::Bool::BooleanUtil.getInstance().getFromString(@enabled) || (@enabled <=> "on") == 0
                return true
            end
        end
        return false
    end
    java_overload :isEnabled, 0
    

    def setTagHelperFactory(tagHelperFactoryInterface)
        @tagHelperFactoryInterface = tagHelperFactoryInterface
    end
    java_overload :setTagHelperFactory, 1
    

    def getTagHelperFactoryInterface()
        return @tagHelperFactoryInterface
    end
    java_overload :getTagHelperFactoryInterface, 0
    

    def setTagRequestHelperFactory(tagHelperFactoryInterface)
        @tagRequestHelperFactoryInterface = tagHelperFactoryInterface
    end
    java_overload :setTagRequestHelperFactory, 1
    

    def getTagRequestHelperFactoryInterface()
        return @tagRequestHelperFactoryInterface
    end
    java_overload :getTagRequestHelperFactoryInterface, 0
    

    def setCurrent(current)
        @current = current
    end
    java_overload :setCurrent, 1
    

    def getCurrent()
        return @current
    end
    java_overload :getCurrent, 0
    

    def setTotal(total)
        @total = total
    end
    java_overload :setTotal, 1
    

    def getTotal()
        return @total
    end
    java_overload :getTotal, 0
    

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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.DROP, e)
            end
            return error
        end
    end
    java_overload :drop, 0
    

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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "create()", e)
            end
            return error
        end
    end
    java_overload :create, 0
    

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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "restore()", e)
            end
            return error
        end
    end
    java_overload :restore, 0
    

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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "backup()", e)
            end
            return error
        end
    end
    java_overload :backup, 0
    

    # throws LicensingException
    def insert()
        begin
            helperClass = @requestObject.class
            method = helperClass.getMethod("insert", nil)
            result = method.invoke(@requestObject, nil)
            return result
        rescue StandardError => e
            error = "Failed to insert"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "insert()", e)
            end
            return error
        end
    end
    java_overload :insert, 0
    

    # throws LicensingException
    def delete()
        begin
            helperClass = @requestObject.class
            method = helperClass.getMethod(@commonStrings.delete, nil)
            result = method.invoke(@requestObject, nil)
            return result
        rescue StandardError => e
            error = "Failed to delete"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "delete()", e)
            end
            return error
        end
    end
    java_overload :delete, 0
    

    # throws LicensingException
    def update()
        begin
            helperClass = @requestObject.class
            method = helperClass.getMethod("update", nil)
            result = method.invoke(@requestObject, nil)
            return result
        rescue StandardError => e
            error = "Failed to update"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "update()", e)
            end
            return error
        end
    end
    java_overload :update, 0
    

    # throws JspTagException
    def doStartTag()
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                request = @pageContext.getRequest()
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("TableTag Helper: ")
                stringBuffer.append(self.getTagHelperFactoryInterface().class.java_name)
                stringBuffer.append(" Request URI: ")
                stringBuffer.append(request.getRequestURI())
                @logUtil.putF(stringBuffer.to_s, self, @tagStrings.DO_START_TAG)
            end
            if self.getTagRequestHelperFactoryInterface() != nil
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                    @logUtil.putF("TableTag RequestHelper: " + self.getTagRequestHelperFactoryInterface().class.java_name, self, @tagStrings.DO_START_TAG)
                end
            else
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                    @logUtil.putF("TableTag RequestHelper: null", self, @tagStrings.DO_START_TAG)
                end
            end
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                @logUtil.putF("TableTag this.getCommand(): " + (self.getCommand()).to_s, self, @tagStrings.DO_START_TAG)
            end
            if self.isEnabled()
                if self.getCommand() != nil
                    if self.getCommand().compareTo(@commonStrings.INSERT) == 0 || self.getCommand().compareTo(::Org::Allbinary::Logic::Communication::Sql::SqlStrings.getInstance().INSERT_INTO) == 0 || self.getCommand().compareTo(@commonStrings.DELETE) == 0 || self.getCommand().compareTo(@commonStrings.UPDATE) == 0 || self.getCommand().compareTo(::Org::Allbinary::Logic::Communication::Sql::SqlStrings.getInstance().UPDATE) == 0
                        @requestObject = self.getTagRequestHelperFactoryInterface().getInstance(self.getPropertiesHashMap(), @pageContext)
                    end
                    if self.getCommand().compareTo(@commonStrings.INSERT) == 0 || self.getCommand().compareTo(::Org::Allbinary::Logic::Communication::Sql::SqlStrings.getInstance().INSERT_INTO) == 0
                        self.insert()
                    elsif self.getCommand().compareTo(@commonStrings.DELETE) == 0
                        self.delete()
                    elsif self.getCommand().compareTo(@commonStrings.UPDATE) == 0 || self.getCommand().compareTo(::Org::Allbinary::Logic::Communication::Sql::SqlStrings.getInstance().UPDATE) == 0
                        self.update()
                    end
                    if self.getCommand().compareTo(::Org::Allbinary::Globals::GLOBALS2::BACKUP) == 0
                        output = self.backup()
                        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT)
                            @pageContext.getOut().print(output + "<br />")
                        end
                        return SKIP_BODY
                    elsif self.getCommand().compareTo(::Org::Allbinary::Globals::GLOBALS2::RESTORE) == 0
                        self.getPropertiesHashMap().put("current", self.getCurrent())
                        self.getPropertiesHashMap().put("total", self.getTotal())
                        output = self.restore()
                        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT)
                            @pageContext.getOut().print(output + "<br />")
                        end
                        return SKIP_BODY
                    elsif self.getCommand().compareTo(@commonStrings.DROP) == 0
                        output = self.drop()
                        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT)
                            @pageContext.getOut().print(output + "<br />")
                        end
                        return SKIP_BODY
                    elsif self.getCommand().compareTo(@commonStrings.CREATE) == 0
                        output = self.create()
                        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT)
                            @pageContext.getOut().print(output + "<br />")
                        end
                        return SKIP_BODY
                    elsif self.getCommand().compareTo(@commonStrings.INSERT) == 0
                        output = self.insert()
                        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT)
                            @pageContext.getOut().print(output + "<br />")
                        end
                    elsif self.getCommand().compareTo(@commonStrings.DELETE) == 0
                        output = self.delete()
                        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT)
                            @pageContext.getOut().print(output + "<br />")
                        end
                    elsif self.getCommand().compareTo(@commonStrings.UPDATE) == 0
                        output = self.update()
                        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT)
                            @pageContext.getOut().print(output + "<br />")
                        end
                    end
                end
            end
            return EVAL_BODY_INCLUDE
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            ::Org::Allbinary::Logic::Communication::Http::Request::AbResponseHandler.sendJspTagLicensingRedirect(@pageContext, e)
            return SKIP_BODY
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Http::Request::AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
    java_overload :doStartTag, 0
end

module ::Admin; module Taghelpers; autoload :TagHelperFactoryInterface, "admin/taghelpers/TagHelperFactoryInterface" unless const_defined?(:TagHelperFactoryInterface, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :AbResponseHandler, "org/allbinary/logic/communication/http/request/AbResponseHandler" unless const_defined?(:AbResponseHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Sql; autoload :SqlStrings, "org/allbinary/logic/communication/sql/SqlStrings" unless const_defined?(:SqlStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanUtil, "org/allbinary/logic/java/bool/BooleanUtil" unless const_defined?(:BooleanUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

