namespace PropertyBasedTestingExample
{
    public class TripPriceCalculator
    {
        public static double GetPrice(PartyComposition partyComposition)
        {
            return partyComposition.Adults * 100 +
                   partyComposition.Children * 80 +
                   partyComposition.Babies * 0 * 100;
        }
    }
}