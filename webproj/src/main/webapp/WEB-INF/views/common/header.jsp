<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<style>
#primary-menu > ul > li:first-child {
    margin-left: 40px;
}
@media ( max-width : 991.98px) {
	#primary-menu ul li img {
		display: none;
	}
}

@media ( max-width : 1250px) {
	#primary-menu>ul>li:first-child {
		margin-left: 100px;
	}
}

@media ( max-width : 1199px) {
	#primary-menu>ul>li:first-child {
		margin-left: 0px;
	}
	#primary-menu ul li>a {
		padding: 39px 47px;
	}
}

@media ( min-width : 991.98px) {
	#logo {
		display: none;
	}
}

@media ( max-width : 991.98px) {
	#primary-menu-trigger {
		left: 95%;
	}
}

@media ( max-width : 575.98px) {
	#primary-menu-trigger {
		left: 80%;
	}
}
</style>
<header>
    <div id="top_line">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-6"><i class="icon-phone"></i><strong></strong></div>

                <div class="col-md-6 col-sm-6 col-xs-6">
                    <ul id="top_links">
                        <li>
                            <div class="dropdown dropdown-access">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="access_link">Login</a>
                                <div class="dropdown-menu">


                                    <div class="form-group">
                                        <input type="text" class="form-control" id="inputUsernameEmail" placeholder="ID">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                                    </div>
                                    <a id="forgot_pw" href="#">Forgot password?</a>
                                    <input type="submit" name="Sign_in" value="Sign in" id="Sign_in" class="button_drop">
                                    <input type="submit" name="Sign_up" value="Sign up" id="Sign_up" class="button_drop outline">
                                </div>
                            </div><!-- End Dropdown access -->
                        </li>
                        <li><a href="wishlist.html" id="wishlist_link">���ã��</a></li>
                    </ul>
                </div>
            </div><!-- End row -->
        </div><!-- End container-->
    </div><!-- End top line-->

    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-3 col-xs-3">


                    <h1><a href="index.html"></a></h1> <!--����Ʈ �ΰ�-->

            </div>
            <nav class="col-md-9 col-sm-9 col-xs-9">
                <a class="cmn-toggle-switch cmn-toggle-switch__htx open_close" href="javascript:void(0);"><span>Menu mobile</span></a>
                <div class="main-menu">
                    <div id="header_menu">
                        <img src="img/logo_sticky.png" width="160" height="34" alt="City tours" data-retina="true">
                    </div>
                    <a href="#" class="open_close" id="close_in"><i class="icon_set_1_icon-77"></i></a>
                    <ul>
                        <li><a href="index.html">Ȩ</a></li>
                        <li class="submenu">

                            <a href="javascript:void(0);" class="show-submenu">���� <i class="icon-down-open-mini"></i></a>
                            <ul>

                                <li><a href="javascript:void(0);">����</a>
                                    <ul>
                                        <li><a href="showall.html">���� ��ü</a></li>
                                        <li><a href="showall.html">����/����</a></li>
                                        <li><a href="showall.html">����/����</a></li>
                                        <li><a href="showall.html">����/��õ</a></li>
                                        <li><a href="showall.html">����/������</a></li>
                                        <li><a href="showall.html">��õ/����/����</a></li>
                                        <li><a href="showall.html">���빮/����</a></li>
                                        <li><a href="showall.html">�߶�/����</a></li>
                                        <li><a href="showall.html">����/���/����/����</a></li>
                                        <li><a href="showall.html">����/�߱�/���</a></li>
                                        <li><a href="showall.html">����/���빮/����</a></li>
                                    </ul>
                                </li>
                                <li><a href="javascript:void(0);">���</a>
                                    <ul>
                                        <li><a href="showall.html">��� ��ü</a></li>
                                        <li><a href="showall.html">����/����</a></li>
                                        <li><a href="showall.html">������/����/�ϳ�</a></li>
                                        <li><a href="showall.html">����/����</a></li>
                                        <li><a href="showall.html">����/����</a></li>
                                        <li><a href="showall.html">��õ/����</a></li>
                                        <li><a href="showall.html">��õ/����</a></li>
                                        <li><a href="showall.html">������/����/����õ</a></li>
                                        <li><a href="showall.html">��õ/��û</a></li>
                                        <li><a href="showall.html">����/���/����</a></li>
                                        <li><a href="showall.html">�Ⱦ�/����/�ǿ�/��õ</a></li>
                                        <li><a href="showall.html">����/�Ȼ�</a></li>
                                        <li><a href="showall.html">ȭ��/����</a></li>
                                        <li><a href="showall.html">����/�ȼ�</a></li>
                                    </ul>
                                </li>
                                <li><a href="javascript:void(0);">��õ</a>
                                    <ul>
                                        <li><a href="showall.html">��õ ��ü</a></li>
                                        <li><a href="showall.html">����/����/��籸/����</a></li>
                                        <li><a href="showall.html">����/������/������</a></li>
                                        <li><a href="showall.html">��ȭ/�߱�/����</a></li>
                                    </ul>
                                </li>
                                <li><a href="javascript:void(0);">����</a>
                                    <ul>
                                        <li><a href="showall.html">���� ��ü</a></li>
                                        <li><a href="showall.html">��õ/ȫõ</a></li>
                                        <li><a href="showall.html">����/����/��ô/�¹�</a></li>
                                        <li><a href="showall.html">��â/����/����</a></li>
                                        <li><a href="showall.html">���/����</a></li>
                                        <li><a href="showall.html">����/�籸/��</a></li>
                                        <li><a href="showall.html">ö��/ȭõ</a></li>
                                        <li><a href="showall.html">����/Ⱦ��</a></li>
                                    </ul>
                                </li>
                                <li><a href="javascript:void(0);">���/����</a>
                                    <ul>
                                        <li><a href="showall.html">���/���� ��ü</a></li>
                                        <li><a href="showall.html">����-������/�߱�/����</a></li>
                                        <li><a href="showall.html">����-����/�����</a></li>
                                        <li><a href="showall.html">�汸/��õ/�ܾ�</a></li>
                                        <li><a href="showall.html">����/��õ</a></li>
                                        <li><a href="showall.html">����/����</a></li>
                                        <li><a href="showall.html">õ��/����/��õ/����</a></li>
                                    </ul>
                                </li>
                                <li><a href="javascript:void(0);">�泲/����</a>
                                    <ul>
                                        <li><a href="showall.html">�泲/���� ��ü</a></li>
                                        <li><a href="showall.html">�¾�/����</a></li>
                                        <li><a href="showall.html">����/�ƻ�/����</a></li>
                                        <li><a href="showall.html">����/ȫ��/û��</a></li>
                                        <li><a href="showall.html">�ο�/��õ</a></li>
                                        <li><a href="showall.html">���/���/����/�ݻ�</a></li>
                                        <li><a href="showall.html">õ��/����</a></li>
                                    </ul>
                                </li>
                                <li><a href="javascript:void(0);">�λ�</a>
                                    <ul>
                                        <li><a href="showall.html">�λ� ��ü</a></li>
                                        <li><a href="showall.html">�ؿ��/����/����</a></li>
                                        <li><a href="showall.html">����/����/�ϱ�/����</a></li>
                                        <li><a href="showall.html">�λ���/����/����</a></li>
                                        <li><a href="showall.html">����/����/���</a></li>
                                        <li><a href="showall.html">����/����/�߱�</a></li>
                                    </ul>
                                </li>
                                <li><a href="javascript:void(0);">���/�뱸</a>
                                    <ul>
                                        <li><a href="showall.html">���/�뱸 ��ü</a></li>
                                        <li><a href="showall.html">�뱸-�ϱ�/����/����</a></li>
                                        <li><a href="showall.html">�뱸-������/�߱�/����</a></li>
                                        <li><a href="showall.html">�뱸-�޼���/�޼���</a></li>
                                        <li><a href="showall.html">����/����</a></li>
                                        <li><a href="showall.html">����/�︪/��ȭ</a></li>
                                        <li><a href="showall.html">����/����</a></li>
                                        <li><a href="showall.html">�ȵ�/�Ǽ�/����/��õ</a></li>
                                        <li><a href="showall.html">����/��õ</a></li>
                                        <li><a href="showall.html">��õ/���/û��</a></li>
                                        <li><a href="showall.html">����/����/û��</a></li>
                                        <li><a href="showall.html">����/ĥ��/����/���</a></li>
                                    </ul>
                                </li>
                                <li><a href="javascript:void(0);">�泲/���</a>
                                    <ul>
                                        <li><a href="showall.html">�泲/��� ��ü</a></li>
                                        <li><a href="showall.html">�뿵/����</a></li>
                                        <li><a href="showall.html">����/��õ</a></li>
                                        <li><a href="showall.html">��â/�Ծ�/��õ</a></li>
                                        <li><a href="showall.html">â��</a></li>
                                        <li><a href="showall.html">����/���/�о�</a></li>
                                        <li><a href="showall.html">����/��</a></li>
                                        <li><a href="showall.html">��õ/�ϵ�</a></li>
                                        <li><a href="showall.html">â��/�Ƿ�/�Ծ�</a></li>
                                        <li><a href="showall.html">���</a></li>
                                    </ul>
                                </li>
                                <li><a href="javascript:void(0);">����</a>
                                    <ul>
                                        <li><a href="showall.html">���� ��ü</a></li>
                                        <li><a href="showall.html">�ξ�/����</a></li>
                                        <li><a href="showall.html">����/��â</a></li>
                                        <li><a href="showall.html">�ӽ�/���</a></li>
                                        <li><a href="showall.html">����/����</a></li>
                                        <li><a href="showall.html">����/�ͻ�</a></li>
                                        <li><a href="showall.html">����/����</a></li>
                                    </ul>
                                </li>
                                <li><a href="javascript:void(0);">����/����</a>
                                    <ul>
                                        <li><a href="showall.html">����/���� ��ü</a></li>
                                        <li><a href="showall.html">����</a></li>
                                        <li><a href="showall.html">����/��õ/����</a></li>
                                        <li><a href="showall.html">����/�ž�/����</a></li>
                                        <li><a href="showall.html">�س�/����/�ϵ�</a></li>
                                        <li><a href="showall.html">����/����</a></li>
                                        <li><a href="showall.html">����/����/�强</a></li>
                                        <li><a href="showall.html">���/�/����</a></li>
                                        <li><a href="showall.html">����/ȭ��</a></li>
                                        <li><a href="showall.html">����/����/����</a></li>
                                    </ul>
                                </li>
                                <li><a href="javascript:void(0);">����</a>
                                    <ul>
                                        <li><a href="showall.html">���� ��ü</a></li>
                                        <li><a href="showall.html">��������</a></li>
                                        <li><a href="showall.html">���ֽ�</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="submenu">
                            <a href="javascript:void(0);" class="show-submenu">�¸� <i class="icon-down-open-mini"></i></a>
                            <ul>
                                <li><a href="showall.html">����</a></li>
                                <li><a href="showall.html">�԰Ÿ�</a></li>
                                <li><a href="showall.html">������</a></li>
                                <li><a href="showall.html">����</a></li>
                            </ul>
                        </li>
                        <li class="submenu">
                            <a href="javascript:void(0);" class="show-submenu">�ο� <i class="icon-down-open-mini"></i></a><ul>
                            <li><a href="showall.html">ȥ��</a></li>
                            <li><a href="showall.html">Ŀ��</a></li>
                            <li><a href="showall.html">4�� ����</a></li>
                            <li><a href="showall.html">5�� �̻�</a></li>
                        </ul>
                        </li>

                        <li class="submenu">
                            <a href="javascript:void(0);" class="show-submenu">�Խ��� <i class="icon-down-open-mini"></i></a><ul>
                            <li><a href="showall.html">����� �Խ���</a></li>
                            <li><a href="showall.html">������ �Խ���</a></li>
                        </ul>
                        </li>


                        </li>
                    </ul>
                </div><!-- End main-menu -->
            </nav>
        </div><!-- End dropdown-cart-->
        </li>
        </ul>
        </nav>
    </div>
    </div><!-- container -->
</header><!-- End Header -->