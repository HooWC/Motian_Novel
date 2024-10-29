using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Motian.ViewModel;
using Xamarin.Forms;
using Xamarin.Forms.PancakeView;
using Xamarin.Forms.Xaml;

namespace Motian.View
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class NovelDetail_View : ContentPage
	{
		static int NovelID = 0;

		public NovelDetail_View(int id)
		{
			InitializeComponent();
			NovelID = id;
		}

		protected override void OnAppearing()
		{
			base.OnAppearing();
			NovelDetailVM nv = new NovelDetailVM();
			nv.getNovel(NovelID);
			BindingContext = nv;
		}

		private void Back(object sender, EventArgs e)
		{
			Navigation.PopAsync();
		}

		private void NovelDetail(object sender, EventArgs e)
		{
			var value = sender as StackLayout;
			var x = value.GestureRecognizers[0] as TapGestureRecognizer;
			Navigation.PushAsync(new NovelDetail_View(Convert.ToInt32(x.CommandParameter)));
		}

		private void AddToCart(object sender, EventArgs e)
		{
			var value = sender as PancakeView;
			var x = value.GestureRecognizers[0] as TapGestureRecognizer;
			int id = Convert.ToInt32(x.CommandParameter);
			CartVM vm = new CartVM();
			vm.AddCart(id);
			Navigation.PushAsync(new Cart_View());
		}
	}
}