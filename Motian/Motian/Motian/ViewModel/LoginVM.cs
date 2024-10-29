using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using Motian.AppDbContext;
using Motian.View;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace Motian.ViewModel
{
	class LoginVM : INotifyPropertyChanged
	{
		protected virtual void NotifyPropertyChanged([CallerMemberName] string propertyName = "")
		{
			PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
		}

		public event PropertyChangedEventHandler PropertyChanged;
		public UserDB userDB = new UserDB();

		public string username { get; set; }
		public string Username
		{
			get { return username; }
			set { username = value; }
		}

		public string password { get; set; }
		public string Password
		{
			get { return password; }
			set { password = value; }
		}

		public Command LoginFunction { get; set; }

		public LoginVM()
		{
			LoginFunction = new Command(async async => await CheckLogin());
		}

		async Task CheckLogin()
		{
			var userData = userDB.GetAllUser();
			var data = userData.Where(x => x.Username == this.Username & x.Password == this.Password).FirstOrDefault();
			if (data != null)
			{
				Preferences.Set("Username", this.Username);
				Preferences.Set("Password", this.Password);
				UserDB.userID = data.UserId;

				await Application.Current.MainPage.Navigation.PushAsync(new Home_View());
			}
		}

	}
}
