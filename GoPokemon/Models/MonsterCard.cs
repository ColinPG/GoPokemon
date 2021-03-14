using System;
using System.Collections.Generic;

#nullable disable

namespace GoPokemon.Models
{
    public partial class MonsterCard
    {
        public string Id { get; set; }
        public string CardId { get; set; }
        public string CardTypeId { get; set; }
        public string StageId { get; set; }
        public int Hp { get; set; }

        public virtual Card Card { get; set; }
        public virtual CardType CardType { get; set; }
        public virtual CardStage Stage { get; set; }
    }
}
