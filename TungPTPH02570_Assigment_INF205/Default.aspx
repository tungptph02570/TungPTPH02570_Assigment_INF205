<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TungPTPH02570_Assigment_INF205._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>TùngPTPH02570_Assigment_INF205_GĐ1</h1>
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Quản Lý Bán Hàng</h3>
    <ol class="round">
        <li class="one" style="border:1px solid #ccc;">
            <h5>Khách Hàng<asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MA_KH" DataSourceID="TungPTPH02570_QuanLyBanHang" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="MA_KH" HeaderText="MA_KH" ReadOnly="True" SortExpression="MA_KH" />
                    <asp:BoundField DataField="TEN_KH" HeaderText="TEN_KH" SortExpression="TEN_KH" />
                    <asp:BoundField DataField="DIA_CHI" HeaderText="DIA_CHI" SortExpression="DIA_CHI" />
                    <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="TungPTPH02570_QuanLyBanHang" runat="server" ConnectionString="<%$ ConnectionStrings:TungPTPH02570_QuanLyBanHangConnectionString %>" SelectCommand="SELECT * FROM [KHACH_HANG]"
                    updatecommand ="update KHACH_HANG set TEN_KH =@TEN_KH, DIA_CHI=@DIA_CHI, SDT=@SDT, EMAIL=@EMAIL where MA_KH=@MA_KH "
                    deletecommand ="delete from KHACH_HANG where MA_KH=@MA_KH"
                    insertcommand ="insert into KHACH_HANG values (@MA_KH, @TEN_KH, @DIA_CHI, @SDT, @EMAIL)"
                    ></asp:SqlDataSource>
            </h5>
            
        </li>
        <li class="two" style="border:1px solid #ccc;">
            <h5>Sản Phẩm<asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MA_SP" DataSourceID="TungPTPH02570_QuanLyBanHang2" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="MA_SP" HeaderText="MA_SP" ReadOnly="True" SortExpression="MA_SP" />
                    <asp:BoundField DataField="MA_LOAI_SP" HeaderText="MA_LOAI_SP" SortExpression="MA_LOAI_SP" />
                    <asp:BoundField DataField="TEN_SP" HeaderText="TEN_SP" SortExpression="TEN_SP" />
                    <asp:BoundField DataField="DON_GIA" HeaderText="DON_GIA" SortExpression="DON_GIA" />
                    <asp:BoundField DataField="MO_TA" HeaderText="MO_TA" SortExpression="MO_TA" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="TungPTPH02570_QuanLyBanHang2" runat="server" ConnectionString="Data Source=.;Initial Catalog=TungPTPH02570_QuanLyBanHang;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [SAN_PHAM]"
                    updatecommand ="update SAN_PHAM set MA_LOAI_SP =@MA_LOAI_SP, TEN_SP =@TEN_SP, DON_GIA =@DON_GIA, MO_TA =@MO_TA where MA_SP=@MA_SP"
                    deletecommand ="delete from SAN_PHAM where MA_SP =@MA_SP"
                    insertcommand ="insert into SAN_PHAM values (@MA_SP, @MA_LOAI_SP, @TEN_SP, @DON_GIA, @MO_TA)"
                    ></asp:SqlDataSource>
            </h5>
        </li>
        <li class="three" style="border:1px solid #ccc;">
            <h5>Loại Sản Phẩm<asp:DetailsView ID="DetailsView3" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MA_LOAI_SP" DataSourceID="TungPTPH02570_QuanLyBanHang3" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="MA_LOAI_SP" HeaderText="MA_LOAI_SP" ReadOnly="True" SortExpression="MA_LOAI_SP" />
                    <asp:BoundField DataField="TEN_LOAI" HeaderText="TEN_LOAI" SortExpression="TEN_LOAI" />
                    <asp:BoundField DataField="SAN_PHAM_MA_SP" HeaderText="SAN_PHAM_MA_SP" SortExpression="SAN_PHAM_MA_SP" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="TungPTPH02570_QuanLyBanHang3" runat="server" ConnectionString="Data Source=.;Initial Catalog=TungPTPH02570_QuanLyBanHang;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [LOAI_SP]"
                    updatecommand ="update LOAI_SP set TEN_LOAI =@TEN_LOAI, SAN_PHAM_MA_SP =@SAN_PHAM_MA_SP where MA_LOAI_SP=@MA_LOAI_SP"
                    deletecommand ="delete from LOAI_SP where MA_LOAI_SP =@MA_LOAI_SP"
                    insertcommand ="insert into LOAI_SP values (@MA_LOAI_SP, @TEN_LOAI, @SAN_PHAM_MA_SP)"
                    ></asp:SqlDataSource>
            </h5>
        </li>
        <li class="four" style="border:1px solid #ccc;">
            <h5>Hóa Đơn<asp:DetailsView ID="DetailsView4" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MA_HD" DataSourceID="TungPTPH02570_QuanLyBanHang4" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="MA_HD" HeaderText="MA_HD" ReadOnly="True" SortExpression="MA_HD" />
                    <asp:BoundField DataField="SO_HD" HeaderText="SO_HD" SortExpression="SO_HD" />
                    <asp:BoundField DataField="MA_KH" HeaderText="MA_KH" SortExpression="MA_KH" />
                    <asp:BoundField DataField="NGAY_LAP_HD" HeaderText="NGAY_LAP_HD" SortExpression="NGAY_LAP_HD" />
                    <asp:BoundField DataField="KHACH_HANG_MA_KH" HeaderText="KHACH_HANG_MA_KH" SortExpression="KHACH_HANG_MA_KH" />
                    <asp:BoundField DataField="KHACH_HANG_TEN_KH" HeaderText="KHACH_HANG_TEN_KH" SortExpression="KHACH_HANG_TEN_KH" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="TungPTPH02570_QuanLyBanHang4" runat="server" ConnectionString="Data Source=.;Initial Catalog=TungPTPH02570_QuanLyBanHang;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [HOA_DON]"
                    updatecommand =" update HOA_DON set SO_HD =@SO_HD, MA_KH =@MA_KH, NGAY_LAP_HD =@NGAY_LAP_HD, KHACH_HANG_MA_KH =@KHACH_HANG_MA_KH, KHACH_HANG_TEN_KH =@KHACH_HANG_TEN_KH WHERE MA_HD =@MA_HD"
                    deletecommand =" delete from HOA_DON where MA_HD =@MA_HD"
                    insertcommand =" insert into HOA_DON values (@MA_HD, @SO_HD, @MA_KH, @NGAY_LAP_HD, @KHACH_HANG_MA_KH, @KHACH_HANG_TEN_KH)"
                    ></asp:SqlDataSource>
            </h5>
        </li>
        <li class="five" style="border:1px solid #ccc;">
            <h5>Hóa Đơn Chi Tiết<asp:DetailsView ID="DetailsView5" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MA_CTHD" DataSourceID="TungPTPH02570_QuanLyBanHang5" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="MA_CTHD" HeaderText="MA_CTHD" ReadOnly="True" SortExpression="MA_CTHD" />
                    <asp:BoundField DataField="MA_LOAI" HeaderText="MA_LOAI" SortExpression="MA_LOAI" />
                    <asp:BoundField DataField="HOA_DON_MA_HD" HeaderText="HOA_DON_MA_HD" SortExpression="HOA_DON_MA_HD" />
                    <asp:BoundField DataField="HOA_DON_MA_KH" HeaderText="HOA_DON_MA_KH" SortExpression="HOA_DON_MA_KH" />
                    <asp:BoundField DataField="SAN_PHAM_MA_SP" HeaderText="SAN_PHAM_MA_SP" SortExpression="SAN_PHAM_MA_SP" />
                    <asp:BoundField DataField="HOA_DON_2_MA_HD" HeaderText="HOA_DON_2_MA_HD" SortExpression="HOA_DON_2_MA_HD" />
                    <asp:BoundField DataField="LOAI_SP_MA_LOAI_SP" HeaderText="LOAI_SP_MA_LOAI_SP" SortExpression="LOAI_SP_MA_LOAI_SP" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="TungPTPH02570_QuanLyBanHang5" runat="server" ConnectionString="Data Source=.;Initial Catalog=TungPTPH02570_QuanLyBanHang;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [HOA_DON_CT]"
                    updatecommand =" update HOA_DON_CT set MA_LOAI = @MA_LOAI, HOA_DON_MA_HD =@HOA_DON_MA_HD, HOA_DON_MA_SP =@HOA_DON_MA_SP, SAN_PHAM_MA_SP =@SAN_PHAM_MA_SP, HOA_DON_2_MA_HD =@HOA_DON_2_MA_HD, LOAI_SP_MA_LOAI_SP = @LOAI_SP_MA_LOAI_SP where MA_CTHD =@MA_CTHD"
                    deletecommand =" delete from HOA_DON_CT where MA_CTHD= @MA_CTHD"
                    insertcommand =" insert into HOA_DON_CT values (@MA_CTHD, @MA_LOAI, @HOA_DON_MA_HD,@HOA_DON_MA_KH, @SAN_PHAM_MA_SP, @HOA_DON_2_MA_HD, @LOAI_SP_MA_LOAI_SP)"
                    ></asp:SqlDataSource>
            </h5>
            &nbsp;</li>
        <%--  --%>
    </ol>
</asp:Content>
