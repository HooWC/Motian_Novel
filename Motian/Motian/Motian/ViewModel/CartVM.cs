using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using Motian.AppDbContext;
using Motian.Models;
using Xamarin.Essentials;

namespace Motian.ViewModel
{
	class CartVM : INotifyPropertyChanged
	{
		protected virtual void NotifyPropertyChanged([CallerMemberName] string propertyName = "")
		{
			PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
		}

		public event PropertyChangedEventHandler PropertyChanged;

		public UserDB userDB = new UserDB();


		public async Task AddCart(int Id)
		{
			string Username = Preferences.Get("Username", string.Empty);
			string Password = Preferences.Get("Password", string.Empty);
			var db = userDB.GetAllUser_User();
			var data = db.Where(x => x.Username == Username && x.Password == Password).FirstOrDefault();

			Cart ct = new Cart()
			{
				NovelId = Id,
				UserId = data.UserId,
				Status = false,
				CustomersIdNo = "none"
			};

			CartDB ctDB = new CartDB();
			ctDB.CreateCart(ct);

		}


	}
}
