<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="CRUD_Forms.Cadastro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <section id="main-content">
        <section class="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <h1>Registro de pessoas</h1>
                            </div>

                        </header>

                        <div class="panel-body">
                            <div class="row">
                                <div class="row"></div>
                                <div class="form-group">&nbsp;</div>
                                <div class="colmd-4 col-md-offset-1">
                                    <div class="form-group">

                                        <asp:Label Text="Nome" runat="server" />                                          
                                        <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="NOME" />
                                    </div>
                                </div>
                                
                                <div class="colmd-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Cidade" runat="server" />
                                        <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Cidade" />

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colmd-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Email" runat="server" />
                                        <asp:TextBox runat="server" Enabled="true" TextMode="Email" CssClass="form-control input-sm" placeholder="Email" />

                                    </div>
                                </div>
                                <div class="colmd-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Cep" runat="server" />
                                        <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="CEP" />

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colmd-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Endereco" runat="server">
                                           <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Endereço" />
                                        </asp:Label>
                                    </div>
                                </div>
                                <div class="colmd-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Pais" runat="server" />
                                        <asp:DropDownList runat="server" CssClass="form-control input-group-sm">
                                            <asp:ListItem Text="Austrália" />
                                            <asp:ListItem Text="Austrália" />
                                            <asp:ListItem Text="Alemanha" />
                                            <asp:ListItem Text="Arábia Saudita" />
                                            <asp:ListItem Text="África do Sul" />
                                            <asp:ListItem Text="Brasil" />
                                            <asp:ListItem Text="Canadá" />
                                            <asp:ListItem Text="China" />
                                            <asp:ListItem Text="França" />
                                            <asp:ListItem Text="Índia" />
                                            <asp:ListItem Text="Indonésia" />
                                            <asp:ListItem Text="Itália" />
                                            <asp:ListItem Text="Japão" />
                                            <asp:ListItem Text="Coreia do Sul" />
                                            <asp:ListItem Text="México" />
                                            <asp:ListItem Text="Rússia" />
                                            <asp:ListItem Text="Turquia" />
                                            <asp:ListItem Text="Reino Unido" />
                                            <asp:ListItem Text="Estados Unidos" />
                                        </asp:DropDownList>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colmd-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Usuario" runat="server" />
                                        <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Usuário" />

                                    </div>
                                </div>
                                <div class="colmd-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Telefone" runat="server" />
                                        <asp:TextBox runat="server" Enabled="true" TextMode="Phone" CssClass="form-control input-sm" placeholder="Telefone" />

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colmd-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="DataNascimento" runat="server">
                                           <asp:TextBox runat="server" Enabled="true" TextMode="Date" CssClass="form-control input-sm" placeholder="Data de Nascimento" />
                                        </asp:Label>
                                    </div>
                                </div>
                                <div class="colmd-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Cargo_Id" runat="server">
                                           <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Id de Cargo" />
                                        </asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <div class="form-group">
                                        <asp:Button Text="Salvar" ID="btnsave" CssClass="btn btn-primary" Width="200px" runat="server" />
                                        <asp:Button Text="Atualizar" ID="Button1" CssClass="btn btn-primary" Width="200px" runat="server" />
                                        <asp:Button Text="Deletar" ID="Button2" CssClass="btn btn-danger" Width="200px" runat="server" />
                                        <asp:Label Text="   " ForeColor="Green" ID="lblmessage" CssClass="label label-success" runat="server" />
                                        <br />
                                        <br />
                                    </div>
                                </div>

                                <br />
                                <br />
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowSorting="True" AutoGenerateDeleteButton="True" CellPadding="4" EnableSortingAndPagingCallbacks="True" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                                        <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                                        <asp:BoundField DataField="Cidade " HeaderText="Cidade " SortExpression="Cidade " />
                                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                        <asp:BoundField DataField="Cep " HeaderText="Cep " SortExpression="Cep " />
                                        <asp:BoundField DataField="Endereco" HeaderText="Endereco" SortExpression="Endereco" />
                                        <asp:BoundField DataField="Pais " HeaderText="Pais " SortExpression="Pais " />
                                        <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                                        <asp:BoundField DataField="Telefone" HeaderText="Telefone" SortExpression="Telefone" />
                                        <asp:BoundField DataField="Data_Nascimento" HeaderText="Data_Nascimento" SortExpression="Data_Nascimento" />
                                        <asp:CommandField ShowEditButton="True" />
                                    </Columns>
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FORMSConnectionString %>" DeleteCommand="DELETE FROM [Pessoas] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Pessoas] ([Id], [Nome], [Cidade ], [Email], [Cep ], [Endereco], [Pais ], [Usuario], [Telefone], [Data_Nascimento]) VALUES (@Id, @Nome, @Cidade_, @Email, @Cep_, @Endereco, @Pais_, @Usuario, @Telefone, @Data_Nascimento)" SelectCommand="SELECT * FROM [Pessoas]" UpdateCommand="UPDATE [Pessoas] SET [Nome] = @Nome, [Cidade ] = @Cidade_, [Email] = @Email, [Cep ] = @Cep_, [Endereco] = @Endereco, [Pais ] = @Pais_, [Usuario] = @Usuario, [Telefone] = @Telefone, [Data_Nascimento] = @Data_Nascimento WHERE [Id] = @Id">
                                    <DeleteParameters>
                                        <asp:Parameter Name="Id" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="Id" Type="Int32" />
                                        <asp:Parameter Name="Nome" Type="String" />
                                        <asp:Parameter Name="Cidade_" Type="String" />
                                        <asp:Parameter Name="Email" Type="String" />
                                        <asp:Parameter Name="Cep_" Type="String" />
                                        <asp:Parameter Name="Endereco" Type="String" />
                                        <asp:Parameter Name="Pais_" Type="String" />
                                        <asp:Parameter Name="Usuario" Type="String" />
                                        <asp:Parameter Name="Telefone" Type="String" />
                                        <asp:Parameter DbType="Date" Name="Data_Nascimento" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="Nome" Type="String" />
                                        <asp:Parameter Name="Cidade_" Type="String" />
                                        <asp:Parameter Name="Email" Type="String" />
                                        <asp:Parameter Name="Cep_" Type="String" />
                                        <asp:Parameter Name="Endereco" Type="String" />
                                        <asp:Parameter Name="Pais_" Type="String" />
                                        <asp:Parameter Name="Usuario" Type="String" />
                                        <asp:Parameter Name="Telefone" Type="String" />
                                        <asp:Parameter DbType="Date" Name="Data_Nascimento" />
                                        <asp:Parameter Name="Id" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </div>


                            <%--   <div class="row">
                            <div class="col-md-10 col-md-offset-1">
                                <div class="form-group">
                                    <div class="table-responsive">
                                        <asp:GridView ID="gv" Width="100%" AutoGenerateSelectButton="true" SelectedRowStyle-BackColor="Green" OnSelectedIndexChanged="gv_SelectedIndexChanged" runat="server"></asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>--%>
                    </section>
                </div>
            </div>
        </section>
    </section>


</asp:Content>

