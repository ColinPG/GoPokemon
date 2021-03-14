using System;
using System.Collections.Generic;

#nullable disable

namespace GoPokemon.Models
{
    public partial class CardType
    {
        public CardType()
        {
            MonsterCards = new HashSet<MonsterCard>();
        }

        public string Id { get; set; }
        public string Name { get; set; }

        public virtual ICollection<MonsterCard> MonsterCards { get; set; }
    }
}
