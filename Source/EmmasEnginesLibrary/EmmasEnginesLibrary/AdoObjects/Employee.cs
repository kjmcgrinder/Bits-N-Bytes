using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmmasEnginesLibrary.AdoObjects
{
    public class Employee : Model
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public int PosID { get; set; }        

        public Employee(string firstName, string lastName, int posID) : base()
        {
            FirstName = firstName;
            LastName = lastName;
            PosID = posID;
        }

        protected override void LoadParameters()       
        {
            Parameters.Add("empFirst", FirstName);
            Parameters.Add("empLast", LastName);
            Parameters.Add("posID", PosID);           
        }

        protected override string GetUpdateProcedure()
        {
            return "sp_UdateEmployee";
        }

        protected override string GetDeleteProcedure()
        {
            return "sp_DeleteEmployee";
        }
    }
}
