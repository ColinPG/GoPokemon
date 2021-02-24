using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GoPokemon.Areas.Cards.Models
{
    public partial class Card
    {
        public Card()
        {

        }

        public Guid Guid { get; set; }
        public string Name { get; set; }
        public string Type { get; set; }
        public bool IsStage { get; set; }
    }
}
