using System;
using System.Collections.Generic;

#nullable disable

namespace GoPokemon.Models
{
    public partial class TrainerCard
    {
        public string Id { get; set; }
        public string CardId { get; set; }
        public string EffectText { get; set; }

        public virtual Card Card { get; set; }
    }
}
