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

        static Customer()
        {
            UpdateProcedure = "sp_UpdateCustomer";
        }

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

        protected override void LoadParameters()
        {
            Parameters.Add("FirstName", FirstName);
            Parameters.Add("LastName", LastName);
            Parameters.Add("Phone", Phone);
            Parameters.Add("Address", Address);
            Parameters.Add("City", City);
            Parameters.Add("Postal", Postal);
            Parameters.Add("Email", Email);
        }
    }
}
