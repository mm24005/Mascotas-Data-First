using System;
using System.Collections.Generic;

namespace MascotasNDMM.Models
{
    public partial class Mascota
    {
        public int Idmascotas { get; set; }
        public string Nombre { get; set; } = null!;
        public string Especie { get; set; } = null!;
        public string? Raza { get; set; }
        public DateTime FechaNacimiento { get; set; }
        public string Propietario { get; set; } = null!;
    }
}
