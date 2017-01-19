using System;
using System.Collections.Generic;
using System.Web;

namespace ShipR.Entities
{
	public class User
	{
		enum Rights {
			Read,
			Write
		}

		private bool _allowedRead = false;
		private bool _allowedWrite = false;

		public bool AllowedRead { 
			get { return _allowedRead; }
			set { _allowedRead = value; }
		}
		public bool AllowedWrite
		{
			get { return _allowedWrite; }
			set { _allowedWrite = value; }
		}
		public string Application { get; set; }
		public string Login { get; set; }

		public User()
		{
		}
	}
}
