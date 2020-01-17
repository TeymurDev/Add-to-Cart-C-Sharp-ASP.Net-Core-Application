using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;

namespace AddToCartWithSess.Migrations
{
    public partial class initial : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Products",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Image = table.Column<string>(maxLength: 500, nullable: true),
                    Title = table.Column<string>(maxLength: 200, nullable: false),
                    Price = table.Column<decimal>(nullable: false),
                    Cart = table.Column<string>(maxLength: 300, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Products", x => x.Id);
                });

            migrationBuilder.InsertData(
                table: "Products",
                columns: new[] { "Id", "Cart", "Image", "Price", "Title" },
                values: new object[,]
                {
                    { 1, "<i class='ion-ios-cart'></i>", "product-1.jpg", 80m, "BELL PEPPER" },
                    { 2, "<i class='ion-ios-cart'></i>", "product-2.jpg", 120m, "STRAWBERRY" },
                    { 3, "<i class='ion-ios-cart'></i>", "product-3.jpg", 180m, "GREEN BEANS" },
                    { 4, "<i class='ion-ios-cart'></i>", "product-4.jpg", 220m, "PURPLE CABBAGE" },
                    { 5, "<i class='ion-ios-cart'></i>", "product-5.jpg", 110m, "TOMATO" },
                    { 6, "<i class='ion-ios-cart'></i>", "product-6.jpg", 90m, "BROCOLLI" },
                    { 7, "<i class='ion-ios-cart'></i>", "product-7.jpg", 100m, "CARROTS" },
                    { 8, "<i class='ion-ios-cart'></i>", "product-8.jpg", 130m, "FRUIT JUICE" }
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Products");
        }
    }
}
