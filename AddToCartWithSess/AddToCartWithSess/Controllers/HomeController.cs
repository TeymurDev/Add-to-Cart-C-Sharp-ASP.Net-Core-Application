using Microsoft.AspNetCore.Mvc;
using AddToCartWithSess.ViewModels;
using AddToCartWithSess.DAL;

namespace AddToCartWithSess.Controllers
{
    public class HomeController : Controller
    {
        private readonly VegetableContext _context;
        public HomeController(VegetableContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            HomeIndexVM homeIndexVM = new HomeIndexVM()
            {
                Products = _context.Products
            };
            return View(homeIndexVM);
        }

  
    }
}
