using System;
using System.Collections.Generic;

#nullable disable

namespace GoPokemon.Models
{
    public partial class Card
    {
        public Card()
        {
            EnergyCards = new HashSet<EnergyCard>();
            MonsterCards = new HashSet<MonsterCard>();
            TrainerCards = new HashSet<TrainerCard>();
            UserCards = new HashSet<UserCard>();
        }

        public string Id { get; set; }
        public string SetId { get; set; }
        public int CollectionNumber { get; set; }
        public string Name { get; set; }
        public string TrackingNo { get; set; }
        public bool IsFirstEdition { get; set; }

        public virtual CardSet Set { get; set; }
        public virtual ICollection<EnergyCard> EnergyCards { get; set; }
        public virtual ICollection<MonsterCard> MonsterCards { get; set; }
        public virtual ICollection<TrainerCard> TrainerCards { get; set; }
        public virtual ICollection<UserCard> UserCards { get; set; }
    }
}
