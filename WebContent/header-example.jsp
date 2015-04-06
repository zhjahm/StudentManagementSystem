<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/core.css">

<title>Insert title here</title>
</head>
<body>
        <div id="header">
            <a class="header-logo js-home-via-logo" href="/" title="返回主页">
                <span class="header-logo-loading"></span>
                <span class="header-logo-default"></span>
            </a><div class="header-boards-button">
                <a class="header-btn header-boards js-boards-menu" title="访问班级列表" href="#">
                    <span class="header-btn-icon icon-lg icon-board light"></span>
                    <span class="header-btn-text">班级列表</span>
                </a>
            </div><div>
                <a href="/search" class="header-btn open-search-btn js-open-search-page" title="查找班级、事件、用户">
                    <span class="header-btn-icon icon-lg icon-search light"></span>
                </a>

                <div class="header-search">

                    <input class="header-search-input js-search-input js-disable-on-dialog" type="text" value="">

                    <span class="header-search-icon icon-lg icon-search light js-search-icon js-search-focus"></span>

                    <span class="header-search-icon header-search-icon-close icon-lg icon-close light hide js-close-icon js-search-close"></span>

                    <a href="#" class="header-search-icon header-search-icon-open icon-lg     icon-external-link light hide js-open-button js-open-search-page"></a>

                </div>
            </div><div>
                <a class="header-btn header-woof woof-hide" href="#">
                    <span class="taco-talk-small-icon"></span>
                    <span class="header-btn-text"><span class="left-arrow"></span><span class="js-phrase">New stuff!</span></span>
                </a>
            </div><div class="header-user">
                <a class="header-btn js-open-add-menu" href="#" title="新建班级或事务">
                    <span class="header-btn-icon icon-lg icon-add light"></span>
                </a>

                <a class="header-btn header-member js-open-header-member-menu" href="#" title="Get access to your profile, help, and log out.">
                    <span class="member">
                        <img class="member-avatar" height="30" width="30" src="https://trello-avatars.s3.amazonaws.com/d356d5d8013c24c1ee515b59082d13f6/30.png" alt="shenjunzheng (shenjunzheng)" title="shenjunzheng (shenjunzheng)">






                        <span class="member-gold-badge" title="This member has Trello Gold."></span>
                    </span>
                    <span class="header-btn-text js-member-name">shenjunzheng</span>
                </a>

                <a class="header-btn header-notifications js-open-header-notifications-menu" href="#" title="0 Notifications. Click to view notifications.">
                    <span class="header-btn-icon icon-lg icon-notification light"></span>
                </a>



            </div>
        </div>
</body>
</html>