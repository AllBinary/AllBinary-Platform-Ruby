# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.animation


class PolygonRasterizer
    

    def self.getInstance()
        return PolygonRasterizer.instance
    end
    

    def getPixelBuffer(svgPath, pathX, pathY, pixelBuffer, width, height)
        pointCount = PathParser.parsePath(svgPath, pathX, pathY, pathX.length)
        (0...pixelBuffer.length).each do |i|
            pixelBuffer[i] = 0xFFFFFFFF
        end
        PolygonRasterizer.getInstance().fillPolygon(pathX, pathY, pointCount, pixelBuffer, width, height, 0xFFFF00FF)
        return pixelBuffer
    end
    

    def fillPolygon(polyX, polyY, numPoints, buffer, width, height, colorRGB)
        if numPoints < 3
            return
        end
        fixedPoint = FixedPoint.getInstance()
        x = Array.new(numPoints, 0)
        y = Array.new(numPoints, 0)
        minY = height
        maxY = 0
        (0...numPoints).each do |i|
            x[i] = fixedPoint.toInt(polyX[i])
            y[i] = fixedPoint.toInt(polyY[i])
            if y[i] < minY
                minY = y[i]
            end
            if y[i] > maxY
                maxY = y[i]
            end
        end
        if minY < 0
            minY = 0
        end
        if maxY >= height
            maxY = height - 1
        end
        scanlineX = Array.new(numPoints, 0)
        (minY..maxY).each do |scanY|
            intersectCount = 0
            (0...numPoints).each do |i|
                next_ = (i + 1) % numPoints
                x1 = x[i]
                y1 = y[i]
                x2 = x[next_]
                y2 = y[next_]
                if (y1 < scanY && y2 >= scanY) || (y2 < scanY && y1 >= scanY)
                    if y2 != y1
                        interX = x1 + (scanY - y1) * (x2 - x1) / (y2 - y1)
                        scanlineX[((intersectCount += 1) - 1)] = interX
                    end
                end
            end
            (0...intersectCount - 1).each do |i|
                (i + 1...intersectCount).each do |j|
                    if scanlineX[i] > scanlineX[j]
                        temp = scanlineX[i]
                        scanlineX[i] = scanlineX[j]
                        scanlineX[j] = temp
                    end
                end
            end
            (0...intersectCount).step(2) do |i|
                if i + 1 >= intersectCount
                    break
                end
                startX = scanlineX[i]
                endX = scanlineX[i + 1]
                if startX < 0
                    startX = 0
                end
                if endX >= width
                    endX = width - 1
                end
                rowOffset = scanY * width
                (startX..endX).each do |pixelX|
                    buffer[rowOffset + pixelX] = colorRGB
                end
            end
        end
    end
    

    def main(args)
        width = 100
        height = 100
        pathX = Array.new(200, 0)
        pathY = Array.new(200, 0)
        pixelBuffer = Array.new(width * height, 0)
        svgPath = "M 32.139812,81.554575 14.450128,74.294372 V 50.000034 25.705697 l 17.73231,-7.268329 C 41.935209,14.439788 49.953112,11.168898 50,11.168723 c 0.04689,-1.74e-4 8.064791,3.270238 17.817562,7.267583 l 17.73231,7.267899 V 50 74.295795 l -17.73231,7.2679 c -9.752771,3.997344 -17.789855,7.264116 -17.860188,7.259492 -0.07033,-0.0046 -8.088235,-3.275499 -17.817562,-7.268612 z"
        PolygonRasterizer.getInstance().getPixelBuffer(svgPath, pathX, pathY, pixelBuffer, width, height)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/animation/FixedPoint"
require "org/allbinary/animation/PathParser"

class PolygonRasterizer
    @@instance = PolygonRasterizer.new()
end

