using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Text;
using System.Threading.Tasks;
using Contracts;

namespace Insfrastructure.Repository
{
	public class RepositoryWrapper : IRepositoryWrapper
	{
		private AppDbContext DB;

		public RepositoryWrapper(AppDbContext _db)
		{
			DB = _db;
		}


		private IAdmin _admin;
		private ICart _cart;
		private ICollect _collect;
		private INovel _novel;
		private ITransaction _transaction;
		private IUser _user;

		public IAdmin Admin
		{
			get
			{
				if (_admin == null)
				{
					_admin = new AdminRepository(DB);
				}
				return _admin;
			}
		}

		public ICart Cart
		{
			get
			{
				if (_cart == null)
				{
					_cart = new CartRepository(DB);
				}
				return _cart;
			}
		}

		public ICollect Collect
		{
			get
			{
				if (_collect == null)
				{
					_collect = new CollectRepository(DB);
				}
				return _collect;
			}
		}

		public INovel Novel
		{
			get
			{
				if (_novel == null)
				{
					_novel = new NovelRepository(DB);
				}
				return _novel;
			}
		}

		public ITransaction Transaction
		{
			get
			{
				if (_transaction == null)
				{
					_transaction = new TransactionRepository(DB);
				}
				return _transaction;
			}
		}

		public IUser User
		{
			get
			{
				if (_user == null)
				{
					_user = new UserRepository(DB);
				}
				return _user;
			}
		}

		public void Save()
		{
			DB.SaveChanges();
		}
	}
}
