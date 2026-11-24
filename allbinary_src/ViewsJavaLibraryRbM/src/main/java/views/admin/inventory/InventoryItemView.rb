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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "java/util/Set"
# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/logic/communication/http/request/RequestMapInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

module ::Views; module Admin; module Inventory

class InventoryItemView < ::Views::Business::Context::Modules::Storefront::HttpStoreComponentView
    include ::Org::Allbinary::Logic::Communication::Http::Request::RequestMapInterface
    attr_accessor :logUtil, :basicItemData, :request, :imageFileName, :mediaData, :itemInterface, :downloadableItemVector, :requestHashMap

    def jfields_views_admin_inventory_InventoryItemView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @basicItemData = ::Org::Allbinary::Business::User::Commerce::Inventory::Item::BasicItemData.getInstance()
        @request = nil unless instance_variable_defined?(:@request)
        @imageFileName = nil unless instance_variable_defined?(:@imageFileName)
        @mediaData = nil unless instance_variable_defined?(:@mediaData)
        @itemInterface = nil unless instance_variable_defined?(:@itemInterface)
        @downloadableItemVector = nil unless instance_variable_defined?(:@downloadableItemVector)
        @requestHashMap = nil unless instance_variable_defined?(:@requestHashMap)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_views_admin_inventory_InventoryItemView_1(*args)
        when 2 then jnew_views_admin_inventory_InventoryItemView_2(*args)
        else raise ArgumentError, "No constructor of InventoryItemView takes #{args.length} arguments"
        end
    end
    

    def jnew_views_admin_inventory_InventoryItemView_1(transformInfoInterface)
        InventoryItemView.superclass.instance_method(:initialize).bind(self).call(transformInfoInterface)
        jfields_views_admin_inventory_InventoryItemView
        @request = self.getPageContext().getRequest()
        self.getFormData()
    end
    

    def jnew_views_admin_inventory_InventoryItemView_2(transformInfoInterface, empty)
        InventoryItemView.superclass.instance_method(:initialize).bind(self).call(transformInfoInterface)
        jfields_views_admin_inventory_InventoryItemView
        @request = self.getPageContext().getRequest()
    end
    

    def getTypeId()
        return InventoryItemView::TYPE_ID
    end
    java_overload :getTypeId, 0
    

    # throws Exception
    def getFormData()
        self.setRequestHashMap(::Org::Allbinary::Logic::Communication::Http::Request::MultipartRequestParams.new(@request).toHashMap())
        imageFileItemObject = self.getRequestHashMap().get(@basicItemData.IMAGE)
        if ::Org::Allbinary::Logic::Communication::Http::FilePackage::Upload::HttpFileUploadUtil.getInstance().isValid(imageFileItemObject)
            fileItem = imageFileItemObject
            if fileItem != nil && fileItem.getSize() > 1
                @imageFileName = ::Org::Allbinary::Logic::Communication::Http::Request::HttpRequestUtil.getInstance().generateFileName(fileItem.getName())
                pathData = ::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance()
                pathUtil = ::Org::Allbinary::Logic::Io::Path::PathUtil.getInstance()
                @mediaData = ::Org::Allbinary::Logic::Visual::Media::MediaData.get(pathData.getExtension(@imageFileName))
                @imageFileName = pathUtil.getWithoutExtension(@imageFileName)
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                    stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                    stringBuffer.append("Uploaded File Data: ")
                    stringBuffer.append(@imageFileName)
                    stringBuffer.append(" Extension: ")
                    stringBuffer.append(@mediaData.getName())
                    @logUtil.putF(stringBuffer.to_s, self, "getFormData()")
                end
            end
        end
        @itemInterface = ::Org::Allbinary::Business::User::Commerce::Inventory::Item::BasicItem.new(self.getRequestHashMap())
    end
    java_overload :getFormData, 0
    

    def addDomNodeInterfaces()
        vector = ::Org::Allbinary::Util::BasicArrayListD.new()
        downloadableItem = nil
        size = @downloadableItemVector.size()
        (0...size).each do |index|
            downloadableItem = @downloadableItemVector.get(index)
            vector.add(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadableItemView.new(downloadableItem))
        end
        self.addDomNodeInterface(::Org::Allbinary::Business::User::Commerce::Inventory::Item::BasicItemView.new(@itemInterface, vector))
    end
    java_overload :addDomNodeInterfaces, 0
    

    def getItemInterface()
        return @itemInterface
    end
    java_overload :getItemInterface, 0
    

    # throws Exception
    def view()
        begin
            self.addDomNodeInterfaces()
            return InventoryItemView.superclass.java_super_method(:view, 0).bind(self).call()
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
    java_overload :view, 0
    

    # throws Exception
    def processImageFiles()
        set = self.getRequestHashMap().keySet()
        fieldNameArray = set.toArray()
        size = fieldNameArray.length
        (0...size).each do |index|
            fieldName = fieldNameArray[index]
            if (fieldName <=> @basicItemData.IMAGE) == 0
                storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(self.getWeblisketSession().getStoreName())
                inventoryUploadMediaUtil = InventoryUploadMediaUtil.new(storeFrontInterface, @itemInterface)
                fileItem = self.getRequestHashMap().get(@basicItemData.IMAGE)
                @itemInterface = inventoryUploadMediaUtil.saveFiles(fileItem.get(), @imageFileName, @mediaData)
            end
        end
    end
    java_overload :processImageFiles, 0
    

    def setRequestHashMap(requestHashMap)
        @requestHashMap = requestHashMap
    end
    java_overload :setRequestHashMap, 1
    

    def getRequestHashMap()
        return @requestHashMap
    end
    java_overload :getRequestHashMap, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:TYPE_ID, 10)
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InventoryItemView"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:TYPE_ID].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory" unless const_defined?(:StoreFrontFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :BasicItem, "org/allbinary/business/user/commerce/inventory/item/BasicItem" unless const_defined?(:BasicItem, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :BasicItemData, "org/allbinary/business/user/commerce/inventory/item/BasicItemData" unless const_defined?(:BasicItemData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :BasicItemView, "org/allbinary/business/user/commerce/inventory/item/BasicItemView" unless const_defined?(:BasicItemView, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :ItemInterface, "org/allbinary/business/user/commerce/inventory/item/ItemInterface" unless const_defined?(:ItemInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; module Download; autoload :DownloadableItem, "org/allbinary/business/user/commerce/inventory/item/download/DownloadableItem" unless const_defined?(:DownloadableItem, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; module Download; autoload :DownloadableItemView, "org/allbinary/business/user/commerce/inventory/item/download/DownloadableItemView" unless const_defined?(:DownloadableItemView, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module FilePackage; module Upload; autoload :HttpFileUploadUtil, "org/allbinary/logic/communication/http/file/upload/HttpFileUploadUtil" unless const_defined?(:HttpFileUploadUtil, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :HttpRequestUtil, "org/allbinary/logic/communication/http/request/HttpRequestUtil" unless const_defined?(:HttpRequestUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :MultipartRequestParams, "org/allbinary/logic/communication/http/request/MultipartRequestParams" unless const_defined?(:MultipartRequestParams, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :PathUtil, "org/allbinary/logic/io/path/PathUtil" unless const_defined?(:PathUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Media; autoload :MediaData, "org/allbinary/logic/visual/media/MediaData" unless const_defined?(:MediaData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Apache; module Commons; module Fileupload; autoload :FileItem, "org/apache/commons/fileupload/FileItem" unless const_defined?(:FileItem, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :InventoryUploadMediaUtil, "views/admin/inventory/InventoryUploadMediaUtil" unless const_defined?(:InventoryUploadMediaUtil, false)

begin
    InventoryItemView.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

