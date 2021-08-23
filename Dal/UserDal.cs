using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using MVC_CRUD1.Models;
using System.Data;
using MVC_CRUD1.Service;

namespace MVC_CRUD1.Dal
{
    public class UserDal
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        private string edit;
        private string id;

        public int insertUserService(User user)
        {
            SqlConnection conn = null;
            string sql = "insert into users(f_name, l_name, email,phone_no,city,address) values('" + user.fname + "','" + user.lname + "','" + user.email + "','" + user.phone + "','"+user.city+"','"+user.add+"')";
            conn = new SqlConnection(strcon);
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            int status = cmd.ExecuteNonQuery();
            if (status > 0)
            {
                return status;
            }
            else
            {
                return status;
            }
        }

        public List<User> getAllUserList()
        {
            string sql = "select id,f_name,l_name,email,phone_no,city,address ,active from users where active='y'";
            List<User> userList = new List<User>();
            using (SqlConnection conn = new SqlConnection(strcon))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandType = System.Data.CommandType.Text;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            foreach (DataRow dr in dt.Rows)
                            {
                                User user = new User();
                                user.id = Convert.ToInt32(dr[0]);
                                user.fname = dr[1].ToString();
                                user.lname = dr[2].ToString();
                                user.email = dr[3].ToString();
                                user.phone = dr[4].ToString();
                                user.city = dr[5].ToString();
                                user.add = dr[6].ToString();
                                user.active = dr[7].ToString();
                                userList.Add(user);
                            }
                        }
                    }
                    
                }
                conn.Close();
            }

            return userList; 
        }
        public List<User> getUserbyId(string edit)
        {
            string sql = "select id,f_name,l_name,email,phone_no,city,address from users where id ='"+edit+"'";
            List<User> editList = new List<User>();
            using (SqlConnection conn = new SqlConnection(strcon))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandType = System.Data.CommandType.Text;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            foreach (DataRow dr in dt.Rows)
                            {
                                User user = new User();
                                user.id = Convert.ToInt32(dr[0]);
                                user.fname = dr[1].ToString();
                                user.lname = dr[2].ToString();
                                user.email = dr[3].ToString();
                                user.phone = dr[4].ToString();
                                user.add = dr[5].ToString();
                                editList.Add(user);
                            }
                        }
                    }

                }
                conn.Close();
            }
            return editList;
        }

        public int updateUser(User user)
        {
            string sql = "update users set f_name='"+user.fname+"',l_name='"+user.lname+"',email='"+user.email+"',phone_no='"+user.phone+"',city='"+user.city+"',address='"+user.add+"' where id='"+user.id+"'";
            SqlConnection conn = null;
            conn = new SqlConnection(strcon);
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            int status = cmd.ExecuteNonQuery();
            if (status > 0)
            {
                return status;
            }
            else
            {
                return status;
            }
        }

        public int sofrDelete(string delete)
        {
            string sql = "update users set active='N' where id='"+ delete + "'";
            SqlConnection conn = null;
            conn = new SqlConnection(strcon);
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            int status = cmd.ExecuteNonQuery();
            if (status > 0)
            {
                return status;
            }
            else
            {
                return status;
            }
        }

    } //return 0;
}
