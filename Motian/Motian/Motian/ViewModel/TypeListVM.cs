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

namespace Motian.ViewModel
{
	class TypeListVM : INotifyPropertyChanged
	{
		protected virtual void NotifyPropertyChanged([CallerMemberName] string propertyName = "")
		{
			PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
		}

		public event PropertyChangedEventHandler PropertyChanged;

		public static NovelDB Noveldb = new NovelDB();
		public static ObservableCollection<Novel> NovelList { get; set; } = Noveldb.GetAllNovel();

		public List<Novel> TypeList { get; set; }
		public static List<Novel> TyprNovels { get; set; }


		public string TypeName { get; set; }
		public int TypeBookNumber { get; set; }

		public async Task getType(string word)
		{
			this.TypeList = NovelList.Where(x => x.ListTyle.Contains(word)).ToList();
			TypeName = word;
			TypeBookNumber = this.TypeList.Count();
		}

	}
}
