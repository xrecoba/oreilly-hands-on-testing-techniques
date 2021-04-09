using System;

namespace Mutation.Testing
{
    public class RectangleAreaCalculator
    {
        public int RectangleArea(int height, int width)
        {
            if (height < 0)
            {
                throw new ArgumentException("Height must be zero or positive");
            }
            if (width < 0)
            {
                throw new ArgumentException("Width must be zero or positive");
            }

            return height * width;
        }       
    }
}