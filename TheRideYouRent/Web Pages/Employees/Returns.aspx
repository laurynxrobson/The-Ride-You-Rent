<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Returns.aspx.cs" Inherits="TheRideYouRent.Web_Pages.Employees.Returns" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" />

    <title>Returns</title>
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
                <h1>Returns</h1>
                <%-- New Car Form --%>
                <form>
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">Car No</label>
                        <asp:TextBox type="text" class="form-control" ID="txtCarNo" runat="server"></asp:TextBox>
                    </div>
                    div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">Return ID</label>
                    <asp:TextBox type="text" class="form-control" ID="txtReturn" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="formGroupExampleInput" class="form-label">Inspector</label>
                <asp:TextBox type="text" class="form-control" ID="txtInspector" runat="server"></asp:TextBox>

                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label">Driver</label>
                    <asp:TextBox type="text" class="form-control" ID="txtDriver" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label">Return Date</label>
                    <asp:TextBox type="date" class="form-control" ID="txtreturnDate" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label">Elapsed Date</label>
                    <asp:TextBox type="number" class="form-control" ID="txtelapsedDate" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="formGroupExampleInput" class="form-label">Fine</label>
                    <asp:TextBox type="number" class="form-control" ID="txtfine" runat="server"></asp:TextBox>
                </div>
                <asp:Button ID="AddBtn" class="btn btn-primary" Text="Add" OnClick="AddBtn_Click" runat="server" />
    </form>
    <%--Display Data--%>
    <div class="mb-4">
        <h2 class="mt-4">Table</h2>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DB_VC_CLDV6211_ST10091607 %>" DeleteCommand="DELETE FROM [ReturnTB_ST10091607] WHERE [ReturnID] = @original_ReturnID AND (([Inspector] = @original_Inspector) OR ([Inspector] IS NULL AND @original_Inspector IS NULL)) AND (([Driver] = @original_Driver) OR ([Driver] IS NULL AND @original_Driver IS NULL)) AND (([ReturnDate] = @original_ReturnDate) OR ([ReturnDate] IS NULL AND @original_ReturnDate IS NULL)) AND (([ElapsedDate] = @original_ElapsedDate) OR ([ElapsedDate] IS NULL AND @original_ElapsedDate IS NULL)) AND (([Fine] = @original_Fine) OR ([Fine] IS NULL AND @original_Fine IS NULL)) AND (([CarNo] = @original_CarNo) OR ([CarNo] IS NULL AND @original_CarNo IS NULL))" InsertCommand="INSERT INTO [ReturnTB_ST10091607] ([Inspector], [Driver], [ReturnDate], [ElapsedDate], [Fine], [CarNo]) VALUES (@Inspector, @Driver, @ReturnDate, @ElapsedDate, @Fine, @CarNo)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ReturnTB_ST10091607]" UpdateCommand="UPDATE [ReturnTB_ST10091607] SET [Inspector] = @Inspector, [Driver] = @Driver, [ReturnDate] = @ReturnDate, [ElapsedDate] = @ElapsedDate, [Fine] = @Fine, [CarNo] = @CarNo WHERE [ReturnID] = @original_ReturnID AND (([Inspector] = @original_Inspector) OR ([Inspector] IS NULL AND @original_Inspector IS NULL)) AND (([Driver] = @original_Driver) OR ([Driver] IS NULL AND @original_Driver IS NULL)) AND (([ReturnDate] = @original_ReturnDate) OR ([ReturnDate] IS NULL AND @original_ReturnDate IS NULL)) AND (([ElapsedDate] = @original_ElapsedDate) OR ([ElapsedDate] IS NULL AND @original_ElapsedDate IS NULL)) AND (([Fine] = @original_Fine) OR ([Fine] IS NULL AND @original_Fine IS NULL)) AND (([CarNo] = @original_CarNo) OR ([CarNo] IS NULL AND @original_CarNo IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ReturnID" Type="Int32" />
                <asp:Parameter Name="original_Inspector" Type="String" />
                <asp:Parameter Name="original_Driver" Type="String" />
                <asp:Parameter Name="original_ReturnDate" DbType="Date" />
                <asp:Parameter Name="original_ElapsedDate" Type="Int32" />
                <asp:Parameter Name="original_Fine" Type="Int32" />
                <asp:Parameter Name="original_CarNo" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Inspector" Type="String" />
                <asp:Parameter Name="Driver" Type="String" />
                <asp:Parameter Name="ReturnDate" DbType="Date" />
                <asp:Parameter Name="ElapsedDate" Type="Int32" />
                <asp:Parameter Name="Fine" Type="Int32" />
                <asp:Parameter Name="CarNo" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Inspector" Type="String" />
                <asp:Parameter Name="Driver" Type="String" />
                <asp:Parameter Name="ReturnDate" DbType="Date" />
                <asp:Parameter Name="ElapsedDate" Type="Int32" />
                <asp:Parameter Name="Fine" Type="Int32" />
                <asp:Parameter Name="CarNo" Type="String" />
                <asp:Parameter Name="original_ReturnID" Type="Int32" />
                <asp:Parameter Name="original_Inspector" Type="String" />
                <asp:Parameter Name="original_Driver" Type="String" />
                <asp:Parameter Name="original_ReturnDate" DbType="Date" />
                <asp:Parameter Name="original_ElapsedDate" Type="Int32" />
                <asp:Parameter Name="original_Fine" Type="Int32" />
                <asp:Parameter Name="original_CarNo" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ReturnID" DataSourceID="SqlDataSource1" Height="200px" Width="1300px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ReturnID" HeaderText="ReturnID" InsertVisible="False" ReadOnly="True" SortExpression="ReturnID" />
                <asp:BoundField DataField="Inspector" HeaderText="Inspector" SortExpression="Inspector" />
                <asp:BoundField DataField="Driver" HeaderText="Driver" SortExpression="Driver" />
                <asp:BoundField DataField="ReturnDate" HeaderText="ReturnDate" SortExpression="ReturnDate" />
                <asp:BoundField DataField="ElapsedDate" HeaderText="ElapsedDate" SortExpression="ElapsedDate" />
                <asp:BoundField DataField="Fine" HeaderText="Fine" SortExpression="Fine" />
                <asp:BoundField DataField="CarNo" HeaderText="CarNo" SortExpression="CarNo" />
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
