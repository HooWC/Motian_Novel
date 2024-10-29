using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using Motian.Models;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Motian.View
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class Home_View : ContentPage
	{
		public Home_View()
		{
			InitializeComponent();
			TPData.ItemsSource = new ObservableCollection<Novel>()
			{
				new Novel{NovelImg = "tp1.png"},
				new Novel{NovelImg = "tp2.png"},
				new Novel{NovelImg = "tp3.png"},
				new Novel{NovelImg = "tp4.png"}
			};
		}

		private void Classification(object sender, EventArgs e)
		{
			var value = sender as AbsoluteLayout;
			var x = value.GestureRecognizers[0] as TapGestureRecognizer;
			Navigation.PushAsync(new TypeList_View(x.CommandParameter.ToString()));
		}

		private void NovelDetail(object sender, EventArgs e)
		{
			var value = sender as StackLayout;
			var x = value.GestureRecognizers[0] as TapGestureRecognizer;
			Navigation.PushAsync(new NovelDetail_View(Convert.ToInt32(x.CommandParameter)));
		}

		private void CartPage(object sender, EventArgs e)
		{
			Navigation.PushAsync(new Cart_View());
		}
	}
}