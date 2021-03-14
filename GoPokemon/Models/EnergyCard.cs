using System;
using System.Collections.Generic;

#nullable disable

namespace GoPokemon.Models
{
    public partial class EnergyCard
    {
        public string Id { get; set; }
        public string CardId { get; set; }

        public virtual Card Card { get; set; }
    }
}
