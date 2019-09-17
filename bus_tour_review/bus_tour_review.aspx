<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bus_tour_review.aspx.cs" Inherits="bus_tour_review.bus_tour" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bus tour review</title>
    <style>
        div{
            padding-top:10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" method="post" action="https://postman-echo.com/post">
        <h1 style="text-align:center;">BUS TOUR REVIEW</h1>
            <div>
                <asp:Label runat="server">Review title:</asp:Label>
            </div>
            <div>
                <asp:TextBox placeholder="Please enter review title" runat="server" ID="passenger_review_title"></asp:TextBox>
            </div>
            <div>
                <asp:Label runat="server">Please leave your message:</asp:Label>
            </div>
            <div>
                <asp:TextBox runat="server" TextMode="multiline" ID="passenger_review_message" placeholder="Please leave your message" Rows="6" Columns="35"></asp:TextBox>
            </div>
            <div>
                <asp:Label runat="server">Email address:</asp:Label>
            </div>
            <div>
                <asp:TextBox runat="server" ID="passenger_email" placeholder="Please enter email address e.gjohn@gmail.com"></asp:TextBox>
            </div>
            <div>
                <asp:Label runat="server">How was your tour experience?</asp:Label>
            </div>
            <div>
                <asp:DropDownList runat="server" ID="passenger_experience">
                    <asp:ListItem Text="Very good">Very good</asp:ListItem>
                    <asp:ListItem Text="Good">Good</asp:ListItem>
                    <asp:ListItem Text="Fair">Fair</asp:ListItem>
                    <asp:ListItem Text="Poor">Poor</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                <asp:Label runat="server">Rating and review:</asp:Label>
            </div>
            <div>
                <asp:RadioButtonList runat="server" ID="tour_rating">
                    <asp:ListItem Text="1" Value="1"></asp:ListItem>
                    <asp:ListItem Text="2" Value="2"></asp:ListItem>
                    <asp:ListItem Text="3" Value="3"></asp:ListItem>
                    <asp:ListItem Text="4" Value="4"></asp:ListItem>
                    <asp:ListItem Text="5" Value="5"></asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <asp:Label runat="server">Thing's you liked on board:</asp:Label>
            </div>
            <div>
                <asp:CheckBoxList runat="server" ID="passenger_liked_option">
                    <asp:ListItem Text="Cleaniness" Value="Cleanliness"></asp:ListItem>
                    <asp:ListItem Text="People" Value="Tour guide"></asp:ListItem>
                    <asp:ListItem Text="Tour guide" Value="People"></asp:ListItem>
                    <asp:ListItem Text="Facilities" Value="Facilities"></asp:ListItem>
                </asp:CheckBoxList>
            </div>
            <div>
                <asp:Button runat="server" Text="Submit" />
            </div>       
    </form>
</body>
</html>
