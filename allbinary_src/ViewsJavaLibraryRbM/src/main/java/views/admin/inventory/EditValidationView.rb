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

require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/admin/inventory/InventoryItemView"

class EditValidationView < InventoryItemView
    include ValidationComponentInterface
    attr_accessor :id

    def initialize_fields
        @id = nil
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface, StringUtil.getInstance().EMPTY_STRING)
        initialize_fields
        self.getFormData()
    end
    

    # throws Exception
    def getFormData()
        hashMap = RequestParams.new(@request).toHashMap()
        if hashMap == nil
            raise StandardError.new("No Request Params Found")
        end
        @id = hashMap.get(@basicItemData.ID)
    end
    

    # throws Exception
    def isValid()
        if @id == nil || !StringValidationUtil.getInstance().isNumber(@id)
            return false
        end
        @itemInterface = InventoryEntityFactory.getInstance().getInventoryEntityInstance().getItem(@id)
        if @itemInterface == nil
            return false
        end
        downloadable = Integer(@itemInterface.getDownloads())
        if downloadable != 0
            downloadItemsEntity = DownloadItemsEntityFactory.getInstance().getDownloadItemsEntityInstance()
            @downloadableItemVector = downloadItemsEntity.getForItem(@itemInterface.getId())
        end
        return true
    end
    

    def toValidationInfoDoc()
        return nil
    end
    

    def toValidationInfoNode(document)
        return nil
    end
    

    # throws MoneyException
    def validationInfo()
        stringBuffer = StringMaker.new()
        if @id == nil || !StringValidationUtil.getInstance().isNumber(@id)
            stringBuffer.append("Id is not valid.<br />")
        end
        if InventoryEntityFactory.getInstance().getInventoryEntityInstance().getItem(@id) == nil
            stringBuffer.append("Item does not exist.<br />")
        end
        return stringBuffer.to_s
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :BasicItemData, "org/allbinary/business/user/commerce/inventory/item/BasicItemData"
autoload :MoneyException, "org/allbinary/business/user/commerce/money/MoneyException"
autoload :InventoryEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory"
autoload :DownloadItemsEntity, "org/allbinary/data/tables/user/commerce/inventory/item/downloads/DownloadItemsEntity"
autoload :DownloadItemsEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/item/downloads/DownloadItemsEntityFactory"
autoload :RequestParams, "org/allbinary/logic/communication/http/request/RequestParams"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"

