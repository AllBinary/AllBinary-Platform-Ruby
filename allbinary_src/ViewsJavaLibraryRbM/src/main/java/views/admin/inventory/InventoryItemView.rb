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
# package views.admin.inventory

# require "java/util/Set"
# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/logic/communication/http/request/RequestMapInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

class InventoryItemView < HttpStoreComponentView
    include RequestMapInterface
    attr_accessor :logUtil, :basicItemData, :request, :imageFileName, :mediaData, :itemInterface, :downloadableItemVector, :requestHashMap

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @basicItemData = BasicItemData.getInstance()
        @request = nil
        @imageFileName = nil
        @mediaData = nil
        @itemInterface = nil
        @downloadableItemVector = nil
        @requestHashMap = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 2 then constructor2(*args)
        end
    end
    

    def constructor1(transformInfoInterface)
        method(:initialize).super_method.call(transformInfoInterface)
        initialize_fields
        @request = self.getPageContext().getRequest()
        self.getFormData()
    end
    

    def constructor2(transformInfoInterface, empty)
        method(:initialize).super_method.call(transformInfoInterface)
        initialize_fields
        @request = self.getPageContext().getRequest()
    end
    

    def getTypeId()
        return InventoryItemView::TYPE_ID
    end
    

    # throws Exception
    def getFormData()
        self.setRequestHashMap(MultipartRequestParams.new(@request).toHashMap())
        imageFileItemObject = self.getRequestHashMap().get(@basicItemData.IMAGE)
        if HttpFileUploadUtil.getInstance().isValid(imageFileItemObject)
            fileItem = imageFileItemObject
            if fileItem != nil && fileItem.getSize() > 1
                @imageFileName = HttpRequestUtil.getInstance().generateFileName(fileItem.getName())
                pathData = AbPathData.getInstance()
                pathUtil = PathUtil.getInstance()
                @mediaData = MediaData.get(pathData.getExtension(@imageFileName))
                @imageFileName = pathUtil.getWithoutExtension(@imageFileName)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                    stringBuffer = StringMaker.new()
                    stringBuffer.append("Uploaded File Data: ")
                    stringBuffer.append(@imageFileName)
                    stringBuffer.append(" Extension: ")
                    stringBuffer.append(@mediaData.getName())
                    @logUtil.putF(stringBuffer.to_s, self, "getFormData()")
                end
            end
        end
        @itemInterface = BasicItem.new(self.getRequestHashMap())
    end
    

    def addDomNodeInterfaces()
        vector = BasicArrayListD.new()
        downloadableItem = nil
        size = @downloadableItemVector.size()
        (0...size).each do |index|
            downloadableItem = @downloadableItemVector.get(index)
            vector.add(DownloadableItemView.new(downloadableItem))
        end
        self.addDomNodeInterface(BasicItemView.new(@itemInterface, vector))
    end
    

    def getItemInterface()
        return @itemInterface
    end
    

    # throws Exception
    def view()
        begin
            self.addDomNodeInterfaces()
            return super()
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
    

    # throws Exception
    def processImageFiles()
        set = self.getRequestHashMap().keySet()
        fieldNameArray = set.toArray()
        size = fieldNameArray.length
        (0...size).each do |index|
            fieldName = fieldNameArray[index]
            if (fieldName <=> @basicItemData.IMAGE) == 0
                storeFrontInterface = StoreFrontFactory.getInstance(self.getWeblisketSession().getStoreName())
                inventoryUploadMediaUtil = InventoryUploadMediaUtil.new(storeFrontInterface, @itemInterface)
                fileItem = self.getRequestHashMap().get(@basicItemData.IMAGE)
                @itemInterface = inventoryUploadMediaUtil.saveFiles(fileItem.get(), @imageFileName, @mediaData)
            end
        end
    end
    

    def setRequestHashMap(requestHashMap)
        @requestHashMap = requestHashMap
    end
    

    def getRequestHashMap()
        return @requestHashMap
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/user/commerce/inventory/item/BasicItem"
require "org/allbinary/business/user/commerce/inventory/item/BasicItemData"
require "org/allbinary/business/user/commerce/inventory/item/BasicItemView"
require "org/allbinary/business/user/commerce/inventory/item/ItemInterface"
require "org/allbinary/business/user/commerce/inventory/item/download/DownloadableItem"
require "org/allbinary/business/user/commerce/inventory/item/download/DownloadableItemView"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/http/file/upload/HttpFileUploadUtil"
require "org/allbinary/logic/communication/http/request/HttpRequestUtil"
require "org/allbinary/logic/communication/http/request/MultipartRequestParams"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/io/path/PathUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/visual/media/MediaData"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/apache/commons/fileupload/FileItem"
require "views/admin/inventory/InventoryUploadMediaUtil"

class InventoryItemView
    TYPE_ID = 10
end

