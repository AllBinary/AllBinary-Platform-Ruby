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


class SVGAsJSONSimpleLoader
    attr_accessor :graphicsStrings, :shapeTypeFactory, :KEY_SVG, :KEY_X1, :KEY_Y1, :KEY_X2, :KEY_Y2, :KEY_CX, :KEY_CY, :KEY_R, :KEY_X, :KEY_Y, :ERROR_PARSE_SVG_JSON, :ERROR_MISSING_KEY_PREFIX, :ERROR_INVALID_NUMBER_PREFIX, :ERROR_EXPECTED_OBJECT_PREFIX, :EMPTY_POINTS, :SHAPE_SEPARATOR, :CIRCLE_SEGMENTS

    def initialize_fields
        @graphicsStrings = GraphicsStrings.getInstance()
        @shapeTypeFactory = ShapeTypeFactory.getInstance()
        @KEY_SVG = "svg"
        @KEY_X1 = "x1"
        @KEY_Y1 = "y1"
        @KEY_X2 = "x2"
        @KEY_Y2 = "y2"
        @KEY_CX = "cx"
        @KEY_CY = "cy"
        @KEY_R = "r"
        @KEY_X = PositionStrings.getInstance().X
        @KEY_Y = PositionStrings.getInstance().Y
        @ERROR_PARSE_SVG_JSON = "Unable to parse SVG JSON"
        @ERROR_MISSING_KEY_PREFIX = "Missing key: "
        @ERROR_INVALID_NUMBER_PREFIX = "Invalid number for key: "
        @ERROR_EXPECTED_OBJECT_PREFIX = "Expected object for: "
        @EMPTY_POINTS = PrimitiveIntUtil.getTwoDimensionalArrayInstance()
        @SHAPE_SEPARATOR = [1000, 1000]
        @CIRCLE_SEGMENTS = 16
    end

    def initialize
        initialize_fields
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
            root = JSONObject.new(svgAsJson)
            svgValue = root.opt(@KEY_SVG)
            svg = (svgValue == nil ? root : self.asObject(svgValue, @KEY_SVG))
            pointVector = BasicArrayListD.new()
            keys = svg.keys()
            while keys.hasMoreElements()
                key = keys.nextElement()
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
        rescue JSONException => e
            raise ArgumentError.new(@ERROR_PARSE_SVG_JSON, e)
        end
    end
    

    # throws Exception
    def addShapes(pointVector, value, shapeType)
        if value.is_a?(JSONArray)
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
            x = ((cx + (Math.cos(angle) * radius)).round).to_i
            y = ((cy + (Math.sin(angle) * radius)).round).to_i
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
    def readInt(anyType, key)
        value = anyType.get(key)
        if value == nil
            raise ArgumentError.new(@ERROR_MISSING_KEY_PREFIX + key)
        end
        return self.toInt(value, key)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def readInt(anyType, key, defaultValue)
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
    

    def toInt(value, key)
        if value.is_a?(Number)
            return (((value).to_f).round).to_i
        end
        if value.is_a?(String)
            return ((Float(value)).round).to_i
        end
        raise ArgumentError.new(@ERROR_INVALID_NUMBER_PREFIX + key)
    end
    

    def asObject(value, name)
        if value.is_a?(JSONObject)
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
        stringBuilder = StringMaker.new()
        size = points.length
        (0...size).each do |index|
            size2 = points[index].length
            (0...size2).each do |index2|
                stringBuilder.appendint((points[index][index2]).to_i)
                stringBuilder.append(CommonSeps.getInstance().COMMA)
            end
        end
        puts(stringBuilder.to_s)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "java/util/Enumeration"
require "org/allbinary/graphics/GraphicsStrings"
require "org/allbinary/logic/math/PrimitiveIntUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/math/PositionStrings"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/json/me/JSONArray"
require "org/json/me/JSONException"
require "org/json/me/JSONObject"
require "org/allbinary/animation/ShapeType"
require "org/allbinary/animation/ShapeTypeFactory"
require "java/lang/System"

class SVGAsJSONSimpleLoader
    @@instance = SVGAsJSONSimpleLoader.new()
end

