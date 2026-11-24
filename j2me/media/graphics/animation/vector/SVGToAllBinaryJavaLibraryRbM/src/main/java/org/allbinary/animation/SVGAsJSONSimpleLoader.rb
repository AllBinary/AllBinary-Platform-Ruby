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
# package org.allbinary.animation

require "java/lang/Object"
require "java/lang/JavaClass"

module ::Org; module Allbinary; module Animation

class SVGAsJSONSimpleLoader
    attr_accessor :graphicsStrings, :shapeTypeFactory, :KEY_SVG, :KEY_X1, :KEY_Y1, :KEY_X2, :KEY_Y2, :KEY_CX, :KEY_CY, :KEY_R, :KEY_X, :KEY_Y, :ERROR_PARSE_SVG_JSON, :ERROR_MISSING_KEY_PREFIX, :ERROR_INVALID_NUMBER_PREFIX, :ERROR_EXPECTED_OBJECT_PREFIX, :EMPTY_POINTS, :SHAPE_SEPARATOR, :CIRCLE_SEGMENTS

    def jfields_org_allbinary_animation_SVGAsJSONSimpleLoader
        @graphicsStrings = ::Org::Allbinary::Graphics::GraphicsStrings.getInstance()
        @shapeTypeFactory = ShapeTypeFactory.getInstance()
        @KEY_SVG = "svg"
        @KEY_X1 = "x1"
        @KEY_Y1 = "y1"
        @KEY_X2 = "x2"
        @KEY_Y2 = "y2"
        @KEY_CX = "cx"
        @KEY_CY = "cy"
        @KEY_R = "r"
        @KEY_X = ::Org::Allbinary::MathPackage::PositionStrings.getInstance().X
        @KEY_Y = ::Org::Allbinary::MathPackage::PositionStrings.getInstance().Y
        @ERROR_PARSE_SVG_JSON = "Unable to parse SVG JSON"
        @ERROR_MISSING_KEY_PREFIX = "Missing key: "
        @ERROR_INVALID_NUMBER_PREFIX = "Invalid number for key: "
        @ERROR_EXPECTED_OBJECT_PREFIX = "Expected object for: "
        @EMPTY_POINTS = ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getTwoDimensionalArrayInstance()
        @SHAPE_SEPARATOR = [1000, 1000]
        @CIRCLE_SEGMENTS = 16
    end

    def initialize
        jfields_org_allbinary_animation_SVGAsJSONSimpleLoader
    end
    

    def self.getInstance()
        return SVGAsJSONSimpleLoader.instance
    end
    

    # throws Exception
    def load(svgAsJson)
        if svgAsJson == nil
            return @EMPTY_POINTS
        end
        begin
            root = ::Org::Json::Me::JSONObject.new(svgAsJson)
            svgValue = root.opt(@KEY_SVG)
            svg = (svgValue == nil ? root : self.asObject(svgValue, @KEY_SVG))
            pointVector = ::Org::Allbinary::Util::BasicArrayListD.new()
            objectArray = svg.keysAsArray()
            size = objectArray.length
            (0...size).each do |index|
                key = objectArray[index]
                value = svg.opt(key)
                if @shapeTypeFactory.KEY_LINE.equals(key)
                    self.addShapes(pointVector, value, @shapeTypeFactory.LINE)
                elsif @shapeTypeFactory.equals(key)
                    self.addShapes(pointVector, value, @shapeTypeFactory.CIRCLE)
                elsif @shapeTypeFactory.KEY_RECT.equals(key) || @shapeTypeFactory.KEY_RECTANGLE.equals(key)
                    self.addShapes(pointVector, value, @shapeTypeFactory.RECTANGLE)
                end
            end
            return self.toPoints(pointVector)
        rescue ::Org::Json::Me::JSONException => e
            raise ArgumentError.new(@ERROR_PARSE_SVG_JSON, e)
        end
    end
    

    # throws Exception
    def addShapes(pointVector, value, shapeType)
        if value.is_a?(::Org::Json::Me::JSONArray)
            array = value
            size = array.length()
            (0...size).each do |index|
                self.addShape(pointVector, array.opt(index), shapeType)
            end
        else
            self.addShape(pointVector, value, shapeType)
        end
    end
    

    # throws Exception
    def addShape(pointVector, value, shapeType)
        shape = self.asObject(value, shapeType.getName())
        if shapeType == @shapeTypeFactory.LINE
            self.addLine(pointVector, shape)
        elsif shapeType == @shapeTypeFactory.CIRCLE
            self.addCircle(pointVector, shape)
        else
            self.addRectangle(pointVector, shape)
        end
    end
    

    # throws Exception
    def addLine(pointVector, line)
        self.addPoint(pointVector, self.readInt(line, @KEY_X1), self.readInt(line, @KEY_Y1))
        self.addPoint(pointVector, self.readInt(line, @KEY_X2), self.readInt(line, @KEY_Y2))
        self.addSeparator(pointVector)
    end
    

    # throws Exception
    def addCircle(pointVector, circle)
        cx = self.readInt(circle, @KEY_CX)
        cy = self.readInt(circle, @KEY_CY)
        radius = self.readInt(circle, @KEY_R)
        (0..@CIRCLE_SEGMENTS).each do |index|
            angle = (Math::PI * 2.0 * index) / @CIRCLE_SEGMENTS
            x = (((cx + (Math.cos(angle) * radius)).round).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
            y = (((cy + (Math.sin(angle) * radius)).round).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
            self.addPoint(pointVector, x, y)
        end
        self.addSeparator(pointVector)
    end
    

    # throws Exception
    def addRectangle(pointVector, rectangle)
        x = self.readInt(rectangle, @KEY_X, 0)
        y = self.readInt(rectangle, @KEY_Y, 0)
        width = self.readInt(rectangle, @graphicsStrings.WIDTH)
        height = self.readInt(rectangle, @graphicsStrings.HEIGHT)
        self.addPoint(pointVector, x, y)
        self.addPoint(pointVector, x + width, y)
        self.addPoint(pointVector, x + width, y + height)
        self.addPoint(pointVector, x, y + height)
        self.addPoint(pointVector, x, y)
        self.addSeparator(pointVector)
    end
    

    def addPoint(pointVector, x, y)
        pointVector.add([x, y])
    end
    

    def addSeparator(pointVector)
        pointVector.add([@SHAPE_SEPARATOR[0], @SHAPE_SEPARATOR[1]])
    end
    

    # throws Exception
    def readInt_j2(anyType, key)
        value = anyType.get(key)
        if value == nil
            raise ArgumentError.new(@ERROR_MISSING_KEY_PREFIX + key)
        end
        return self.toInt(value, key)
    end
    

    def readInt_j3(anyType, key, defaultValue)
        begin
            if anyType.has(key)
                value = anyType.get(key)
                return self.toInt(value, key)
            end
        rescue StandardError => e
            puts(e.full_message)
        end
        return defaultValue
    end

    def readInt(*java_overload_args)
        return readInt_j2(*java_overload_args) if java_overload_args.length == 2
        return readInt_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method readInt takes #{java_overload_args.length} arguments"
    end
    

    def toInt(value, key)
        if value.is_a?(Number)
            return ((((value).to_f).round).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        end
        if value.is_a?(String)
            return (((Float(value)).round).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        end
        raise ArgumentError.new(@ERROR_INVALID_NUMBER_PREFIX + key)
    end
    

    def asObject(value, name)
        if value.is_a?(::Org::Json::Me::JSONObject)
            return value
        end
        raise ArgumentError.new(@ERROR_EXPECTED_OBJECT_PREFIX + name)
    end
    

    def toPoints(pointVector)
        if pointVector.size() == 0
            return @EMPTY_POINTS
        end
        points = Array.new(pointVector.size()) { Array.new(2, 0) }
        (0...pointVector.size()).each do |index|
            point = pointVector.get(index)
            points[index] = point
        end
        return points
    end
    

    # throws Exception
    def self.main(args)
        svgAsJson = "{\"svg\": {\n" + "    \"rect\": {\n" + "        \"width\": 20,\n" + "        \"fill\": \"#008c00\",\n" + "        \"height\": 20\n" + "    },\n" + "    \"xmlns\": \"http://www.w3.org/2000/svg\",\n" + "    \"width\": 20,\n" + "    \"height\": 20\n" + "}}\n"
        points = SVGAsJSONSimpleLoader.getInstance().load(svgAsJson)
        stringBuilder = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        size = points.length
        (0...size).each do |index|
            size2 = points[index].length
            (0...size2).each do |index2|
                stringBuilder.appendint(((points[index][index2]).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                stringBuilder.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().COMMA)
            end
        end
        puts(stringBuilder.to_s)
    end

    def self.instance()
        SVGAsJSONSimpleLoader.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        SVGAsJSONSimpleLoader.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = SVGAsJSONSimpleLoader.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SVGAsJSONSimpleLoader"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Graphics; autoload :GraphicsStrings, "org/allbinary/graphics/GraphicsStrings" unless const_defined?(:GraphicsStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :PositionStrings, "org/allbinary/math/PositionStrings" unless const_defined?(:PositionStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Json; module Me; autoload :JSONArray, "org/json/me/JSONArray" unless const_defined?(:JSONArray, false); end; end; end
module ::Org; module Json; module Me; autoload :JSONException, "org/json/me/JSONException" unless const_defined?(:JSONException, false); end; end; end
module ::Org; module Json; module Me; autoload :JSONObject, "org/json/me/JSONObject" unless const_defined?(:JSONObject, false); end; end; end
autoload :ShapeType, "org/allbinary/animation/ShapeType" unless const_defined?(:ShapeType, false)
autoload :ShapeTypeFactory, "org/allbinary/animation/ShapeTypeFactory" unless const_defined?(:ShapeTypeFactory, false)
require "java/lang/System"

begin
    SVGAsJSONSimpleLoader.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

