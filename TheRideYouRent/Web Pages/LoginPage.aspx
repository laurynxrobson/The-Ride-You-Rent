<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="TheRideYouRent.Web_Pages.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" />

    <title>Login Page</title>
</head>
<body>
    <form id="loginPage" runat="server">
        <div class="justify-content-center container">
            <h1 class="row mt-5 d-flex p-4">Login Page</h1>
            <form class="row g-3 needs-validation" novalidate>
                <div class="row-md-4">
                    <label for="validationCustomUsername" class="form-label">Inspector ID</label>
                    <div class="input-group has-validation">
                        <asp:TextBox type="text" class="form-control" ID="txtInspectorID" aria-describedby="inputGroupPrepend" required runat="server"></asp:TextBox>
                        <div class="invalid-feedback">
                            ID is incorrect.
                        </div>
                    </div>
                </div>
                <div class="row-md-4">
                    <label for="validationCustomUsername" class="form-label">Name</label>
                    <div class="input-group has-validation">
                        <asp:TextBox type="text" class="form-control" ID="txtName" aria-describedby="inputGroupPrepend" required runat="server"></asp:TextBox>
                        <div class="invalid-feedback">
                            Name is incorrect.
                        </div>
                    </div>
                </div>
                <div class="row-12">
                </div>
                <div class="col-12 pt-2">
                    <asp:Button Text="Login" class="btn btn-primary" href="Employees/InspectorsHomePage" role="button" runat="server" OnClick="Login_Click" />
                </div>
            </form>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>

</body>
</html>
