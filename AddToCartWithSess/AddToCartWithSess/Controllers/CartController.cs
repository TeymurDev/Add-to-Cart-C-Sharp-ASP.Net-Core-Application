using AddToCartWithSess.DAL;
using AddToCartWithSess.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;
using Newtonsoft.Json;
using System.Linq;

namespace AddToCartWithSess.Controllers
{
    public class CartController : Controller
    {
        private readonly VegetableContext _context;

        public CartController(VegetableContext context)
        {
            _context = context;
        }
        public async Task<IActionResult> Add(int id)
        {
            var cart = new List<CardItem>();

            var cartSession = HttpContext.Session.GetString("cart");
            if (cartSession != null)
            {
                cart = JsonConvert.DeserializeObject<List<CardItem>>(cartSession);

                if (cart.Any(c => c.Product.Id == id))
                {
                    CardItem cardItem = cart.First(c => c.Product.Id == id);
                    cardItem.Count++;
                }
                else
                {
                    cart.Add(new CardItem
                    {

                        Product = await _context.Products.FindAsync(id),
                        Count = 1
                    });

                }
            }
            else
            {
                cart.Add(new CardItem
                {

                    Product = await _context.Products.FindAsync(id),
                    Count = 1
                });

            }



            string jsonList = JsonConvert.SerializeObject(cart);
            HttpContext.Session.SetString("cart", jsonList);

            return Json(new
            {
                status = 200,
                message = "New product was successfully added to cart",
                //data = cart.Count
                data = cart.Sum(c => c.Count)
            });
        }

        public IActionResult Delete()
        {
            

            return View(_context.Products);
        }
    }
}