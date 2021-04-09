using System;
using Mutation.Testing;
using Xunit;

namespace Mutation.Testing.Tests
{
    public class RectangleAreaCalculatorSpecs
    {
        [Fact]
        public void HeightAndWidthPositive_Works()
        {
            RectangleAreaCalculator rectangleAreaCalculator = new RectangleAreaCalculator();
            int rectangleArea = rectangleAreaCalculator.RectangleArea(10, 5);
            
            Assert.Equal(10 * 5, rectangleArea);
        }               

        [Fact]       
        public void HeightNegative_ArgumentExceptionIsThrown()
        {
            RectangleAreaCalculator rectangleAreaCalculator = new RectangleAreaCalculator();
            
            Assert.Throws<ArgumentException>(() => rectangleAreaCalculator.RectangleArea(-5, 5));
        }
               
        [Fact]
        public void HeightZero_AreaZero()
        {
            RectangleAreaCalculator rectangleAreaCalculator = new RectangleAreaCalculator();
            int rectangleArea = rectangleAreaCalculator.RectangleArea(0, 5);
            
            Assert.Equal(0, rectangleArea);
        }
        
        [Fact]
        public void WidthZero_AreaZero()
        {
            RectangleAreaCalculator rectangleAreaCalculator = new RectangleAreaCalculator();
            int rectangleArea = rectangleAreaCalculator.RectangleArea(10, 0);
            
            Assert.Equal(0, rectangleArea);
        }
        
        [Fact]
        public void HeightAndWidthZero_AreaZero()
        {
            RectangleAreaCalculator rectangleAreaCalculator = new RectangleAreaCalculator();
            int rectangleArea = rectangleAreaCalculator.RectangleArea(0, 0);
            
            Assert.Equal(0, rectangleArea);
        }                

        // [Fact]
        // public void FirstArgumentExceptionMessage_IsExplicitWhenFailing()
        // {
        //     RectangleAreaCalculatorSolution rectangleAreaCalculator = new RectangleAreaCalculatorSolution();            
            
        //     var exception = Assert.Throws<ArgumentException>(() => (rectangleAreaCalculator.RectangleArea(-1, int.MaxValue)));
        //     Assert.Equal("Height must be zero or positive", exception.Message);
        // }            
    }
}