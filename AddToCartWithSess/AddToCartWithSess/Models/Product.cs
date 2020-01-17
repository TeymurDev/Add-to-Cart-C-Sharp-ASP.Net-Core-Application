using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace AddToCartWithSess.Models
{
    public class Product
    {
        public int Id { get; set; }
        [StringLength(500)]
        public string Image { get; set; }
        [Required,StringLength(200)]
        public string Title { get; set; }
        public decimal Price { get; set; }
        [Required, StringLength(300)]
        public string Cart { get; set; }
    }
}
