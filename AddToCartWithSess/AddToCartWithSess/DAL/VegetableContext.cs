using AddToCartWithSess.Models;
using Microsoft.EntityFrameworkCore;


namespace AddToCartWithSess.DAL
{
    public class VegetableContext : DbContext
    {
        public VegetableContext(DbContextOptions<VegetableContext> options) : base(options)
        {

        }

        public DbSet<Product> Products { get; set; }


        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<Product>().HasData(
         new Product { Id = 1, Image = "product-1.jpg", Title = "BELL PEPPER", Price = 80, Cart = "<i class='ion-ios-cart'></i>" },
         new Product { Id = 2, Image = "product-2.jpg", Title = "STRAWBERRY", Price = 120, Cart = "<i class='ion-ios-cart'></i>" },
         new Product { Id = 3, Image = "product-3.jpg", Title = "GREEN BEANS", Price = 180, Cart = "<i class='ion-ios-cart'></i>" },
         new Product { Id = 4, Image = "product-4.jpg", Title = "PURPLE CABBAGE", Price = 220, Cart = "<i class='ion-ios-cart'></i>" },
         new Product { Id = 5, Image = "product-5.jpg", Title = "TOMATO", Price = 110, Cart = "<i class='ion-ios-cart'></i>" },
         new Product { Id = 6, Image = "product-6.jpg", Title = "BROCOLLI", Price = 90, Cart = "<i class='ion-ios-cart'></i>" },
         new Product { Id = 7, Image = "product-7.jpg", Title = "CARROTS", Price = 100, Cart = "<i class='ion-ios-cart'></i>" },
         new Product { Id = 8, Image = "product-8.jpg", Title = "FRUIT JUICE", Price = 130, Cart = "<i class='ion-ios-cart'></i>" }
         );
        }
    }
}
