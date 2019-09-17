<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bus_tour.aspx.cs" Inherits="bus_tour_review.bus_tour" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bus tour review</title>
    <link rel="stylesheet" type="text/css" href="Content/Site.css" />
</head>
<body>
    <form id="form1" runat="server" method="post" action="#">
        <h1>BUS TOUR REVIEW</h1>
        
        <div class="col2">
            <section>
                <label for="passenger_review_title">Review title:</label>
                <input type="text" name="passenger_review_title" id="passenger_review_title" />
            </section>
            <section>
                <label for="passenger_review_message">Please leave your review:</label>
                <textarea name="passenger_review_message" id="passenger_review_message" cols="35" rows="6"></textarea>
            </section>
            <section>
                <label for="passenger_email">Email address:</label>
                <input type="text" name="passenger_email" id="passenger_email" />
            </section>
            <section>
                <label>How was your tour experience?</label>
                <select id="passenger_experience" name="passenger_experience">
                    <option value="Very good">Very good</option>
                    <option value="Good">Good</option>
                    <option value="Fair">Fair</option>
                    <option value="Poor">Poor</option>
                </select>
            </section>
            <section>
                    <label>Rating and review :</label>
                    <div>
                        <input type="radio" name="tour_rating" id="tour_rating_1" />
                        <label for="tour_rating_1">1</label>
                    </div>
                    <div>
                        <input type="radio" name="tour_rating" id="tour_rating_2" />
                        <label for="tour_rating_2">2</label>
                    </div>
                    <div>
                        <input type="radio" name="tour_rating" id="tour_rating_3" />
                        <label for="tour_rating_3">3</label>
                    </div>
                    <div>
                        <input type="radio" name="tour_rating" id="tour_rating_4" />
                        <label for="tour_rating_4">4</label>
                    </div>
                    <div>
                        <input type="radio" name="tour_rating" id="tour_rating" />
                        <label for="tour_rating_5">5</label>
                    </div>
             </section>
            <section>
                <label>Thing's you liked on board:</label>
                <div>
                    <input type="checkbox" name="passenger_liked_option1" id="passenger_liked_option1" /><label for="passenger_liked_option1">Cleanliness</label>
                </div>
                <div>
                    <input type="checkbox" name="passenger_liked_option2" id="passenger_liked_option2" /><label for="passenger_liked_option2">Tour guide</label>
                </div>
                <div>
                    <input type="checkbox" name="passenger_liked_option3" id="passenger_liked_option3" /><label for="passenger_liked_option3">People</label>
                </div>
                <div>
                    <input type="checkbox" name="passenger_liked_option4" id="passenger_liked_option4" /><label for="passenger_liked_option4">Facilities</label>
                </div>
            </section>
            <section>
                <input type="submit" value="Submit" />
            </section>
        </div>
        <div class="col2">
            <section>
                <asp:Label runat="server">Review title:</asp:Label>
                <asp:TextBox runat="server" ID="aspx_passenger_review_title"></asp:TextBox>
            </section>
            <section>
                <asp:Label runat="server">Please leave your review:</asp:Label>
                <asp:TextBox runat="server" TextMode="multiline" ID="aspx_passenger_review_message" Rows="6" Columns="35"></asp:TextBox>
            </section>
            <section>
                <asp:Label runat="server">Email address:</asp:Label>
                <asp:TextBox runat="server" ID="aspx_passenger_email"></asp:TextBox>
            </section>
            <section>
                <asp:Label runat="server">How was your tour experience?</asp:Label>
                <asp:DropDownList runat="server" ID="aspx_passenger_experience">
                    <asp:ListItem Text="Very good">Very good</asp:ListItem>
                    <asp:ListItem Text="Good">Good</asp:ListItem>
                    <asp:ListItem Text="Fair">Fair</asp:ListItem>
                    <asp:ListItem Text="Poor">Poor</asp:ListItem>
                </asp:DropDownList>
            </section>
            <section>
                <asp:Label runat="server">Rating and review:</asp:Label>
                <asp:RadioButtonList runat="server" ID="aspx_tour_rating">
                    <asp:ListItem Text="1" Value="1"></asp:ListItem>
                    <asp:ListItem Text="2" Value="2"></asp:ListItem>
                    <asp:ListItem Text="3" Value="3"></asp:ListItem>
                    <asp:ListItem Text="4" Value="4"></asp:ListItem>
                    <asp:ListItem Text="5" Value="5"></asp:ListItem>
                </asp:RadioButtonList>
            </section>
            <section>
                <asp:Label runat="server">Thing's you liked on board:</asp:Label>
                <asp:CheckBoxList runat="server" ID="aspx_passenger_liked_option">
                    <asp:ListItem Text="Cleaniness" Value="Cleanliness"></asp:ListItem>
                    <asp:ListItem Text="People" Value="Tour guide"></asp:ListItem>
                    <asp:ListItem Text="Tour guide" Value="People"></asp:ListItem>
                    <asp:ListItem Text="Facilities" Value="Facilities"></asp:ListItem>
                </asp:CheckBoxList>
            </section>
            <section>
                <asp:Button runat="server" Text="Submit" />
            </section>
        </div>
    </form>
</body>
</html>
