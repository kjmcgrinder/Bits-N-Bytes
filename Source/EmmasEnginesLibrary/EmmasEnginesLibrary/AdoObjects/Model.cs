using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmmasEnginesLibrary.AdoObjects
{
    public abstract class Model
    {
        public int ID { get; private set; }
        public byte[] RowVersion { get; set; }
        protected static string UpdateProcedure { get; set; }
        protected Dictionary<string, object> Parameters { get; set; }

        public Model()
        {
            Parameters = new Dictionary<string, object>();
            ID = -1;
        }

        protected abstract void LoadParameters();

        public virtual bool Update()
        {
            LoadParameters();
            if (RowVersion != null)
                Parameters.Add("RowVersion", RowVersion);
            else
                Parameters.Add("RowVersion", DBNull.Value);
            Parameters.Add("ID", ID);
            bool Success = false;
            if (Data.Cmd != null)
            {
                Data.Cmd.CommandText = UpdateProcedure;
                foreach (string Name in Parameters.Keys)
                    Data.Cmd.Parameters.AddWithValue(Name, Parameters[Name]);
                try
                {
                    Success = Data.Cmd.ExecuteNonQuery() > 0;
                }
                catch
                {
                    Success = false;
                }
                finally
                {
                    Data.Cleanup();
                }
            }
            else
                Success = false;
            return Success;
        }
    }
}
