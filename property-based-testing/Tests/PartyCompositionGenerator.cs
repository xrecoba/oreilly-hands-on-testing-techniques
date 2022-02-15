using FsCheck;

namespace PropertyBasedTestingExample
{
    public static class PartyCompositionGenerator
    {
        public static Arbitrary<PartyComposition> Generate()
        {
            return Arb.From(from adults in Gen.Choose(1, 10)
                from children in Gen.Choose(0, 10)
                from babies in Gen.Choose(0, 10)
                select new PartyComposition(adults, children, babies));
        }
    }
}