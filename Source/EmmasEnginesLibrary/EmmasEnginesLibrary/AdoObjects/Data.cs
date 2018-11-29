using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace EmmasEnginesLibrary.AdoObjects
{
    internal static class Data
    {
        private static SqlConnection Connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["EmmasConnectionString"].ConnectionString);
        private static SqlCommand command = new SqlCommand("",Connection);

        static Data()
        {
            command.CommandType = CommandType.StoredProcedure;
        }

        internal static SqlCommand Cmd
        {
            get
            {
                try
                {
                    if (Connection.State != ConnectionState.Open)
                        Connection.Open();
                    return command;
                }
                catch
                {
                    return null;
                }
            }
        }

        internal static void Cleanup()
        {
            Connection.Close();
            Cmd.Parameters.Clear();
            Cmd.CommandText = "";
        }

    }
}
