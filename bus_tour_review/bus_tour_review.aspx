<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bus_tour_review.aspx.cs" Inherits="bus_tour_review.bus_tour" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bus tour review</title>
    <style>
        section{
            padding-top:10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="text-align:center;">BUS TOUR REVIEW</h1>
            <section>
                <asp:Label runat="server">Review title:</asp:Label>
            </section>
            <section>
                <asp:TextBox placeholder="Please enter review title" runat="server" ID="passenger_review_title"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter review title" ControlToValidate="passenger_review_title" ForeColor="Red"></asp:RequiredFieldValidator>
            </section>
            <section>
                <asp:Label runat="server">Please leave your message:</asp:Label>
            </section>
            <section>
                <asp:TextBox runat="server" TextMode="multiline" ID="passenger_review_message" placeholder="Please leave your message" Rows="6" Columns="35"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please leave your message" ControlToValidate="passenger_review_message" ForeColor="Red"></asp:RequiredFieldValidator>
            </section>
            <section>
                <asp:Label runat="server">Email address:</asp:Label>
            </section>
            <section>
                <!-- 1)www.regexone.com
                     2)www.oreilly.com/library/view/regular-expressions-cookbook/9781449327453/ch04s01.html
                -->
                <asp:TextBox runat="server" ID="passenger_email" placeholder="Please enter email address e.gjohn@gmail.com"></asp:TextBox>
                <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter correct e-mail address" ControlToValidate="passenger_email" ForeColor="Red" ValidationExpression="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter email address" ControlToValidate="passenger_email" ForeColor="Red"></asp:RequiredFieldValidator>
            </section>
        <section>
            <asp:TextBox runat="server" ID="confirm_passenger_email" placeholder="Please enter email address e.gjohn@gmail.com"></asp:TextBox>
            <asp:CompareValidator runat="server" EnableClientScript="true" ErrorMessage="Your email address is not same as above" ControlToCompare="passenger_email" ControlToValidate="confirm_passenger_email" ForeColor="Red"></asp:CompareValidator>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter email address" ControlToValidate="confirm_passenger_email" ForeColor="Red"></asp:RequiredFieldValidator>
        </section>
            <section>
                <asp:Label runat="server">How was your tour experience?</asp:Label>
            </section>
            <section>
                <asp:DropDownList runat="server" ID="passenger_experience">
                    <asp:ListItem Text="--Select--" Value="" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="Very good"></asp:ListItem>
                    <asp:ListItem Text="Good"></asp:ListItem>
                    <asp:ListItem Text="Fair" ></asp:ListItem>
                    <asp:ListItem Text="Poor"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please mention your experience" ControlToValidate="passenger_experience" ForeColor="Red"></asp:RequiredFieldValidator>
            </section>
            <section>
                <asp:Label runat="server">Rating and review:</asp:Label>
            </section>
            <section>
                <asp:RadioButtonList runat="server" ID="tour_rating">
                    <asp:ListItem Text="1" Value="1"></asp:ListItem>
                    <asp:ListItem Text="2" Value="2"></asp:ListItem>
                    <asp:ListItem Text="3" Value="3"></asp:ListItem>
                    <asp:ListItem Text="4" Value="4"></asp:ListItem>
                    <asp:ListItem Text="5" Value="5"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please rate your tour" ControlToValidate="tour_rating" ForeColor="Red"></asp:RequiredFieldValidator>
            </section>
            <section>
                <asp:Label runat="server">Thing's you liked on board:</asp:Label>
            </section>
            <section>
                <asp:CheckBoxList runat="server" ID="passenger_liked_option">
                    <asp:ListItem Text="Cleaniness" Value="Cleanliness"></asp:ListItem>
                    <asp:ListItem Text="People" Value="Tour guide"></asp:ListItem>
                    <asp:ListItem Text="Tour guide" Value="People"></asp:ListItem>
                    <asp:ListItem Text="Facilities" Value="Facilities"></asp:ListItem>
                </asp:CheckBoxList> 
            </section>
            <section>
                <asp:ValidationSummary runat="server" ShowSummary="true" ForeColor="Red" />
            </section>
            <div id="overall_message" runat="server">
                
            </div>
            <section>
                <asp:Button runat="server" Text="Submit" />
            </section> 
        
    </form>
</body>
</html>
