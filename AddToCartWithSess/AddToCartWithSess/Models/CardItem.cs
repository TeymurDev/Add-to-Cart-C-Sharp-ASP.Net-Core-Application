using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AddToCartWithSess.Models
{
    public class CardItem
    {
        public Product Product { get; set; }
        public byte Count { get; set; }
    }
}
