using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using Motian.AppDbContext;
using Motian.Models;

namespace Motian.ViewModel
{
	class HomeVM : INotifyPropertyChanged
	{
		protected virtual void NotifyPropertyChanged([CallerMemberName] string propertyName = "")
		{
			PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
		}

		public event PropertyChangedEventHandler PropertyChanged;
		public static NovelDB Noveldb = new NovelDB();
		public static ObservableCollection<Novel> NovelList { get; set; } = Noveldb.GetAllNovel();

		public List<Novel> Items { get; set; } = new List<Novel>()
		{

			new Novel{NovelName="现代言情",NovelImg="FL1"},
			new Novel{NovelName="都市奇幻",NovelImg="FL2"},
			new Novel{NovelName="总裁豪门",NovelImg="FL3"},
			new Novel{NovelName="年代重生",NovelImg="FL4"},
			new Novel{NovelName="玄幻奇幻",NovelImg="FL5"},
			new Novel{NovelName="异界大陆",NovelImg="FL6"},
			new Novel{NovelName="幻想言情",NovelImg="FL7"},
			new Novel{NovelName="玄幻仙侠",NovelImg="FL8"},
			new Novel{NovelName="无限快穿",NovelImg="FL9"},
			new Novel{NovelName="N次元",NovelImg="FL10"},
			new Novel{NovelName="原生幻想",NovelImg="FL11"},
			new Novel{NovelName="奇闻异事",NovelImg="FL12"},
			new Novel{NovelName="奇门秘术",NovelImg="FL13"},
			new Novel{NovelName="男生",NovelImg="FL14"},
			new Novel{NovelName="女生",NovelImg="FL15"}
		};

		//编辑精选
		public List<Novel> editorChoice { get; set; } = NovelList.OrderBy(x => x.Popularity).Take(8).ToList();

		//精选热书
		public List<Novel> hotBooks { get; set; } = NovelList.Where(x => x.MaleType.Contains("女")).OrderByDescending(x => x.Popularity).Take(8).ToList();


		//男生4  女生4  
		public List<Novel> BoyNovel { get; set; } = NovelList.Where(x => x.MaleType.Contains("男")).Take(4).ToList();
		public List<Novel> GrilNovel { get; set; } = NovelList.Where(x => x.MaleType.Contains("女")).Take(4).ToList();

		//人气榜6   图片 名字 简介 人气
		public List<Novel> popularityList { get; set; } = NovelList.OrderByDescending(x => x.Popularity).Take(6).ToList();



	}
}
