using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Net.Http.Headers;
using System.Net.Http;
using System.Text;
using Motian.Models;
using System.Threading.Tasks;
using Newtonsoft.Json;
using Xamarin.Essentials;

namespace Motian.AppDbContext
{
	public class NovelDB
	{
		const string baseUrl = "http://10.0.2.2:5053/api/";
		HttpClient client = new HttpClient();
		public static string JWBToken = null;

		public void Token_Admin()
		{
			Admin admin = new Admin()
			{
				Username = "Hoo",
				Password = "Hoo"
			};

			using (var client = new HttpClient())
			{
				client.BaseAddress = new Uri(baseUrl);
				StringContent content = new StringContent(JsonConvert.SerializeObject(admin), Encoding.UTF8, "application/json");
				var respose = client.PostAsync("AdminToken", content).Result;

				if (respose.IsSuccessStatusCode)
				{
					string token = respose.Content.ReadAsStringAsync().Result;
					if (token != "Invalid credentials")
						JWBToken = token;
				}
			}
		}

		public void Token_User()
		{
			string Username = Preferences.Get("Username", string.Empty);
			string Password = Preferences.Get("Password", string.Empty);

			User user = new User()
			{
				Username = Username,
				Password = Password
			};

			using (var client = new HttpClient())
			{
				client.BaseAddress = new Uri(baseUrl);
				StringContent content = new StringContent(JsonConvert.SerializeObject(user), Encoding.UTF8, "application/json");
				var respose = client.PostAsync("UserToken", content).Result;

				if (respose.IsSuccessStatusCode)
				{
					string token = respose.Content.ReadAsStringAsync().Result;
					if (token != "Invalid credentials")
						JWBToken = token;
				}
			}
		}

		public async Task<ObservableCollection<Novel>> GetAllNovel_Api()
		{
			client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", JWBToken);
			client.BaseAddress = new Uri(baseUrl);
			var respose = client.GetAsync("Novel").Result;

			if (respose.IsSuccessStatusCode)
			{
				string jsonString = respose.Content.ReadAsStringAsync().Result;
				return JsonConvert.DeserializeObject<ObservableCollection<Novel>>(jsonString);
			}

			return null;
		}

		public ObservableCollection<Novel> GetAllNovel()
		{
			Token_User();
			return GetAllNovel_Api().Result;
		}

	}
}
