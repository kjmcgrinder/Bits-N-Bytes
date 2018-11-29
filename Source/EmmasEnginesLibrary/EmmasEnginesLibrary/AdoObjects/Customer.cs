using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmmasEnginesLibrary.AdoObjects
{
    public class Customer : Model
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string Postal { get; set; }
        public string Email { get; set; }
        
        public Customer(string firstName, string lastName, string phone, string address, string city, string postal, string email) : base()
        {
            FirstName = firstName;
            LastName = lastName;
            Phone = phone;
            Address = address;
            City = city;
            Postal = postal;
            Email = email;
        }
        protected override string GetUpdateProcedure()
        {
            return "sp_UpdateCustomer";
        }
        protected override void LoadParameters()
        {
            Parameters.Add("custFirst", FirstName);
            Parameters.Add("custLast", LastName);
            Parameters.Add("custPhone", Phone);
            Parameters.Add("custAddress", Address);
            Parameters.Add("custCity", City);
            Parameters.Add("custPostal", Postal);
            Parameters.Add("custEmail", Email);
        }

        protected override string GetDeleteProcedure()
        {
            return "sp_DeleteCustomer";
        }
    }
}
