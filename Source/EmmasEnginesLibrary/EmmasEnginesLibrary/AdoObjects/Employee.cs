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

        static Employee()
        {
            UpdateProcedure = "sp_UdateEmployee";
        }

        public Employee(string firstName, string lastName, int posID) : base()
        {
            FirstName = firstName;
            LastName = lastName;
            PosID = posID;
        }

        public override bool Update()
        {
            Parameters.Add("FirstName", FirstName);
            Parameters.Add("LastName", LastName);
            Parameters.Add("PosID", PosID);
            return base.Update();
        }
    }
}
