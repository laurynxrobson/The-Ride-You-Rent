<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InspectorsHomePage.aspx.cs" Inherits="TheRideYouRent.Web_Pages.Employees.Inspectors" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" />

    <title>Inspector Home Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-lg bg-light">
                <div class="container-fluid">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="InspectorsHomePage.aspx">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Cars.aspx">Cars</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Rentals.aspx">Rentals</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Returns.aspx">Returns</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Customers.aspx">Customers</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link disabled" href="../LoginPage.aspx">Logout</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <%--Nav Bar End--%>
            <div class="container justify-content-center">
                <h1 class="mt-2">Inspectors</h1>
                <%-- New Car Form --%>
                <form>
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">Inspector ID</label>
                        <asp:TextBox type="text" class="form-control" ID="txtInspectorID" runat="server"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">Inspector Name and Surname</label>
                        <asp:TextBox type="text" class="form-control" ID="txtName" runat="server"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">Inspector Email</label>
                        <asp:TextBox type="text" class="form-control" ID="txtEmail" runat="server"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">Inspector Contact Number</label>
                        <asp:TextBox type="text" class="form-control" ID="txtMobile" runat="server"></asp:TextBox>
                    </div>
                    <asp:Button ID="AddBtn" class="btn btn-primary" Text="Add" OnClick="AddBtn_Click" runat="server"/>
                </form>
                <%-- Display Data--%>
                <div>
                    <h2 class="mt-4">Table</h2>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_VC_CLDV6211_ST10091607 %>" SelectCommand="SELECT * FROM [Inspector_ST10091607]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Inspector_ST10091607] WHERE [Inspector_no] = @original_Inspector_no AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Mobile] = @original_Mobile) OR ([Mobile] IS NULL AND @original_Mobile IS NULL))" InsertCommand="INSERT INTO [Inspector_ST10091607] ([Inspector_no], [Name], [Email], [Mobile]) VALUES (@Inspector_no, @Name, @Email, @Mobile)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Inspector_ST10091607] SET [Name] = @Name, [Email] = @Email, [Mobile] = @Mobile WHERE [Inspector_no] = @original_Inspector_no AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Mobile] = @original_Mobile) OR ([Mobile] IS NULL AND @original_Mobile IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Inspector_no" Type="String" />
                            <asp:Parameter Name="original_Name" Type="String" />
                            <asp:Parameter Name="original_Email" Type="String" />
                            <asp:Parameter Name="original_Mobile" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Inspector_no" Type="String" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Mobile" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Mobile" Type="Int32" />
                            <asp:Parameter Name="original_Inspector_no" Type="String" />
                            <asp:Parameter Name="original_Name" Type="String" />
                            <asp:Parameter Name="original_Email" Type="String" />
                            <asp:Parameter Name="original_Mobile" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Inspector_no" DataSourceID="SqlDataSource1" Height="200px" Width="1000px">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Inspector_no" HeaderText="Inspector_no" ReadOnly="True" SortExpression="Inspector_no" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>

</body>
</html>
