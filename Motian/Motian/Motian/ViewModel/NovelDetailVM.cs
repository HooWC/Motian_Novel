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
	class NovelDetailVM : INotifyPropertyChanged
	{
		protected virtual void NotifyPropertyChanged([CallerMemberName] string propertyName = "")
		{
			PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
		}

		public event PropertyChangedEventHandler PropertyChanged;

		public static NovelDB Noveldb = new NovelDB();
		public static ObservableCollection<Novel> NovelList { get; set; } = Noveldb.GetAllNovel();

		public Novel NovelDetailData { get; set; }

		public async Task getNovel(int id)
		{
			NovelDetailData = NovelList.Where(x => x.NovelId == id).FirstOrDefault();
		}


	}
}
