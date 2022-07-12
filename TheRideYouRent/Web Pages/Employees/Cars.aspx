<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="TheRideYouRent.Web_Pages.Employees.Cars" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" />

    <title>Cars</title>
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
                <h1 class="mt-2">Cars</h1>
                <%-- New Car Form --%>
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label">Car ID</label>
                    <asp:TextBox type="text" class="form-control" ID="txtCar" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label">Car Make</label>
                    <asp:TextBox type="text" class="form-control" id="txtMake" runat="server"></asp:TextBox>

                </div>
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label">Car Model</label>
                    <asp:TextBox type="text" class="form-control" id="txtModel" runat="server"></asp:TextBox>

                </div>
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label">Car Body Type</label>
                    <asp:TextBox type="text" class="form-control" id="txtBodyType" runat="server"></asp:TextBox>

                </div>
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label">Kilometers Travelled</label>
                    <asp:TextBox type="number" class="form-control" id="txtCarKilosTravelled" runat="server"></asp:TextBox>

                </div>
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label">Service Kilometres</label>
                    <asp:TextBox type="number" class="form-control" id="txtServiceKilos" runat="server"></asp:TextBox>

                </div>
                <div class="mb-3">
                    <label class="form-check-label" for="formGroupExampleInput">Available</label>
                    <asp:TextBox type="text" class="form-control" ID="txtAvailable" runat="server"></asp:TextBox>

                </div>
                <asp:Button ID="AddBtn" class="btn btn-primary" Text="Add" OnClick="AddBtn_Click" runat="server" />

                <%--Display Data--%>
                <div class="mb-4">
                    <h2 class="mt-4">Table</h2>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_VC_CLDV6211_ST10091607 %>" DeleteCommand="DELETE FROM [Car_ST10091607] WHERE [CarNo] = @CarNo" InsertCommand="INSERT INTO [Car_ST10091607] ([CarNo], [CarMake], [Model], [BodyType], [KilometresTravelled], [ServiceKilometres], [Available]) VALUES (@CarNo, @CarMake, @Model, @BodyType, @KilometresTravelled, @ServiceKilometres, @Available)" SelectCommand="SELECT * FROM [Car_ST10091607]" UpdateCommand="UPDATE [Car_ST10091607] SET [CarMake] = @CarMake, [Model] = @Model, [BodyType] = @BodyType, [KilometresTravelled] = @KilometresTravelled, [ServiceKilometres] = @ServiceKilometres, [Available] = @Available WHERE [CarNo] = @CarNo">
                        <DeleteParameters>
                            <asp:Parameter Name="CarNo" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="CarNo" Type="String" />
                            <asp:Parameter Name="CarMake" Type="String" />
                            <asp:Parameter Name="Model" Type="String" />
                            <asp:Parameter Name="BodyType" Type="String" />
                            <asp:Parameter Name="KilometresTravelled" Type="Int32" />
                            <asp:Parameter Name="ServiceKilometres" Type="Int32" />
                            <asp:Parameter Name="Available" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="CarMake" Type="String" />
                            <asp:Parameter Name="Model" Type="String" />
                            <asp:Parameter Name="BodyType" Type="String" />
                            <asp:Parameter Name="KilometresTravelled" Type="Int32" />
                            <asp:Parameter Name="ServiceKilometres" Type="Int32" />
                            <asp:Parameter Name="Available" Type="String" />
                            <asp:Parameter Name="CarNo" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CarNo" DataSourceID="SqlDataSource1" Width="1300px" Height="200px">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="CarNo" HeaderText="CarNo" ReadOnly="True" SortExpression="CarNo" />
                            <asp:BoundField DataField="CarMake" HeaderText="CarMake" SortExpression="CarMake" />
                            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                            <asp:BoundField DataField="BodyType" HeaderText="BodyType" SortExpression="BodyType" />
                            <asp:BoundField DataField="KilometresTravelled" HeaderText="KilometresTravelled" SortExpression="KilometresTravelled" />
                            <asp:BoundField DataField="ServiceKilometres" HeaderText="ServiceKilometres" SortExpression="ServiceKilometres" />
                            <asp:BoundField DataField="Available" HeaderText="Available" SortExpression="Available" />
                        </Columns>
                    </asp:GridView>
                </div>
    </form>
    </div>

    </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>

</body>
</html>
