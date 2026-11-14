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
# package views.business.context.modules.storefront.customizer.template

require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

#Sets Template Type
class InsertCustomizerValidationView < HttpStoreComponentView
    include ValidationComponentInterface
    attr_accessor :logUtil, :viewName

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @viewName = nil
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + transformInfoInterface.getName(), self, @commonStrings.CONSTRUCTOR)
        end
        requestHashMap = RequestParams.new(self.getPageContext()).toHashMap()
        @viewName = requestHashMap.get(TransformInfoData.getInstance().NAME)
    end
    

    def isValid()
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Started Validation", self, @commonStrings.IS_VALID)
            end
            isValid = true
            if StringValidationUtil.getInstance().isEmpty(@viewName)
                isValid = false
            else
                objectConfig = NoTemplateTransformInfoObjectConfig.new(self.getTransformInfoInterface(), self.getTransformInfoInterface().getObjectConfigInterface().toXmlDoc())
                componentVector = objectConfig.getGroupTransforms()
                size = componentVector.size()
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    stringBuffer = StringMaker.new()
                    stringBuffer.append("Pointing ")
                    stringBuffer.appendint(componentVector.size())
                    stringBuffer.append(" Components")
                    @logUtil.putF(stringBuffer.to_s, self, @commonStrings.IS_VALID)
                end
                (0...size).each do |index|
                    transformInfo = componentVector.get(index)
                    transformInfoName = transformInfo.getName()
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                        @logUtil.putF("Setting Template Component with ViewName: " + transformInfoName, self, @commonStrings.IS_VALID)
                    end
                    componentInterface = TransformFactory.getInstance().getInstance(@abeClientInformation, transformInfoName, self.getTransformInfoInterface())
                    templateViewObjectConfig = InsertTemplateCustomizerTransformInfoObjectConfig.new(componentInterface.getTransformInfoInterface(), componentInterface.getTransformInfoInterface().getObjectConfigInterface().toXmlDoc())
                    storeName = self.getTransformInfoInterface().getStoreName()
                    endIndex = (@viewName.index(storeName) || -1) + storeName.length
                    storePrepend = @viewName[0...endIndex]
                    viewNamePostfix = @viewName[endIndex...@viewName.length]
                    newViewNameStringBuffer = StringMaker.new()
                    newViewNameStringBuffer.append(storePrepend)
                    commonSeps = CommonSeps.getInstance()
                    transformInfosData = TransformInfosData.getInstance()
                    if (transformInfoName.index(transformInfosData.SMALL_PREVIEW) || -1) >= 0
                        newViewNameStringBuffer.append(commonSeps.SPACE)
                        newViewNameStringBuffer.append(transformInfosData.SMALL_PREVIEW)
                    elsif (transformInfoName.index(transformInfosData.PREVIEW) || -1) >= 0
                        newViewNameStringBuffer.append(commonSeps.SPACE)
                        newViewNameStringBuffer.append(transformInfosData.PREVIEW)
                    end
                    newViewNameStringBuffer.append(commonSeps.SPACE)
                    newViewNameStringBuffer.append(viewNamePostfix)
                    if (transformInfoName.index(GeneratorTransformInfoData::NAME) || -1) >= 0
                        newViewNameStringBuffer.append(commonSeps.SPACE)
                        newViewNameStringBuffer.append(GeneratorTransformInfoData::NAME)
                    end
                    newViewName = newViewNameStringBuffer.to_s
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                        stringBuffer = StringMaker.new()
                        stringBuffer.append("Template Component: ")
                        stringBuffer.append(transformInfoName)
                        stringBuffer.append("\n Now Pointing To View Name: ")
                        stringBuffer.append(newViewName)
                        @logUtil.putF(stringBuffer.to_s, self, @commonStrings.IS_VALID)
                    end
                    templateViewObjectConfig.set(newViewName)
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                        stringBuffer = StringMaker.new()
                        stringBuffer.append("Template Component: ")
                        stringBuffer.append(transformInfoName)
                        stringBuffer.append("\n with ObjectConfig: ")
                        stringBuffer.append(templateViewObjectConfig.to_s)
                        @logUtil.putF(stringBuffer.to_s, self, @commonStrings.IS_VALID)
                    end
                    componentInterface.getTransformInfoInterface().setObjectConfigInterface(templateViewObjectConfig)
                    updatedTransformInfoHashMap = componentInterface.getTransformInfoInterface().toHashMap()
                    TransformInfoEntityBuilder.getInstance().update(updatedTransformInfoHashMap)
                end
            end
            return isValid
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to validate", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    def validationInfo()
        begin
            stringBuffer = StringMaker.new()
            stringBuffer.append("Error: Template Name Is Empty.")
            return stringBuffer.to_s
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Getting Validation Info"
        end
    end
    

    def toValidationInfoDoc()
        return nil
    end
    

    def toValidationInfoNode(document)
        return nil
    end
    

    # throws Exception
    def view()
        return @views.ValidationOnlyTempUtil.getInstance().view(self)
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :TransformInfoEntityBuilder, "org/allbinary/data/tables/transform/info/TransformInfoEntityBuilder"
autoload :RequestParams, "org/allbinary/logic/communication/http/request/RequestParams"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil"
autoload :TransformFactory, "org/allbinary/logic/visual/transform/TransformFactory"
autoload :TransformInterface, "org/allbinary/logic/visual/transform/TransformInterface"
autoload :GeneratorTransformInfoData, "org/allbinary/logic/visual/transform/info/GeneratorTransformInfoData"
autoload :TransformInfo, "org/allbinary/logic/visual/transform/info/TransformInfo"
autoload :TransformInfoData, "org/allbinary/logic/visual/transform/info/TransformInfoData"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :TransformInfosData, "org/allbinary/logic/visual/transform/info/TransformInfosData"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :InsertTemplateCustomizerTransformInfoObjectConfig, "views/business/context/modules/storefront/customizer/template/objectConfig/InsertTemplateCustomizerTransformInfoObjectConfig"
autoload :NoTemplateTransformInfoObjectConfig, "views/business/context/modules/storefront/customizer/template/objectConfig/NoTemplateTransformInfoObjectConfig"

