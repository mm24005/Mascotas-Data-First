using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace MascotasNDMM.Models
{
    public partial class MascotasNDMMContext : DbContext
    {
        public MascotasNDMMContext()
        {
        }

        public MascotasNDMMContext(DbContextOptions<MascotasNDMMContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Mascota> Mascotas { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer("Server=PC-NERY;Database=MascotasNDMM;Trusted_Connection=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Mascota>(entity =>
            {
                entity.HasKey(e => e.Idmascotas)
                    .HasName("PK__Mascotas__869FC6282BFBA61F");

                entity.Property(e => e.Idmascotas).HasColumnName("IDMascotas");

                entity.Property(e => e.Especie)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.FechaNacimiento)
                    .HasColumnType("date")
                    .HasColumnName("Fecha_nacimiento");

                entity.Property(e => e.Nombre)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Propietario)
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.Raza)
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
