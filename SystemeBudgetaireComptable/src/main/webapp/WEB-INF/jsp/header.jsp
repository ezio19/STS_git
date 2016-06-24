<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header id="header" class="clearfix" data-current-skin="blue">

    <ul class="header-inner">
        <li id="menu-trigger" data-trigger="#sidebar" class="">
            <div class="line-wrap">
                <div class="line top"></div>
                <div class="line center"></div>
                <div class="line bottom"></div>
            </div>
        </li>

        <li class="logo hidden-xs">
            <a href="" class="m-l-10"><img src="img/DEev17_200_36.png"></a>
        </li>


        <li class="pull-right">
            <ul class="top-menu">

                <!--
                le toggle (activer ou desactiver le navigation drawer(sidebar))
                <li id="toggle-width">
                    <div class="toggle-switch">
                        <input id="tw-switch" type="checkbox" hidden="hidden">
                        <label for="tw-switch" class="ts-helper"></label>
                    </div>
                </li>

                -->
                <!--la meme chose pour les notifications -->
                <li class="dropdown">
                    <a data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="tm-icon zmdi zmdi-notifications"></i>
                    </a>

                    <div class="dropdown-menu dropdown-menu-lg pull-right">
                        <div class="listview" id="notifications">
                            <div class="lv-header">
                                Notification

                                <ul class="actions">
                                    <li class="dropdown">
                                        <a href="#" data-clear="notification">
                                            <i class="zmdi zmdi-check-all"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="lv-body">

                            </div>

                        </div>

                    </div>
                </li>


                <!--de meme pour les taches -->
                <li class="dropdown hidden-xs">
                    <a data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="tm-icon zmdi zmdi-view-list-alt"></i>
                        <!--    <i class="tmn-counts">2</i>-->
                    </a>

                    <div class="dropdown-menu pull-right dropdown-menu-lg">
                        <div class="listview">
                            <div class="lv-header">
                                Taches
                            </div>
                            <div class="lv-body">

                            </div>

                        </div>
                    </div>
                </li>

                <!--et la configuration -->
                <li class="hidden-xs">
                    <a data-action="fullscreen" href="#"><i class="tm-icon zmdi zmdi-fullscreen"></i></a>
                </li>

                <!--
                <li class="dropdown">
                    <a data-toggle="dropdown" href="#" aria-expanded="false"><i class="tm-icon zmdi zmdi-more-vert"></i></a>
                    <ul class="dropdown-menu dm-icon pull-right">
                        <li class="skin-switch hidden-xs">
                            <span class="ss-skin bgm-lightblue" data-skin="lightblue"></span>
                            <span class="ss-skin bgm-bluegray" data-skin="bluegray"></span>
                            <span class="ss-skin bgm-cyan" data-skin="cyan"></span>
                            <span class="ss-skin bgm-teal" data-skin="teal"></span>
                            <span class="ss-skin bgm-orange" data-skin="orange"></span>
                            <span class="ss-skin bgm-blue" data-skin="blue"></span>
                        </li>
                        <li class="divider hidden-xs"></li>

                        <li>
                            <a data-action="clear-localstorage" href="#"><i class="zmdi zmdi-delete"></i> Clear Local
                                Storage</a>
                        </li>
                        <li>
                            <a href="#"><i class="zmdi zmdi-face"></i> Privacy Settings</a>
                        </li>
                        <li>
                            <a href="#"><i class="zmdi zmdi-settings"></i> Other Settings</a>
                        </li>
                    </ul>
                </li>

                -->


            </ul>
        </li>
    </ul>






</header>
