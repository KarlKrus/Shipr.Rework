﻿using System;
using System.Collections.Generic;
using System.Data;
using System.ComponentModel;
using System.Data.Common;
using System.Web;
using ShipR.Data;
using ShipR.Entities;

namespace ShipR.Business
{
	public class UserAccess
	{
		private string AppName = System.Configuration.ConfigurationSettings.AppSettings["AppName"].ToString();
		public string Login { get; set; }
		public bool AllowedRead { get; set; }
		public bool AllowedWrite { get; set; }

		public UserAccess(string login)
		{
			String[] loginParts = login.Split('\\');
			Login = loginParts[loginParts.Length - 1];
			User user = new User();
			user.Application = AppName;
			user.Login = Login;
			Set(ref user);
			AllowedRead = user.AllowedRead;
			AllowedWrite = user.AllowedWrite;
		}

		private void Set(ref User user)
		{
			DataSet ds = UserData.GetAccessData(user);
			DataRow[] rows = null;
			if (ds.Tables[2] != null)
			{
				rows = ds.Tables[2].Select("Name_Path LIKE '%" + user.Application + "|Security|Read%'");
				if (rows.Length > 0)
				{
					user.AllowedRead = true;
				}
				rows = ds.Tables[2].Select("Name_Path LIKE '%" + user.Application + "|Security|Write%'");
				if (rows.Length > 0)
				{
					user.AllowedWrite = true;
				}
			}
		}
	}

	public interface IUserAccess
	{
		UserAccess UserAccess { get; set; }
	}
}
