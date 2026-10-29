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
# package views.admin.inventory.download

# require "java/io/ByteArrayInputStream"
# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/logic/communication/http/request/RequestMapInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

class DownloadableInventoryItemView < HttpStoreComponentView
    include RequestMapInterface
    attr_accessor :logUtil, :basicItemData, :request, :id, :itemInterface, :downloadableItem, :requestHashMap

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @basicItemData = BasicItemData.getInstance()
        @request = nil
        @id = nil
        @itemInterface = nil
        @downloadableItem = nil
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
        return DownloadableInventoryItemView::TYPE_ID
    end
    

    # throws Exception
    def getFormData()
        self.setRequestHashMap(MultipartRequestParams.new(@request).toHashMap())
        @id = self.getRequestHashMap().get(@basicItemData.ID)
    end
    

    def addDomNodeInterfaces()
        vector = BasicArrayListD.new()
        if @downloadableItem != nil
            vector.add(DownloadableItemView.new(@downloadableItem))
        end
        self.addDomNodeInterface(BasicItemView.new(@itemInterface, vector))
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
    def processFile(fileItem)
        fileName = fileItem.getName()
        fullPath = self.getItemFilePath()
        itemResourceFile = AbFile.createAbFile(fullPath)
        itemResourceFile.mkdir()
        stringBuffer = StringMaker.new()
        stringBuffer.append(fullPath)
        stringBuffer.append(fileName)
        @logUtil.putF("FileName: " + fileName, self, "processFile()")
        file = AbFile.createAbFile(stringBuffer.to_s)
        @logUtil.putF(file.getPath(), self, "processFiles()")
        file.createNewFile()
        byteArray = fileItem.get()
        FileUtil.getInstance().write(ByteArrayInputStream.new(byteArray), file)
    end
    

    # throws Exception
    def unzip(fileItem)
        fileName = fileItem.getName()
        fullPath = self.getItemFilePath()
        stringBuffer = StringMaker.new()
        stringBuffer.append(fullPath)
        stringBuffer.append(fileName)
        @logUtil.putF("FileName: " + fileName, self, "unzip()")
        file = AbFile.createAbFile(stringBuffer.to_s)
        @logUtil.putF(file.getPath(), self, "unzip()")
        ZipFileUtil.getInstance().unzip(fullPath, file, fileName)
    end
    

    def getItemFilePath()
        storeFrontInterface = StoreFrontFactory.getInstance(self.getWeblisketSession().getStoreName())
        filePathData = FilePathData.getInstance()
        stringBuffer = StringMaker.new()
        stringBuffer.append(URLGLOBALS.getWebappPath())
        stringBuffer.append(storeFrontInterface.getCurrentHostNamePath())
        stringBuffer.append(@itemInterface.getCategory())
        stringBuffer.appendchar(filePathData.SEPARATORCHAR)
        stringBuffer.append(@itemInterface.getId())
        stringBuffer.appendchar(filePathData.SEPARATORCHAR)
        stringBuffer.append(@downloadableItem.getId())
        stringBuffer.appendchar(filePathData.SEPARATORCHAR)
        return stringBuffer.to_s
    end
    

    def setRequestHashMap(requestHashMap)
        @requestHashMap = requestHashMap
    end
    

    def getRequestHashMap()
        return @requestHashMap
    end
    

    def getDownloadableItem()
        return @downloadableItem
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/user/commerce/inventory/item/BasicItemData"
require "org/allbinary/business/user/commerce/inventory/item/BasicItemView"
require "org/allbinary/business/user/commerce/inventory/item/ItemInterface"
require "org/allbinary/business/user/commerce/inventory/item/download/DownloadableItem"
require "org/allbinary/business/user/commerce/inventory/item/download/DownloadableItemView"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/http/request/MultipartRequestParams"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/FilePathData"
require "org/allbinary/logic/io/file/FileUtil"
require "org/allbinary/logic/io/file/zip/ZipFileUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/apache/commons/fileupload/FileItem"

class DownloadableInventoryItemView
    TYPE_ID = 11
end

