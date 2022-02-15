namespace PropertyBasedTestingExample
{
    public class PartyComposition
    {
        public PartyComposition(int adults, int children, int babies)
        {
            Adults = adults;
            Children = children;
            Babies = babies;
        }

        public int Adults { get; set; }
        public int Children { get; set; }
        public int Babies { get; set; }

        public override string ToString()
        {
            return $"{nameof(Adults)}: {Adults}, {nameof(Children)}: {Children}, {nameof(Babies)}: {Babies}";
        }
    }
}