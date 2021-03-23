using System;
using System.Collections.Generic;

#nullable disable

namespace GoPokemon.Models
{
    public partial class UserCard
    {
        public Guid Id { get; set; }
        public string UserId { get; set; }
        public string CardId { get; set; }
        public DateTime? DateCreated { get; set; }

        public virtual Card Card { get; set; }
        public virtual AspNetUser User { get; set; }
    }
}
