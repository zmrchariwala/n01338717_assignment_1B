using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bus_tour_review
{
    public partial class bus_tour : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(Page.IsPostBack)
            {
                Page.Validate();
                if (Page.IsValid)
                {
                    string review_title = passenger_review_title.Text.ToString();
                    string review_message = passenger_review_message.Text.ToString();
                    string passenger_emailaddress = passenger_email.Text.ToString();
                    string tour_experience = passenger_experience.Text.ToString();
                    int tour_star = Convert.ToInt32(tour_rating.Text.ToString());
                    string display_overall_rating;
                    display_overall_rating = "Review Title: "+review_title+"<br/>";
                    display_overall_rating += "Review Message: " + review_message + "<br/>";
                    display_overall_rating +="E-mail address: "+passenger_emailaddress+"<br/>";
                    display_overall_rating +="Tour experience: "+tour_experience+"<br/>";
                    display_overall_rating+="Rating: "+tour_star+"<br/>";

                    if(tour_experience=="Very good"&&tour_star==5)
                    {
                        display_overall_rating += "Overall Star: 5";
                    }
                    else if (tour_experience == "Good" && tour_star == 5)
                    {
                        display_overall_rating += "Overall Star: 4";
                    }
                    else if (tour_experience == "Fair" && tour_star == 5)
                    {
                        display_overall_rating += "Overall Star: 3";
                    }
                    else if (tour_experience == "Poor" && tour_star == 5)
                    {
                        display_overall_rating += "Overall Star: 2";
                    }
                    else if (tour_experience == "Very good" && tour_star == 4)
                    {
                        display_overall_rating += "Overall Star: 4";
                    }
                    else if (tour_experience == "Good" && tour_star == 4)
                    {
                        display_overall_rating += "Overall Star: 3";
                    }
                    else if (tour_experience == "Fair" && tour_star == 4)
                    {
                        display_overall_rating += "Overall Star: 2";
                    }
                    else if (tour_experience == "Poor" && tour_star == 4)
                    {
                        display_overall_rating += "Overall Star: 2";
                    }
                    else if (tour_experience == "Very good" && tour_star == 3)
                    {
                        display_overall_rating += "Overall Star: 4";
                    }
                    else if (tour_experience == "Good" && tour_star == 3)
                    {
                        display_overall_rating += "Overall Star: 3";
                    }
                    else if (tour_experience == "Fair" && tour_star == 3)
                    {
                        display_overall_rating += "Overall Star: 2";
                    }
                    else if (tour_experience == "Poor" && tour_star == 3)
                    {
                        display_overall_rating += "Overall Star: 1";
                    }
                    else if (tour_experience == "Very good" && tour_star == 2)
                    {
                        display_overall_rating += "Overall Star: 4";
                    }
                    else if (tour_experience == "Good" && tour_star == 2)
                    {
                        display_overall_rating += "Overall Star: 3";
                    }
                    else if (tour_experience == "Fair" && tour_star == 2)
                    {
                        display_overall_rating += "Overall Star: 2";
                    }
                    else if (tour_experience == "Poor" && tour_star == 2)
                    {
                        display_overall_rating += "Overall Star: 1";
                    }
                    else if (tour_experience == "Very good" && tour_star == 1)
                    {
                        display_overall_rating += "Overall Star: 2";
                    }
                    else if (tour_experience == "Good" && tour_star == 1)
                    {
                        display_overall_rating += "Overall Star: 2";
                    }
                    else if (tour_experience == "Fair" && tour_star == 1)
                    {
                        display_overall_rating += "Overall Star: 2";
                    }
                    else if (tour_experience == "Poor" && tour_star == 1)
                    {
                        display_overall_rating += "Overall Star: 1";
                    }
                    else
                    {
                        display_overall_rating += "Oops something went wrong";
                    }
                    overall_message.InnerHtml = display_overall_rating;
                }

            }

        }
    }
}