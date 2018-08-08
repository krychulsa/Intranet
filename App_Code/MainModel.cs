using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
/// <summary>
/// Summary description for MainModel
/// </summary>

namespace Intranet.ModelCollection
{
    public class fi_employee
    {
        public string ID { get; set; }
        public string DeptID { get; set; }
        public string Range { get; set; }
        public string Title { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string FirstNameKH { get; set; }
        public string LastNameKH { get; set; }
        public string Gender { get; set; }
        public string Position { get; set; }
        public string Address { get; set; }
        public string NCardID { get; set; }
        public string PassportNo { get; set; }
        public string DOB { get; set; }
        public string Mobile { get; set; }
        public string Extension { get; set; }
        public string EmailInternal { get; set; }
        public string EmailExternal { get; set; }
        public string PhotoPath { get; set; }
        public string Status { get; set; }
        public string nv_Desc { get; set; }
        public string lastupdate { get; set; }
        public string group_name { get; set; }
    }

    public class ForteHolidays
    {
        public string id { get; set; }
        public string start { get; set; }
        public string title { get; set; }
    }
    public class fi_department
    {
        public string ID { get; set; }
        public string DeptName { get; set; }
    }

    public class fi_onleaveToday
    {
        public string EmployeeID { get; set; }
        public string EmployeeName { get; set; }
        public string Department { get; set; }
        public string Extension { get; set; }
        public string LeaveDate { get; set; }
        public string PlanDate { get; set; }
        public string LPCODE { get; set; }
    }


    public class fi_birthday
    {
        public string ID { get; set; }

        public string Colleague_Name { get; set; }
        public string PhotoPath { get; set; }
    }

    public class fi_news_events
    {
        public string newsId { get; set; }
        public string newsTitle { get; set; }
        public string newsSpoke { get; set; }
        public string newsDescription { get; set; }
    }


    public class fi_onleave_ref
    {
        public string Id { get; set; }
        public string lpcode { get; set; }
    }
}