﻿using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GoPokemon.Models
{
    public partial class GoPokemonContext : DbContext
    {

        public GoPokemonContext()
        {
        }

        public GoPokemonContext(DbContextOptions<GoPokemonContext> options)
            : base(options)
        {
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        { 

        }
        }
}
