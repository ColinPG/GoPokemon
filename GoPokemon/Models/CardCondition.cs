using System;
using System.Collections.Generic;

#nullable disable

namespace GoPokemon.Models
{
    public partial class CardCondition
    {
        public CardCondition()
        {
            UserCards = new HashSet<UserCard>();
        }

        public string Id { get; set; }
        public string Name { get; set; }

        public virtual ICollection<UserCard> UserCards { get; set; }
    }
}
