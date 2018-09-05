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
        public string fullname { get; set; }
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

   public class fi_AppUser
    {
        public string Id { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public string Role { get; set; }
        public string AppSite { get; set; }
        public string CreateDate { get; set; }
        public string CreateBy { get; set; }
    }
    public class fi_CarBooking
    {
        public string No { get; set; }
        public string AppointmentDate { get; set; }
        public string Time { get; set; }
        public string BookerName { get; set; }
        public string Department { get; set; }
        public string BookingDate { get; set; }
        public string ETD { get; set; }
        public string ETA { get; set; }
        public string Car { get; set; }
        public string Destination { get; set; }
        public string Reason { get; set; }
        public string Status { get; set; }
    }

    public class fi_LeavePlanHoliday
    {
        public string id { get; set; }
        public string name { get; set; }
        public string location { get { return ""; } }
        public DateTime startDate { get; set; }
        public DateTime endDate { get; set; }
    }

    public class fi_LeavePlanOnLeave
    {
        public string id { get; set; }
        public string name { get; set; }
        public string location { get { return "On leave plan"; } }
        public DateTime startDate { get; set; }
        public DateTime endDate { get; set; }
        public DateTime PLANDATE { get; set; } 
    }
   

    public class fi_travelIns
    {
        public string certificate_id { get; set; }
        public string travel_id { get; set; }
        public string created_date { get; set; }
        public string created_by { get; set; }
        public string endorsement { get; set; }
        public string c_aget_id { get; set; }
        public string c_agent_code { get; set; }
        public string status { get; set; }
        public DateTime travel_depart_date { get; set; }
        public DateTime travel_return_date { get; set; }
        public string itinerary { get; set; }
        public string cover_plan { get; set; }
        public int premium { get; set; }
        public string q_created_by { get; set; }
        public string client_id { get; set; }
        public string client_name { get; set; }
        public string client_dob { get; set; }
        public string client_passport { get; set; }
        public string client_address { get; set; }
        public string q_agent_id { get; set; }
        public string q_agent_code { get; set; }
    }
    public class fi_travelIns_Select_All
    {
        public string client_name { get; set; }
        public string certificate_id { get; set; }
        public string travel_id { get; set; }
        public string travel_depart_date { get; set; }
        public string travel_return_date { get; set; }
        public string travel_days { get; set; }
        public string itinerary { get; set; }
        public string cover_plan { get; set; }
        public string premium { get; set; }
        public string commission { get; set; }
        public string net_premium { get; set; }
        public string client_beneficiary { get; set; }
        public string client_beneficiary_phone { get; set; }
        public string client_address { get; set; }
        public string client_phone { get; set; }
        public string quoted_by { get; set; }
        public string quoted_agent { get; set; }
        public string issued_by { get; set; }
        public string issued_agent { get; set; }
        public string paid_status { get; set; }
        public string endorsement { get; set; }
        public string is_canceled { get; set; }
        public string created_by { get; set; }
        public string itinerary_full { get; set; }
        public string client_passport { get; set; }
        public DateTime client_dob { get; set; }
        public DateTime created_date { get; set; }
    }
}