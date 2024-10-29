using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Motian.ViewModel;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Motian.View
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class TypeList_View : ContentPage
	{
		public static string typeword = null;

		public TypeList_View(string type)
		{

			InitializeComponent();
			TypeListVM tList = new TypeListVM();
			tList.getType(type);
			TypeNovels.ItemsSource = tList.TypeList;
			TypeName.Text = tList.TypeName;
			NumberBook.Text = $"共 {tList.TypeBookNumber}本作品";

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
	}
}