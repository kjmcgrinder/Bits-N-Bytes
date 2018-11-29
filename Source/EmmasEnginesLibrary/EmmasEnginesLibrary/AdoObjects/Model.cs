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
        protected Dictionary<string, object> Parameters { get; set; }

        public Model()
        {
            Parameters = new Dictionary<string, object>();
            ID = -1;
        }

        protected abstract void LoadParameters();

        protected abstract string GetUpdateProcedure();

        protected abstract string GetDeleteProcedure();

        public bool Delete()
        {
            if(Data.Cmd != null)
            {
                bool Success;
                Data.Cmd.CommandText = GetDeleteProcedure();
                Data.Cmd.Parameters.AddWithValue("RowVersion", RowVersion);
                Data.Cmd.Parameters.AddWithValue("id", ID);
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
                return Success;
            }
            else
                return false;
        }

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
                Data.Cmd.CommandText = GetUpdateProcedure();
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
