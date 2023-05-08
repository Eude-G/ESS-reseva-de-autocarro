<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="PassengerDetailsInfo.aspx.cs" Inherits="BusBookingProject.PassengerDetailsInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 8%">
        <asp:GridView ID="gdPassengerDetails" runat="server" ShowFooter="true" AutoGenerateColumns="false" Width="100%">
            <Columns>
                <asp:BoundField DataField="RowNumber" HeaderText="Número de Telemóvel" />
                <asp:TemplateField HeaderText="Primeiro Nome">
                    <ItemTemplate>
                        <asp:TextBox ID="txtFName" runat="server" CssClass="form-control"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Sobrenome">
                    <ItemTemplate>
                        <asp:TextBox ID="txtLName" runat="server" CssClass="form-control"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Contact">
                    <ItemTemplate>
                        <asp:TextBox ID="txtContact" runat="server" CssClass="form-control"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Cidade">
                    <ItemTemplate>
                        <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <FooterStyle HorizontalAlign="Right" />
                    <FooterTemplate>
                        <asp:Button ID="ButtonAdd" runat="server" Style="color: red" Text="Adicionar novos detalhes do passageiro"
                            OnClick="ButtonAdd_Click" />
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <asp:Button ID="btnConirmBooking" runat="server" CssClass="btn btn-success" Style="width: auto; margin-top: 2%" Text="Confirmar reserva"
            OnClick="btnConirmBooking_Click" ClientIDMode="Static" />

        <div class="row" id="paymentMode" runat="server">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Métodos de pagameto</h3>
                </div>
                <div class="panel-body">
                    <asp:ValidationSummary ID="vsRegister" runat="server" CssClass="alert alert-danger" ShowSummary="true" ValidationGroup="vgRegister" />
                    <div id="divMessage" runat="server" />
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblCardType" runat="server" Text="Select Your Card" Font-Bold="true"></asp:Label>
                            <asp:DropDownList ID="ddlCardType" runat="server" class="form-control input-sm floatlabel">
                                <asp:ListItem Value="0" Text="--Selecionar Cartão--"></asp:ListItem>
                                <asp:ListItem Value="1" Text="Cartão de Crédito"></asp:ListItem>
                                <asp:ListItem Value="2" Text="Cartão de Débito"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlCardType" Display="None" ID="rfvFirstName" ValidationGroup="vgRegister"
                                CssClass="text-danger" ErrorMessage="O tipo de cartão é obrigatório." /><br />
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblBankName" runat="server" Text="Select Bank" Font-Bold="true"></asp:Label>
                            <asp:DropDownList ID="ddlBank" runat="server" class="form-control input-sm floatlabel">
                                <asp:ListItem Value="0" Text="--Selecionar Banco--"></asp:ListItem>
                                <asp:ListItem Value="1" Text="Banco Nacional de Angola"></asp:ListItem>
                                <asp:ListItem Value="2" Text="BAI"></asp:ListItem>
                                <asp:ListItem Value="3" Text="BIC"></asp:ListItem>
                                <asp:ListItem Value="4" Text="BFA"></asp:ListItem>
                                <asp:ListItem Value="5" Text="BPC"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlBank" Display="None" ID="rfVMobileNo" ValidationGroup="vgRegister"
                                CssClass="text-danger" ErrorMessage="O nome do Banco é obrigatório." /><br />
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblLastName" runat="server" Text="3 Digit CVV Code" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtCode" runat="server" class="form-control input-sm floatlabel" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCode" Display="None" ID="rfVLastName" ValidationGroup="vgRegister"
                                CssClass="text-danger" ErrorMessage="CVV COde is required." /><br />
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblPassword" runat="server" Text="Card No" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtCardNo" runat="server" class="form-control input-sm floatlabel" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCardNo" Display="None" ID="rfvPassword" ValidationGroup="vgRegister"
                                CssClass="text-danger" ErrorMessage="Card No  is required." /><br />
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Button ID="btnSave" runat="server" Text="Efectuar pagamento" OnClick="btnSave_Click" class="btn btn-info " ValidationGroup="vgRegister" CausesValidation="True" ViewStateMode="Inherit" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
