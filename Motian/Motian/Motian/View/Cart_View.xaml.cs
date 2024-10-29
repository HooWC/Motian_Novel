using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Motian.AppDbContext;
using Motian.Models;
using Motian.ViewModel;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Motian.View
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class Cart_View : ContentPage
	{
		public static CartDB db = new CartDB();
		public static UserDB userdb = new UserDB();
		public static NovelDB noveldb = new NovelDB();
		public static List<Cart> carts = new List<Cart>();

		public Cart_View()
		{
			InitializeComponent();
		}

		protected async override void OnAppearing()
		{
			base.OnAppearing();

			string Username = Preferences.Get("Username", string.Empty);
			string Password = Preferences.Get("Password", string.Empty);
			var ur = userdb.GetAllUser_User();
			var userdata = ur.Where(x => x.Username == Username && x.Password == Password).FirstOrDefault();

			var ct = db.GetAllCart_User();
			var cartdata = ct.Where(x => x.UserId == userdata.UserId && x.Status == false).ToList();
			carts = cartdata;

			var nv = noveldb.GetAllNovel();
			List<Novel> nvlist = new List<Novel>();
			decimal dec = 0;

			foreach (var i in cartdata)
			{
				var data = nv.Where(x => x.NovelId == i.NovelId).FirstOrDefault();
				if (data != null)
				{
					nvlist.Add(data);
					dec += data.NovelPrice;
				}

			}

			CartListNovel.ItemsSource = nvlist;
			Total.Text = $"RM {dec}";
		}

		private void Checkout(object sender, EventArgs e)
		{
			carts.ForEach(x => x.Status = true);

			foreach (var i in carts)
			{
				db.EditCart(i);
			}

			Navigation.PushAsync(new Home_View());

		}

		private void Back(object sender, EventArgs e)
		{
			Navigation.PopAsync();
		}
	}
}