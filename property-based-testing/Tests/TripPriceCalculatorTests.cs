using System;
using FsCheck;
using FsCheck.Xunit;
using Xunit;

namespace PropertyBasedTestingExample
{
    public class TripPriceCalculatorTests
    {
        [Property(Arbitrary = new[] { typeof(PartyCompositionGenerator) })]
        public Property TripsCantBeForFree(PartyComposition partyComposition)
        {
            return (TripPriceCalculator.GetPrice(partyComposition) != 0).ToProperty();
        }

        [Property(Arbitrary = new[] { typeof(PartyCompositionGenerator) })]
        public Property BabiesDoNotPayHo(PartyComposition partyComposition)
        {
            Func<bool> property = () => 
                TripPriceCalculator.GetPrice(partyComposition) == 
                TripPriceCalculator.GetPrice(RemoveBabies(partyComposition));
            return property.When(partyComposition.Babies != 0)
                .Classify(partyComposition.Children == 0, "Without children")
                .Classify(partyComposition.Children != 0, "With children");
        }
        
        [Property(Arbitrary = new[] { typeof(PartyCompositionGenerator) })]
        public Property ChildrenPayLessThanAdults(PartyComposition partyComposition)
        {
            Func<bool> property = () =>
            {
                var adultPrice =
                    TripPriceCalculator.GetPrice(partyComposition) -
                    TripPriceCalculator.GetPrice(RemoveAdultFrom(partyComposition));

                var childPrice =
                    TripPriceCalculator.GetPrice(partyComposition) -
                    TripPriceCalculator.GetPrice(RemoveChildrenFrom(partyComposition));

                return adultPrice > childPrice;
            };
                
            return property.When(partyComposition.Adults > 2 && partyComposition.Children > 2);
        }

        private static PartyComposition RemoveBabies(PartyComposition partyComposition)
        {
            return new PartyComposition(
                partyComposition.Adults,
                partyComposition.Children,
                0);
        }

        private static PartyComposition RemoveAdultFrom(PartyComposition partyComposition)
        {
            return new PartyComposition(
                partyComposition.Adults - 1,
                partyComposition.Children,
                partyComposition.Babies);
        }

        private static PartyComposition RemoveChildrenFrom(PartyComposition partyComposition)
        {
            return new PartyComposition(
                partyComposition.Adults,
                partyComposition.Children - 1,
                partyComposition.Babies);
        }

        // [Fact]
        // public void TraditionalTest()
        // {
        //     var original = TripPriceCalculator.GetPrice(RemoveAdultFrom(
        //         new PartyComposition(6, 6, 7)));
        //
        //     var lessAdults = TripPriceCalculator.GetPrice(RemoveAdultFrom(
        //         new PartyComposition(5, 6, 7)));
        //
        //     var lessChildren = TripPriceCalculator.GetPrice(RemoveAdultFrom(
        //         new PartyComposition(6, 5, 7)));
        // }
    }
}