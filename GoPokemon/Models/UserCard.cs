using System;
using System.Collections.Generic;

#nullable disable

namespace GoPokemon.Models
{
    public partial class UserCard
    {
        public string UserId { get; set; }
        public string CardId { get; set; }
        public string ConditionId { get; set; }
        public int? Quantity { get; set; }
        public DateTime? DateCreated { get; set; }

        public virtual Card Card { get; set; }
        public virtual CardCondition Condition { get; set; }
        public virtual AspNetUser User { get; set; }
    }
}
