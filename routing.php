<?php

use core\App;
use core\Utils;

App::getRouter()->setDefaultRoute('start'); 
App::getRouter()->setLoginRoute('login');

Utils::addRoute('productList',    'ProductListCtrl');
Utils::addRoute('productListPart','ProductListCtrl');
Utils::addRoute('loginShow',     'LoginCtrl');
Utils::addRoute('login',         'LoginCtrl');
Utils::addRoute('logout',        'LoginCtrl');
Utils::addRoute('start',         'StartCtrl');
Utils::addRoute('productNew',     'ProductEditCtrl',	['admin']); // tylko administrator
Utils::addRoute('productEdit',    'ProductEditCtrl',	['admin']);
Utils::addRoute('productSave',    'ProductEditCtrl',	['admin']);
Utils::addRoute('productDelete',  'ProductEditCtrl',	['admin']);
Utils::addRoute('productCartDelete',  'ProductListCtrl',	['admin' , 'klient']); // administrator i klienci
Utils::addRoute('AddToCart',  'ProductListCtrl',	['admin' , 'klient']);
Utils::addRoute('productCartShow',  'ProductListCtrl',	['admin' , 'klient']);
Utils::addRoute('productCartBuy',  'ProductListCtrl',	['admin' , 'klient']);