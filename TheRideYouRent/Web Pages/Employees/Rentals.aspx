<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rentals.aspx.cs" Inherits="TheRideYouRent.Web_Pages.Employees.Rental" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" />

    <title>Rentals</title>
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
                <h1>Rentals</h1>
                <%-- New Car Form --%>
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label">Car ID</label>
                    <asp:TextBox type="text" class="form-control" ID="txtCarNo" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label">Rental ID</label>
                    <asp:TextBox type="text" class="form-control" ID="txtRentalID" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label">Inspector</label>
                    <asp:TextBox type="text" class="form-control" ID="txtInspector" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label">Driver</label>
                    <asp:TextBox type="text" class="form-control" ID="txtDriver" runat="server"></asp:TextBox>

                </div>
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label">Rental Fee</label>
                    <asp:TextBox type="text" class="form-control" ID="txtRental" runat="server"></asp:TextBox>

                </div>
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label">Start Date</label>
                    <asp:TextBox type="date" class="form-control" ID="txtStart" runat="server"></asp:TextBox>

                </div>
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label">End Date</label>
                    <asp:TextBox type="date" class="form-control" ID="txtEndDate" runat="server"></asp:TextBox>

                </div>
                <asp:Button ID="AddBtn" class="btn btn-primary" Text="Add" OnClick="AddBtn_Click" runat="server" />
                <%--Display Data--%>
                <div class="mb-4">
                    <h2 class="mt-4">Table</h2>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DB_VC_CLDV6211_ST10091607 %>" DeleteCommand="DELETE FROM [Rental_ST10091607] WHERE [RentalID] = @original_RentalID AND (([Inspector] = @original_Inspector) OR ([Inspector] IS NULL AND @original_Inspector IS NULL)) AND (([Driver] = @original_Driver) OR ([Driver] IS NULL AND @original_Driver IS NULL)) AND (([RentalFee] = @original_RentalFee) OR ([RentalFee] IS NULL AND @original_RentalFee IS NULL)) AND (([StartDate] = @original_StartDate) OR ([StartDate] IS NULL AND @original_StartDate IS NULL)) AND (([EndDate] = @original_EndDate) OR ([EndDate] IS NULL AND @original_EndDate IS NULL)) AND (([CarNo] = @original_CarNo) OR ([CarNo] IS NULL AND @original_CarNo IS NULL))" InsertCommand="INSERT INTO [Rental_ST10091607] ([Inspector], [Driver], [RentalFee], [StartDate], [EndDate], [CarNo]) VALUES (@Inspector, @Driver, @RentalFee, @StartDate, @EndDate, @CarNo)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Rental_ST10091607]" UpdateCommand="UPDATE [Rental_ST10091607] SET [Inspector] = @Inspector, [Driver] = @Driver, [RentalFee] = @RentalFee, [StartDate] = @StartDate, [EndDate] = @EndDate, [CarNo] = @CarNo WHERE [RentalID] = @original_RentalID AND (([Inspector] = @original_Inspector) OR ([Inspector] IS NULL AND @original_Inspector IS NULL)) AND (([Driver] = @original_Driver) OR ([Driver] IS NULL AND @original_Driver IS NULL)) AND (([RentalFee] = @original_RentalFee) OR ([RentalFee] IS NULL AND @original_RentalFee IS NULL)) AND (([StartDate] = @original_StartDate) OR ([StartDate] IS NULL AND @original_StartDate IS NULL)) AND (([EndDate] = @original_EndDate) OR ([EndDate] IS NULL AND @original_EndDate IS NULL)) AND (([CarNo] = @original_CarNo) OR ([CarNo] IS NULL AND @original_CarNo IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_RentalID" Type="Int32" />
                            <asp:Parameter Name="original_Inspector" Type="String" />
                            <asp:Parameter Name="original_Driver" Type="String" />
                            <asp:Parameter Name="original_RentalFee" Type="Int32" />
                            <asp:Parameter DbType="Date" Name="original_StartDate" />
                            <asp:Parameter DbType="Date" Name="original_EndDate" />
                            <asp:Parameter Name="original_CarNo" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Inspector" Type="String" />
                            <asp:Parameter Name="Driver" Type="String" />
                            <asp:Parameter Name="RentalFee" Type="Int32" />
                            <asp:Parameter DbType="Date" Name="StartDate" />
                            <asp:Parameter DbType="Date" Name="EndDate" />
                            <asp:Parameter Name="CarNo" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Inspector" Type="String" />
                            <asp:Parameter Name="Driver" Type="String" />
                            <asp:Parameter Name="RentalFee" Type="Int32" />
                            <asp:Parameter DbType="Date" Name="StartDate" />
                            <asp:Parameter DbType="Date" Name="EndDate" />
                            <asp:Parameter Name="CarNo" Type="String" />
                            <asp:Parameter Name="original_RentalID" Type="Int32" />
                            <asp:Parameter Name="original_Inspector" Type="String" />
                            <asp:Parameter Name="original_Driver" Type="String" />
                            <asp:Parameter Name="original_RentalFee" Type="Int32" />
                            <asp:Parameter DbType="Date" Name="original_StartDate" />
                            <asp:Parameter DbType="Date" Name="original_EndDate" />
                            <asp:Parameter Name="original_CarNo" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RentalID" DataSourceID="SqlDataSource1" Height="200px" Width="1300px">
                        <Columns>
                            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                            <asp:BoundField DataField="RentalID" HeaderText="RentalID" InsertVisible="False" ReadOnly="True" SortExpression="RentalID" />
                            <asp:BoundField DataField="Inspector" HeaderText="Inspector" SortExpression="Inspector" />
                            <asp:BoundField DataField="Driver" HeaderText="Driver" SortExpression="Driver" />
                            <asp:BoundField DataField="RentalFee" HeaderText="RentalFee" SortExpression="RentalFee" />
                            <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
                            <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
                            <asp:BoundField DataField="CarNo" HeaderText="CarNo" SortExpression="CarNo" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>

        </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>


</body>
</html>
