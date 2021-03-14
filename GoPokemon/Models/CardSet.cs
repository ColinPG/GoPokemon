using System;
using System.Collections.Generic;

#nullable disable

namespace GoPokemon.Models
{
    public partial class CardSet
    {
        public CardSet()
        {
            Cards = new HashSet<Card>();
        }

        public string Id { get; set; }
        public string Name { get; set; }
        public int MaxCards { get; set; }

        public virtual ICollection<Card> Cards { get; set; }
    }
}
