<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginContact.aspx.cs" Inherits="LoginContact" %>
<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-image: url(./Image/contact/RemoteCommunication.png);">
    <form runat="server">
        <style>

         @media only screen and (max-width: 479px) {
            .card-container.card {
            max-width: 99%;
             min-width: 300px;
           }
         }
         @media only screen and (min-width: 480px) and (max-width: 767px) {
            .card-container.card {
            max-width: 90%;
             min-width: 300px;
           }
        }
        @media only screen and (min-width: 500px) and (max-width: 700px) {
            .card-container.card {
            max-width: 80%;
             min-width: 300px;
           }
        }
        @media only screen and (min-width: 991px) {
            .card-container.card {
            max-width: 60%;
             min-width: 300px;
        }
        }

         /*
         * Card component
         */

        .card {
            box-shadow: 1px 0px 2px 2px rgb(0 0 0 / 10%);
            padding: 1px 25px 30px;
            margin: 0 auto 25px;
            background-color: transparent;
            backdrop-filter: blur(3px);
            margin-top : 50px;
            padding-top : 30px;
        }

        .button {
            color :#5c86af;
            Width:400px;
            Height:50px;
            font-style:normal;
            Font-Size:Medium;
            border-color:#accbe9;
        }

        .button:hover {
            color: #5c86af;
            border-color: #5c86af;
        }

        .text {
            border-block-color : #accbe9;
            Height: 50px;
            Width: 600px;
        }
        </style>

        <script type="text/javascript">

        function callchange() {
            if (ASPxClientEdit.ValidateGroup('softic'))
            CallbackChangePass.PerformCallback();
        }

        function ValidationChangePassCallback(s, e) {
            var errPoin = s.cp_Inser;
            if (errPoin == 'add') {

                labelError.SetText('Password changed.');
                popupValidation.Show();
            }
            if (errPoin == 'Error') {
                labelError.SetText('Password change failed. Please re-enter your values and try again.');
                popupValidation.Show();
            }
        }

        function ValidationForcedPassw(s, e) {
            CallbackDate.PerformCallback();
        }

        function ValidationOldPassw(s, e) {
            CallbackDateOLD.PerformCallback();
        }

        function ValidationminPassw(s, e) {
            // CallbackMin.PerformCallback();

            if (PasswordTextbox.GetText() == txtOldPassword.GetText()) {
                e.isValid = false;
                e.errorText = "please choose a password that you haven't used before";
                //PasswordTextbox.SetIsValid(false);
                //PasswordTextbox.SetErrorText("please choose a password that you haven't used before");
            }
            else {
                //PasswordTextbox.SetIsValid(true);
                // e.isValid = true;
            }
        }

        function ValidationCallback(s, e) {
            var str = e.result;
            if (str != " ") {

                txtSession.SetIsValid(false);
                txtSession.SetErrorText(str);
            }
            else {
                txtSession.SetIsValid(true);
            }
        }

        function ValidationOLDCallback(s, e) {
            var str = e.result;
            //alert(str);
            if (str == "false") {

                txtOldPassword.SetIsValid(false);
                txtOldPassword.SetErrorText('Please verify your password  !!');
            }
            else {
                txtOldPassword.SetIsValid(true);
            }

        }

        function ValidationminLCallback(s, e) {
            var str = e.result;
            if (str == "Error") {

                PasswordTextbox.SetIsValid(false);
                PasswordTextbox.SetErrorText("please choose a password that you haven't used before");
            }
            else {
                PasswordTextbox.SetIsValid(true);
            }

        }

    </script>

    <div >
        <div class="card card-container">
                   <table>
                       <tr>
                            <td height="10px" colspan="2"></td>
                       </tr>
                   </table>
                   <table width="100%" align="center" style="flex-grow: 1; flex-shrink: 1; border:hidden;  height: 1px;">
                       <tr>
                            <td align="center" colspan="2">
                                <dx:ASPxImage runat="server" ID="imgPass" ClientInstanceName="imgPass" Width="200px" Height="200px" ImageUrl="~/Image/contact/Logo.jpg">
                                </dx:ASPxImage>
                            </td>
                       </tr>

                       <tr>
                            <td height="40px" colspan="2"></td>
                       </tr>

                       <tr>
                            <td align="center" colspan="2">
                                <div style="color: red; font-size: 20px; line-height: 18px; margin: -3px 0 -4px;">
                                </div>
                            </td>
                       </tr>

                       <tr>
                            <td colspan="2" align="center">
                                <dx:ASPxTextBox ID="Textlogin" ClientInstanceName="Textlogin" runat="server" NullText="Nom d'utilisateur" CssClass="text">
                                </dx:ASPxTextBox>
                            </td>
                       </tr>

                       <tr>
                            <td height="20px" colspan="2"></td>
                       </tr>

                       <tr>
                            <td colspan="2" align="center">
                                <dx:ASPxTextBox ID="Textmdp" ClientInstanceName="Textmdp" Password="true" runat="server" NullText="Mot de passe" CssClass="text">
                                </dx:ASPxTextBox> 
                            </td>
                       </tr>

                       <tr>
                            <td height="40px" colspan="2"></td>
                       </tr>

                       <tr>
                            <td align="center" colspan="2"     border-radius="6px" >
                                <dx:ASPxButton ID="btnOK" ClientInstanceName="btnOK" Text="Se connecter" runat="server" OnClick="loginButton_Click" AutoPostBack="false" ValidationGroup="softic" CssClass="button">             
                                </dx:ASPxButton>
                            </td>
                       </tr>
              
                       <tr>
                            <td height="5px" colspan="2"></td>
                       </tr>
                       
                       <tr>
                            <td align="center" colspan="2"     border-radius="6px" >
                                <dx:ASPxButton ID="btnSignUp" ClientInstanceName="btnSignUp" Text="S'inscrire" runat="server" OnClick="Sign_Click" AutoPostBack="false" ValidationGroup="softic" CssClass="button">             
                                </dx:ASPxButton>
                            </td>
                        </tr>

                        <tr>
                            <td height="100px" colspan="2"></td>
                        </tr>

                        <tr>
                            <td align="center" colspan="2">
                            </td>
                        </tr>

                        <tr>
                            <td height="10px" colspan="2"></td>
                        </tr>
               
                        <tr>
                            <td align="center">
                                <asp:Label ID="Msg" ForeColor="red" Font-Size="Large" runat="server" />
                            </td>
                        </tr>

                    </table>
            </div>
    </div>
</form>
</body>
</html>
