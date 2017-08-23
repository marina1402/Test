<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact_us.aspx.cs" Inherits="Projects.Contact_us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />        <link rel="stylesheet" type="text/css" href="/plugins/bt/css/bootstrap.min.css" />
    <link href="css/style.css" rel="stylesheet" />
    <style>
        html{
            width: 100%;
            height: 100%;
            font-family: Georgia !important;
            background: #d8f0f3 /*#b0e0e6*/;
        }
        body{
            background: #d8f0f3 /*#b0e0e6*/;
            font-family: Georgia !important;
            font-size:14pt;
            margin:auto;
            width:95%;

        }
        a{
            color: #30909c;
            font-weight: 600;
        }
        div#nav{
            margin: auto;
            width: 90%;
            text-align: center;
            padding: 5px;
            font-family: Rockwell, "Courier Bold", Courier, Georgia, Times, "Times New Roman", serif;
	        font-size: 24px;
	        font-style: normal;
	        font-variant: normal;
	        font-weight: 700;
	        line-height: 26.4px;
        }
        .contact-container {
            margin: 0 auto;
            margin-top: 50px;
            width: 100%;

        }
        input[type=text], textarea, select
        {
            width:98%;
        }

        select {
            height: 34px;
        }
       
        .required {
            color: red;
            font-size: 12px;
        }
        .unclear-text {
            margin-top: 20px;
            margin-bottom: 15px;
            text-align: center;
            font-weight: bold;
        }

        .margin-bottom-25 {
            margin-bottom: 25px;
        }

        .margin-bottom-35 {
            margin-bottom: 35px;
        }

        .center {
            text-align: center;
        }
        @media (min-width: 768px) {
            .contact-container {
                width: 800px;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="nav">
        <h1 class="nav margin-bottom-25">Contact us</h1>
        <a href="index.html">Home</a> | <a href="about.html">About</a> | 
        <a href="https://www.gofundme.com/thomas-bartram-merchant-log-book">Donate Today!</a> | 
        <a href="contact_us.html">Home</a>
    </div>    <div class="contact-container">
        <div class="row">
            <div class="col-xs-5">Email</div>
            <div class="col-xs-7">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtEmail" CssClass="required"
                    ErrorMessage="* Email is required.">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                    runat="server" ErrorMessage="Please enter correct email."
                    ControlToValidate="txtEmail"
                    ForeColor="Red" CssClass="required"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                </asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-5">Name</div>
            <div class="col-xs-7">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtName" CssClass="required"
                    ErrorMessage="* Name is required.">
                </asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row margin-bottom-25">
            <div class="col-xs-5">Topic</div>
            <div class="col-xs-7">
                <asp:DropDownList ID="lstTopic" runat="server">
                    <asp:ListItem Value="General inquiry">General inquiry</asp:ListItem>
                    <asp:ListItem Value="Funding and donate">Funding and donate</asp:ListItem>
                    <asp:ListItem Value="Suggestion for unclear text">Suggestion for unclear text</asp:ListItem>
                    <asp:ListItem Value="Add bio details on people">Add bio details on people</asp:ListItem>
                    <asp:ListItem Value="Volunteer">Volunteer</asp:ListItem>
                </asp:DropDownList>
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="lstTopic" CssClass="required"
                    ErrorMessage="Full Name is required.">
                </asp:RequiredFieldValidator>--%>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-5">Message</div>
            <div class="col-xs-7">
                <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="4"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtMessage" CssClass="required"
                    ErrorMessage="* Message is required.">
                </asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row unclear-text">
            <h3>Unclear text</h3>
        </div>
        <div class="row">
            <div class="col-xs-5">ID #</div>
            <div class="col-xs-7">
                <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtID" CssClass="required"
                    ErrorMessage="* ID is required.">
                </asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row margin-bottom-25">
            <div class="col-xs-5">Word suggested</div>
            <div class="col-xs-7">
                <asp:TextBox ID="txtWord" runat="server"></asp:TextBox>
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtWord" CssClass="required"
                    ErrorMessage="Full Name is required.">
                </asp:RequiredFieldValidator>--%>
            </div>
        </div>
        <div class="row margin-bottom-25">
            <div class="col-xs-5">Message to describe your point</div>
            <div class="col-xs-7">
                <asp:TextBox ID="txtMessageDescribe" runat="server"></asp:TextBox>
               <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtMessageDescribe" CssClass="required"
                    ErrorMessage="Full Name is required.">
                </asp:RequiredFieldValidator>--%>
            </div>
        </div>
        <div class="row center margin-bottom-25">
            <asp:Button ID="btnSubmit" runat="server" Text="Send" OnClick="btnSubmit_Click" />
        </div>
    </div>
    </form>
</body>
</html>
