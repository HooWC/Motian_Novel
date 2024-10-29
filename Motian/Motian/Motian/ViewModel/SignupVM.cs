using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using Motian.AppDbContext;
using Motian.Models;
using Xamarin.Forms;

namespace Motian.ViewModel
{
	public class SignupVM : INotifyPropertyChanged
	{
		protected virtual void NotifyPropertyChanged([CallerMemberName] string propertyName = "")
		{
			PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
		}

		public event PropertyChangedEventHandler PropertyChanged;

		public UserDB userDB = new UserDB();

		public List<Novel> nv { get; set; } = new List<Novel>()
		{
			new Novel{NovelName="离婚后她惊艳了世界",NovelImg="novel",NovelDescription="非典型少女的攻略日常，高智商国际反派和路人女主。",PopularityWork="14.3万人气值" },
			new Novel{NovelName="离婚后她惊艳了世界",NovelImg="novel",NovelDescription="非典型少女的攻略日常，高智商国际反派和路人女主。",PopularityWork="14.3万人气值" },
			new Novel{NovelName="离婚后她惊艳了世界",NovelImg="novel",NovelDescription="非典型少女的攻略日常，高智商国际反派和路人女主。",PopularityWork="14.3万人气值" },
			new Novel{NovelName="离婚后她惊艳了世界",NovelImg="novel",NovelDescription="非典型少女的攻略日常，高智商国际反派和路人女主。",PopularityWork="14.3万人气值" },
			new Novel{NovelName="离婚后她惊艳了世界",NovelImg="novel",NovelDescription="非典型少女的攻略日常，高智商国际反派和路人女主。",PopularityWork="14.3万人气值" },
			new Novel{NovelName="离婚后她惊艳了世界",NovelImg="novel",NovelDescription="非典型少女的攻略日常，高智商国际反派和路人女主。",PopularityWork="14.3万人气值" }

		};

		public List<Novel> nv2 { get; set; } = new List<Novel>()
		{
			new Novel{NovelName="离婚后她惊艳了世界",NovelImg="novel",NovelDescription="非典型少女的攻略日常，高智商国际反派和路人女主。",PopularityWork="14.3万人气值" },
			new Novel{NovelName="离婚后她惊艳了世界",NovelImg="novel",NovelDescription="非典型少女的攻略日常，高智商国际反派和路人女主。",PopularityWork="14.3万人气值" },
			new Novel{NovelName="离婚后她惊艳了世界",NovelImg="novel",NovelDescription="非典型少女的攻略日常，高智商国际反派和路人女主。",PopularityWork="14.3万人气值" },
			new Novel{NovelName="离婚后她惊艳了世界",NovelImg="novel",NovelDescription="非典型少女的攻略日常，高智商国际反派和路人女主。",PopularityWork="14.3万人气值" },
		};

		public string username { get; set; }
		public string UserName
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

		public string email { get; set; }
		public string Email
		{
			get { return email; }
			set { email = value; }
		}

		public Command CreateFunction { get; set; }

		public SignupVM()
		{
			CreateFunction = new Command(async async => await GetCreate());
		}

		async Task GetCreate()
		{
			User user = new User()
			{
				Name = "游客0226",
				Email = this.Email,
				Avatar = "avatar.jpg",
				Username = this.UserName,
				Password = this.Password,
				Active = true

			};

			//API Create
			userDB.CreateUser(user);
		}


	}
}
